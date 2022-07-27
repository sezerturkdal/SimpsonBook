//
//  DetailVC.swift
//  SimpsonBook
//
//  Created by Sezer on 27.07.2022.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var imgSimpson: UIImageView!
    
    var selectedSimpson:Simpson?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblName.text=selectedSimpson?.name
        lblDescription.text=selectedSimpson?.job
        imgSimpson.image=selectedSimpson?.image
    }

}
