//
//  Profile.swift
//  EliteFresher_UIKit
//
//  Created by Nguyễn Quang Anh on 29/6/25.
//

import UIKit

class ProfileVC: UIViewController {

    @IBOutlet weak var userProfile: UserCV!
    
    @IBOutlet weak var indexUserView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Nền
        view.backgroundColor = .backGround
        
        // Title
        let titleProfileVC = UILabel()
        titleProfileVC.text = "Tiểu sử của bạn"
        titleProfileVC.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        titleProfileVC.textColor = .title
        navigationItem.titleView = titleProfileVC
        
        userProfile.userFullName.text = "Nguyễn Quang Anh"

        // Bo cong
        indexUserView.layer.cornerRadius = 16
        indexUserView.clipsToBounds = true
        // Do any additional setup after loading the view.
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
