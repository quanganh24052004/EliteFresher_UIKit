//
//  IntroVC.swift
//  EliteFresher_UIKit
//
//  Created by iKame Elite Fresher 2025 on 6/26/25.
//

import UIKit

class IntroVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func firstAdd(_ sender: Any) {
        let formVC = FormProfileVC()
        self.navigationController?.pushViewController(formVC, animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
