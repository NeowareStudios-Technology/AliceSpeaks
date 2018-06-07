//
//  MenuViewController.swift

//
//  Created by Alfonso Morales on 6/4/18.
//  Copyright © 2018 AcroMace. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {


    @IBAction func bluesitelink(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.bluebeepals.com")! as URL, options: [:], completionHandler: nil)
    }
    
    
    
    @IBAction func amazonlink(_ sender: Any) {
        UIApplication.shared.open(URL(string: "https://www.amazon.com/Bluebee-Pal-Pro-Lion-Educational/dp/B01EJXZK76")! as URL, options: [:], completionHandler: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
