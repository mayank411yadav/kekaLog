//
//  MeCell.swift
//  keka log
//
//  Created by Mayank Yadav on 18/08/22.
//

import UIKit

class MeCell: UICollectionViewCell {

    @IBOutlet weak var theView: UIView!
    @IBOutlet weak var arrayData: UIImageView!
    @IBOutlet weak var Biglbl: UILabel!
    @IBOutlet weak var Smalllbl: UILabel!
    @IBOutlet weak var mediumlbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        theView.layer.borderWidth = 1
        theView.layer.borderColor = UIColor.black.cgColor
    }

}
