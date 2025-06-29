//
//  ListView.swift
//  EliteFresher_UIKit
//
//  Created by Nguyễn Quang Anh on 29/6/25.
//

import UIKit

class ListViewVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // Nền
        view.backgroundColor = .backGround
        
        // Tiêu đề
        let titleListViewVC = UILabel()
        titleListViewVC.text = "Danh sách"
        titleListViewVC.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        titleListViewVC.textColor = .title
        navigationItem.titleView = titleListViewVC
        
        // LeftButton
        let backButton = UIBarButtonItem(
            image: UIImage(systemName: "chevron.left"),
            style: .plain,
            target: self,
            action: #selector(backButton)
        )
        backButton.tintColor = .text
        navigationItem.leftBarButtonItem = backButton
        
        // Right Button
        let addButton = UIBarButtonItem(
            image: UIImage(systemName: "plus.circle.fill"),
            style: .plain,
            target: self,
            action: #selector(addProfile)
            )
        addButton.tintColor = .button
        navigationItem.rightBarButtonItem = addButton
//        navigationItem.rightBarButtonItem = UIBarButtonItem(
//                    title: "Lưu",
//                    style: .plain,
//                    target: self,
//                    action: #selector(addProfile)
//                )

        
    }
    
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @objc func backButton() {
        navigationController?.popViewController(animated: true)
    }
    
    @objc func addProfile() {
        navigationController?.pushViewController(FormProfileVC(), animated: true)
    }
}
