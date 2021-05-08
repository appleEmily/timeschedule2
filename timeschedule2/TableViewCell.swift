//
//  TableViewCell.swift
//  timeschedule2
//
//  Created by masahiro tono on 2021/03/07.
//

import UIKit
import RealmSwift

class TableViewCell: UITableViewCell,UITextFieldDelegate{
    @IBOutlet var titleTextField: UITextField!
    
    var time: Hour!
    var date: Schedule!
    
    let realm = try! Realm()
    
//    var timeArray: Results<Time>!
    var scheduleArray: Results<Schedule>!
    
    override func awakeFromNib() {
        super.awakeFromNib()
       titleTextField.delegate = self
        scheduleArray = realm.objects(Schedule.self)
    
        //         Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        print("タップされました")
        // Configure the view for the selected state
    }
    
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        titleTextField.resignFirstResponder()
//    }
    
    func textFieldShouldReturn(_ titleTextField: UITextField) -> Bool {
//        self.titleTextField.text = ""
        titleTextField.resignFirstResponder()
        try! realm.write {
            date.day = titleTextField.text!
            realm.add(date)
        }
        return true
    }
    
    func  セルに表示するデータの制御(choice:IndexPath){
        self.titleTextField.text = String((choice .row) + 1)
        date = scheduleArray[choice.row]

    }
    
}
