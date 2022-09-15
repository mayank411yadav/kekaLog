//
//  MePageView.swift
//  keka log
//
//  Created by Mayank Yadav on 18/08/22.
//

import UIKit

class MePageView: UIView {
        
    @IBOutlet var containerView: UIView!
    @IBOutlet weak var DataCollectionView: UICollectionView!
    @IBOutlet weak var titleView: UIView!
    override init(frame: CGRect) {
                super.init(frame: frame)
                initView()
        titleView.layer.borderWidth = 1
        titleView.layer.borderColor = UIColor.black.cgColor
            }
            
            required init?(coder aDecoder: NSCoder) {
                super.init(coder: aDecoder)
                initView()
            }
            
            func initView(){
                Bundle.main.loadNibNamed("MePageView", owner: self, options: nil)
                addSubview(containerView)
                containerView.frame = self.bounds
                containerView.autoresizingMask = [.flexibleHeight,.flexibleWidth]
                
            }

    


}
