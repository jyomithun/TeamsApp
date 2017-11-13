//
//  ViewController.swift
//  Teams App
//
//  Created by Jyo Mithun on 16/10/2017.
//  Copyright © 2017 Jyo Mithun. All rights reserved.
//

import UIKit

class ViewController:UICollectionViewController, UICollectionViewDelegateFlowLayout {
   let cellId = "cellId"
    let teams = [Team(image: "arsenal", name: "arsenal"),
                 Team(image: "chelsea", name: "Chelsea"),
                 Team(image: "everton", name: "Everton"),
                 Team(image: "leicester", name: "Leicester"),
                 Team(image: "liverpool", name: "Liverpool"),
                 Team(image: "mu", name: "M United"),
                 Team(image: "mc", name: "M City"),
                 Team(image: "newcastle", name: "Newcastle"),
                 Team(image: "tottenham", name: "Tottenham"),
                 Team(image: "arsenal", name: "arsenal"),
                 Team(image: "chelsea", name: "Chelsea"),
                 Team(image: "everton", name: "Everton"),
                 Team(image: "leicester", name: "Leicester"),
                 Team(image: "liverpool", name: "Liverpool"),
                 Team(image: "mu", name: "M United"),
                 Team(image: "mc", name: "M City"),
                 Team(image: "newcastle", name: "Newcastle"),
                 Team(image: "tottenham", name: "Tottenham")]
    override func viewDidLoad() {
        super.viewDidLoad()
        //collection view background colour
        collectionView?.backgroundColor = UIColor.customDarkBlueColor
        //Navigation section
        navigationItem.title = "Teams"
        navigationController?.navigationBar.barTintColor = UIColor.customRedColor
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white, NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 20)]
        //Register teamcell(collection viewcell)
        collectionView?.register(TeamCell.self, forCellWithReuseIdentifier: cellId)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return teams.count
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell  {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! TeamCell
        cell.team = teams[indexPath.item]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width:(view.frame.width / 3)-16, height: 100)
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top:8, left: 8, bottom: 8, right: 8)
        
    }
}







