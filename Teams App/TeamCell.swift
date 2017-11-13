//
//  TeamCell.swift
//  Teams App
//
//  Created by Jyo Mithun on 16/10/2017.
//  Copyright © 2017 Jyo Mithun. All rights reserved.
//

import UIKit
class TeamCell : UICollectionViewCell{
    var team : Team? {
        didSet{
            guard let teamImage = team?.image else {return}
            guard  let teamName = team?.name else {return}
            teamImageView.image = UIImage(named: teamImage)
            teamnamelabel.text = teamName
            
        }
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
        setCellShadow()
    }
    func setCellShadow(){
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 1)
        self.layer.shadowOpacity = 1
        self.layer.shadowRadius = 1.0
        self.layer.masksToBounds = false
        self.clipsToBounds = false
        self.layer.cornerRadius = 3
        
    }
    func setup() {
        self.backgroundColor = .white
        self.addSubview(teamImageView)
        self.addSubview(teamnamelabel)
        setupViewItemConstraints()
    }
    let teamImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        return iv
    }()
    let teamnamelabel: UILabel = {
        let label = UILabel()
        label.text = "NAME"
        label.textColor = UIColor.red
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
    func setupViewItemConstraints(){
        teamImageView.anchor(top: topAnchor, left: leftAnchor, right: rightAnchor, bottom: nil, paddingTop: 10, paddingLeft: 10, paddingRight: 10, paddingBottom: 0, width:0 , height:50)
        teamnamelabel.anchor(top: teamImageView.bottomAnchor, left: leftAnchor, right: rightAnchor, bottom: bottomAnchor, paddingTop: 0, paddingLeft: 0, paddingRight: 0, paddingBottom: 0)
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("initcoder: It has not been implemented")
    }
}
