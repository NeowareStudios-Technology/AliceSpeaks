
import Foundation
import Vision

class VisionService {

    func detectObject(image: CIImage, callback: @escaping (String) -> Void) {
        guard let model = try? VNCoreMLModel(for: Inceptionv3().model) else {
            print("Could not load the Inceptionv3 model")
            return
        }
        let request = VNCoreMLRequest(model: model) { request, error in
            guard let results = request.results as? [VNClassificationObservation],
                let topResult = results.first,
                let firstWord = topResult.identifier.components(separatedBy: ",").first else {
                    fatalError("Unexpected result type from VNCoreMLRequest")
            }
            if error != nil {
                print(error.debugDescription)
            }
            DispatchQueue.main.async {
                callback(firstWord)
            }
        }
        let handler = VNImageRequestHandler(ciImage: image)
        DispatchQueue.global(qos: .userInteractive).async {
            do {
                try handler.perform([request])
            } catch {
                print(error)
            }
        }
    }

}
