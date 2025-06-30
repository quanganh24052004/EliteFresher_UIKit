import UIKit

class UserListVC: UITableViewController {
    
    var users: [User] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Danh sách tiểu sử"
        view.backgroundColor = .backGround
        
        // Đăng ký XIB custom cell
        let nib = UINib(nibName: "UserCellVC", bundle: .main)
        tableView.register(nib, forCellReuseIdentifier: "UserCellVC")
        tableView.rowHeight = 80
        
        loadData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        loadData()
    }

    func loadData() {
        if let data = UserDefaults.standard.data(forKey: "userList"),
           let decoded = try? JSONDecoder().decode([User].self, from: data) {
            self.users = decoded
            tableView.reloadData()
        } else {
            self.users = []
        }
    }

    // MARK: - TableView Data Source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "UserCellVC", for: indexPath) as? UserCellVC else {
            return UITableViewCell()
        }
        let user = users[indexPath.row]
        cell.configure(with: user)
        return cell
    }

    // MARK: - TableView Delegate

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let user = users[indexPath.row]
        let profileVC = ProfileVC()
        profileVC.user = user
        navigationController?.pushViewController(profileVC, animated: true)
    }
    
    
}
