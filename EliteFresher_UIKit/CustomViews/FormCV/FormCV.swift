//
//  FormCV.swift
//  EliteFresher_UIKit
//
//  Created by Nguyễn Quang Anh on 29/6/25.
//

import UIKit

class FormCV: UIView {
    @IBOutlet var formCV: UIView!
    
    @IBOutlet weak var title: UILabel!
    
    @IBOutlet weak var formField: UITextField!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupUI()
    }
    
    private func setupUI() {
        Bundle.main.loadNibNamed("FormCV", owner: self, options: nil)
        self.addSubview(formCV)
        formCV.frame = self.bounds
        formCV.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        // Bo góc field
        formField.layer.cornerRadius = 16
        formField.layer.borderWidth = 1
        formField.layer.borderColor = UIColor.text.cgColor
        formField.clipsToBounds = true
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
