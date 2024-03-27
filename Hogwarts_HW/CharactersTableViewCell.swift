//
//  ViewController.swift
//  Hogwarts_HW
//
//  Created by Нурдаулет Даулетхан on 15.03.2024.
//
import UIKit
import SnapKit

class CharactersTableViewCell: UITableViewCell {

    lazy var nameLabel: UILabel = {
       let label = UILabel()
        label.text = ""
        return label
    }()
    
    lazy var surnameLabel: UILabel = {
       let label = UILabel()
        label.text = ""
        return label
    }()
    
    lazy var houseLabel: UILabel = {
       let label = UILabel()
        label.text = ""
        return label
    }()
    
    lazy var wandLabel: UILabel = {
       let label = UILabel()
        label.text = ""
        return label
    }()
    

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUp()
    }
    

    func setUp() {
        contentView.addSubview(nameLabel)
        contentView.addSubview(surnameLabel)
        contentView.addSubview(houseLabel)
        contentView.addSubview(wandLabel)

        
        nameLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(0)
            make.leading.equalToSuperview().inset(12)
        }

        surnameLabel.snp.makeConstraints { make in
            make.top.equalTo(nameLabel.snp.bottom).offset(4)
            make.leading.equalToSuperview().inset(12)
        }

        houseLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(0)
            make.trailing.equalToSuperview().inset(12)
        }
        
        wandLabel.snp.makeConstraints { make in
            make.top.equalTo(houseLabel.snp.bottom).offset(4)
            make.trailing.equalToSuperview().inset(12)
        }
    }
    
    func configure() {
        
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
