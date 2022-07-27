//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Sezer on 27.07.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tblSimpsons: UITableView!
    
    var simpsonsArray=[Simpson]()
    var chosenSimpson:Simpson?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tblSimpsons.delegate=self
        tblSimpsons.dataSource=self
        
        let homer = Simpson(simpsonName: "Homer Simpson", simpsonDescription: "Nuclear Safety", simpsonImage: UIImage(named: "homer")!)
        
        let marge = Simpson(simpsonName: "Marge Simpson", simpsonDescription: "Housewife", simpsonImage: UIImage(named: "marge")!)
        
        let bart = Simpson(simpsonName: "Bart Simpson", simpsonDescription: "Student", simpsonImage: UIImage(named: "bart")!)
        
        let lisa = Simpson(simpsonName: "Lisa Simpson", simpsonDescription: "Student", simpsonImage: UIImage(named: "lisa")!)
        
        let maggie = Simpson(simpsonName: "Maggie Simpson", simpsonDescription: "Baby", simpsonImage: UIImage(named: "maggie")!)
    
        simpsonsArray=[homer,marge,bart,lisa,maggie]
        
        
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=UITableViewCell()
        cell.textLabel?.text=simpsonsArray[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return simpsonsArray.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSimpson=simpsonsArray[indexPath.row]
        self.performSegue(withIdentifier: "showDetailSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetailSegue"{
            let destinationVC=segue.destination as! DetailVC
            destinationVC.selectedSimpson=chosenSimpson
        }
    }
    
    
    


}

