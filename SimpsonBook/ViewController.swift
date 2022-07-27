//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Sezer on 27.07.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tblSimpsons: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tblSimpsons.delegate=self
        tblSimpsons.dataSource=self
        
        let homer = Simpson(simpsonName: "Homer Simpson", simpsonDescription: "Nuclear Safety", simpsonImage: UIImage(named: "homer")!)
        
        let marge = Simpson(simpsonName: "Marge SimpsonSimpson", simpsonDescription: "Housewife", simpsonImage: UIImage(named: "marge")!)
        
        let bart = Simpson(simpsonName: "Bart Simpson", simpsonDescription: "Student", simpsonImage: UIImage(named: "bart")!)
        
        let lisa = Simpson(simpsonName: "Lisa Simpson", simpsonDescription: "Student", simpsonImage: UIImage(named: "lisa")!)
        
        let maggie = Simpson(simpsonName: "Maggie Simpson", simpsonDescription: "Baby", simpsonImage: UIImage(named: "maggie")!)
    
        let simpsonArray=[homer,marge,bart,lisa,maggie]
        
        
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=UITableViewCell()
        cell.textLabel?.text="test"
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    


}

