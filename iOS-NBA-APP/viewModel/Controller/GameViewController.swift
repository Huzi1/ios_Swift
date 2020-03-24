//
//  GameScreenControllerTableViewController.swift
//  iOS-NBA-APP
//
//  Created by Huzaifa on 10/9/19.
//  Copyright © 2019 茆大蔚. All rights reserved.
//

import UIKit

class GameViewController: UIViewController, UITableViewDataSource {
    
    private let viewModel = GameViewModel()
    
    
    @IBOutlet weak var GamesView: UITableView!
    @IBOutlet weak var dateInputTextField: UITextField!
    @IBOutlet weak var buttnInfo: UIButton!
    
    private var datePicker:UIDatePicker?
    
    override func viewDidLoad()
    {    super.viewDidLoad()
        
        datePicker = UIDatePicker()
        
        datePicker?.minimumDate = Calendar.current.date(byAdding: .year, value: -1, to: Date())!
        datePicker?.maximumDate = Calendar.current.date(byAdding: .year, value: 1, to: Date())!
        datePicker?.datePickerMode = .date
       
        datePicker?.addTarget(self, action: #selector(GameViewController.dateChanged(datePicker:)), for: .valueChanged)
        dateInputTextField.inputView = datePicker
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(GameViewController.viewTapped(gestureRecognizer:)))
        
        view.addGestureRecognizer(tapGesture)
        GamesView.dataSource = self
//        print("In gameView")
        
    }
    
    @IBAction func refresh(_ sender: UIButton) {
        let datePickedString = dateInputTextField.text
        
        if datePickedString!.isEmpty {
        
            self.GamesView.reloadData()
        }
        
        else {
            let alertController = UIAlertController(title: nil, message: "No Games were scheduled on selected date.", preferredStyle: .actionSheet)
            
            let cancelAction = UIAlertAction(title: "Ok", style: .cancel, handler: { (alert: UIAlertAction!) -> Void in
                //  Do something here upon cancellation.
            })
            
            alertController.addAction(cancelAction)
            
            self.present(alertController, animated: true, completion: nil)
            
        }
//          let  datePicked = viewModel.dateToString(datePickedString!)
//
//             let gameIndex : [Int] = filterTableView(bydate:datePicked)
//
//            gameIndex. reloadData()
        }

    
    @IBAction func infoButtonGames(_ sender: UIButton) {
        buttnInfo.showsTouchWhenHighlighted = true
        
        let alertController = UIAlertController(title: nil, message: "Pick a date and tap refresh.Games Played on that day will be  displayed.", preferredStyle: .actionSheet)
        
        let cancelAction = UIAlertAction(title: "Ok", style: .cancel, handler: { (alert: UIAlertAction!) -> Void in
            //  Do something here upon cancellation.
        })
        
        
        alertController.addAction(cancelAction)
        
        self.present(alertController, animated: true, completion: nil)
        
    }
    @objc func viewTapped(gestureRecognizer: UITapGestureRecognizer){
        view.endEditing(true)
    }
    @objc func dateChanged(datePicker: UIDatePicker){
//       let datePicked =  datePicker.date
        
        dateInputTextField.text = viewModel.getFormattedDateOnly(datePicker.date)
        view.endEditing(true)
    }
    
    func filterTableView(bydate:Date)-> [Int] {

        let gameIndex: [Int] = self.viewModel.getGamesIndex(bydates: bydate)
        
         return gameIndex
        }
    
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return viewModel.count
    }
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GameCell", for: indexPath)
        
        let hImageView = cell.viewWithTag(100) as? UIImageView
        let hLabel = cell.viewWithTag(101) as? UILabel
        let aImageView = cell.viewWithTag(214) as? UIImageView
        let aLabel = cell.viewWithTag(201) as? UILabel
        let dateText = cell.viewWithTag(11) as? UILabel
        let statusText = cell.viewWithTag(20) as? UILabel
        let vsText = cell.viewWithTag(299) as? UILabel
        // Configure the cell...
        
//        if let hImageView = hImageView, let hLabel = hLabel, let aImageView = aImageView, let aLabel = aLabel, let dateText = dateText, let statusText = statusText, let vsText = vsText {
        
            let currentItem = viewModel.getGames(byIndex: indexPath.row)
            print("\(indexPath.row) iterate number in controller")
        hImageView!.image = currentItem.homeImage
        hLabel!.text = currentItem.home
        aImageView!.image = currentItem.awayImage
        aLabel!.text = currentItem.away
        dateText!.text = viewModel.getFormattedDate(currentItem.date)
        statusText!.text = "Location: \(currentItem.location)\nhome score: \(currentItem.hScore) \nAway score: \(currentItem.aScore)"
            vsText!.text = "Vs"
            
            
//        }
        return cell
    }
    
    
    
    
    
    
   
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//
//    }
  

    
  
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let selectedRow = self.tableView.indexPathForSelectedRow else {return}
//        let destination = segue.destination as? LKDetailViewController
//        let selectedGame = viewModel. characters[selectedRow.row]
//        destination!.selectedCharacter = selectedCharacter
//    }
    
   

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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destination.
//        // Pass the selected object to the new view controller.
//    }
    

}
