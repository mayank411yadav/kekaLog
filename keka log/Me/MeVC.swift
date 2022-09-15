//
//  MeVC.swift
//  keka log
//
//  Created by Mayank Yadav on 18/08/22.
//

import Foundation
import UIKit

class MeVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var mainView = MePageView()
   
    
    var arrayData = ["clockin", "leave", "timer", "balance", "timer","compoff","holidays"]
    var Biglbl = ["Clock In","Apply Leave","Request Credit for comp off","Leave Balances","Attendance History","Comp-Off History","Holidays"]
    var Smalllbl = ["You have flexible timings","you can apply leave from here","request credit for compensatory off here","view balances and leave history","view attendance history and other statistics","view all comp-off request & history","Ganesh Chaturthi"]
    var mediumlbl = ["SHIFT TODAY","","","","","","NEXT HOLIDAY"]
//    var arrayRestaurantData = ["resturant", "resturant", "resturant", "resturant","resturant"]
    
    override func loadView() {
        view = mainView
    }
    override func viewDidLoad(){
        super.viewDidLoad()
         
        self.mainView.DataCollectionView.delegate = self
        self.mainView.DataCollectionView.dataSource = self
        task()
    }
    

    func task() {
       
        mainView.DataCollectionView.register(UINib(nibName: "MeCell", bundle: nil),  forCellWithReuseIdentifier: "MeCell")

    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let flowlayout = collectionViewLayout as? UICollectionViewFlowLayout
        let space: CGFloat = (flowlayout?.minimumInteritemSpacing ?? 10.0) + (flowlayout?.sectionInset.left ?? 10.0) + (flowlayout?.sectionInset.right ?? 10.0)
        let size:CGFloat =  (mainView.DataCollectionView.frame.size.width - 30) / 2.0
                return CGSize(width: size, height: size)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayData.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
           let cell = mainView.DataCollectionView.dequeueReusableCell(withReuseIdentifier: "MeCell", for: indexPath) as? MeCell
        cell?.arrayData.image = UIImage(named: arrayData[indexPath.row])
        cell?.Smalllbl.text = Smalllbl[indexPath.row]
        cell?.Biglbl.text = Biglbl[indexPath.row]
        cell?.mediumlbl.text = mediumlbl[indexPath.row]
        return cell!
         
      
    }
   
    
    
    
}
