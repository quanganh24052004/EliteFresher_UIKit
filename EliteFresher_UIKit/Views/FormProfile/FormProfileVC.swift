//
//  FormProfileVC.swift
//  EliteFresher_UIKit
//
//  Created by iKame Elite Fresher 2025 on 6/26/25.
//

import UIKit

class FormProfileVC: UIViewController {

    @IBOutlet weak var firstName: FormCV!
    
    @IBOutlet weak var lastName: FormCV!
    
    @IBOutlet weak var gender: UISegmentedControl!
    
    @IBOutlet weak var weight: FormCV!
    
    @IBOutlet weak var height: FormCV!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Nền
        view.backgroundColor = .backGround
        
        // title
        let titleFormProfileVC = UILabel()
        titleFormProfileVC.text = "Tiểu sử"
        titleFormProfileVC.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        titleFormProfileVC.textColor = .title
        navigationItem.titleView = titleFormProfileVC
        
        // Nút bên trái (custom Back)
        let backButton = UIBarButtonItem(
            image: UIImage(systemName: "chevron.left"),
            style: .plain,
            target: self,
            action: #selector(backButton)
        )
        backButton.tintColor = .text
        navigationItem.leftBarButtonItem = backButton
        
        // Field Form
        firstName.title.text = "Họ"
        firstName.formField.placeholder = "Nhập họ"
        lastName.title.text = "Tên"
        lastName.formField.placeholder = "Nhập tên"
        weight.title.text = "Cân nặng"
        weight.formField.placeholder = "Nhập cân nặng"
        height.title.text = "Chiều cao"
        height.formField.placeholder = "Nhập chiều cao"
    }
    
    
    @IBAction func saveButton(_ sender: Any) {
        //let listView = ListViewVC()
        let firstNameText = firstName.text.trimmingCharacters(in: .whitespaces)
        let lastNameText = lastName.text.trimmingCharacters(in: .whitespaces)
        let weightText = weight.text.trimmingCharacters(in: .whitespaces)
        let heightText = height.text.trimmingCharacters(in: .whitespaces)

        guard !firstNameText.isEmpty,
              !lastNameText.isEmpty,
              let weightValue = Double(weightText),
              let heightValue = Double(heightText) else {
            showAlert(message: "Vui lòng nhập đầy đủ và đúng thông tin")
            return
        }

        let selectedGender = Gender.from(index: gender.selectedSegmentIndex)

        let user = User(
            firstName: firstNameText,
            lastName: lastNameText,
            gender: selectedGender,
            weight: weightValue,
            height: heightValue
        )

        if let data = try? JSONEncoder().encode(user) {
            UserDefaults.standard.set(data, forKey: "savedUser")
            print("✅ Đã lưu thông tin user: \(user)")
        }

        let userListVC = UserListVC()
        self.navigationController?.pushViewController(userListVC, animated: true)
    }
    
//    @objc func saveTapped() {
//        print("Đã nhấn nút Lưu")
//    }

    @objc func backButton() {
        navigationController?.popViewController(animated: true)
    }

    func showAlert(message: String) {
        let alert = UIAlertController(title: "Thông báo", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
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
