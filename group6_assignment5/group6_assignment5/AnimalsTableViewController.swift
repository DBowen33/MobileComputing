//
//  AnimalsTableViewController.swift
//  group6_assignment5
//
//  Created by Denis Bowen on 10/8/19.
//  Copyright © 2019 Denis Bowen. All rights reserved.
//

import UIKit

class AnimalsTableViewController: UITableViewController {
    
    var animals = [Animal]()
    
    private func loadAnimals() {
        

        
        let photo1 = UIImage(named: "animal1")
        let photo2 = UIImage(named: "animal2")
        let photo3 = UIImage(named: "animal3")
        let photo4 = UIImage(named: "animal4")

        guard let animal1 = Animal(name: "Great White Shark", scientificName: "Carcharodon carcharias", animalClass: "Chondrichthyes", size: "680.0 kg", photo: photo1!) else {
            fatalError("Unable to instantiate meal1")
        }
        
        guard let animal2 = Animal(name: "Common Cuttlefish", scientificName: "Sepia officinalis", animalClass: "Cephalopoda" , size: "4.0 kg", photo: photo2!) else {
            fatalError("Unable to instantiate meal1")
        }
        
        guard let animal3 = Animal(name: "Takhi", scientificName: "Equus ferus", animalClass: "Mammalia", size: "300.0 kg", photo: photo3!) else {
            fatalError("Unable to instantiate meal1")
        }
        
        guard let animal4 = Animal(name: "Asian Elephant", scientificName: "Elephas maximus", animalClass: "Mammalis", size: "5,000.0 kg", photo: photo4!) else {
            fatalError("Unable to instantiate meal1")
        }
        
        
        animals += [animal1, animal1, animal2, animal2, animal3, animal3, animal4, animal4]

        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadAnimals()


    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return animals.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let animal_list = animals[indexPath.row]
        
        if indexPath.row % 2 == 0{
            return TopCell(animal: animal_list)
        }else{
            return BottomCell(animal: animal_list)
        }
        
        
        

    }
    func TopCell(animal:Animal) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "Top Cell") as! TopTableViewCell
        
        cell.animalImageView.image = animal.photo
        cell.nameLabel.text = animal.name
        
        return cell
    }
    func BottomCell(animal:Animal) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "Bottom Cell") as! BottomTableViewCell
        
        cell.scientificNameLabel.text = animal.scientificName
        cell.classLabel.text = animal.animalClass
        cell.sizeLabel.text = animal.size
        return cell
    }
    
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation
    */
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        
        let newidx = self.tableView.indexPathForSelectedRow![1]
        if segue.destination is GalleryCollectionViewController
        {
            print("\(newidx) idx in segue")
            let vc = segue.destination as? GalleryCollectionViewController
            if(animals[newidx].name == "Great White Shark"){
                vc?.current_animal = "shark"
            } else if(animals[newidx].name == "Common Cuttlefish"){
                vc?.current_animal = "fish"
            } else if(animals[newidx].name == "Takhi"){
                vc?.current_animal = "takhi"
            } else if(animals[newidx].name == "Asian Elephant"){
                vc?.current_animal = "elephant"
            }
            
        }
    }
    
    

}
