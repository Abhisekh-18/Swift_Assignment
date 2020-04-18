//
//  PictureCell.swift
//  NewProject
//
//  Created by Abhisekh Sahoo on 18/04/20.
//  Copyright © 2020 Abhisekh Sahoo. All rights reserved.
//

import UIKit

class PictureCell: UITableViewCell {

    @IBOutlet weak var picture_lable: UILabel!
    @IBOutlet weak var picture_view: UIImageView!
    func setImage(pic:Picture){
        picture_view.image=pic.image
        picture_lable.text=pic.title
    }
}
