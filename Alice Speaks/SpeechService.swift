
import Foundation
import AVKit

class SpeechService {

    let synthesizer = AVSpeechSynthesizer()

    func say(_ text: String, in language: Language = .english, withSpeed rate: Float = 0.5) {
        let utterance = AVSpeechUtterance(string: text)

        utterance.voice = AVSpeechSynthesisVoice(language: language.speechString())
        utterance.rate = rate
        utterance.pitchMultiplier = 1

        synthesizer.speak(utterance)
    }

}
