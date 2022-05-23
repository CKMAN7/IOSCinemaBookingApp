//
//  showTicketViewController.swift
//  CinemaBookingApplication
//
//  Created by Liuyu on 2022/5/22.
//

import Foundation
import UIKit

class showTicketViewController: UIViewController{
    
    var specificMovie : Movie?
    var selectedDate : String = ""
    var selectedTime : String?
    let dateFormatter = DateFormatter()
    
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var movieDateLabel: UILabel!
    @IBOutlet weak var movieTimeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print(selectedDate)
        print(selectedDate)
        print(selectedDate)
        print(selectedDate)
        
        movieNameLabel.text = specificMovie?.movieName
//        movieDateLabel.text = dateFormatter.string(from:selectedDate!)
        movieDateLabel.text = selectedDate.description.substring(to: 10)
        movieTimeLabel.text = selectedTime
        
    }
}

extension String {
    
    subscript (i:Int)->String{
        let startIndex = self.index(self.startIndex, offsetBy: i)
        let endIndex = self.index(startIndex, offsetBy: 1)
        return String(self[startIndex..<endIndex])
    }
    
    subscript (r: Range<Int>) -> String {
        get {
            let startIndex = self.index(self.startIndex, offsetBy: r.lowerBound)
            let endIndex = self.index(self.startIndex, offsetBy: r.upperBound)
            return String(self[startIndex..<endIndex])
        }
    }
    
    subscript (index:Int , length:Int) -> String {
        get {
            let startIndex = self.index(self.startIndex, offsetBy: index)
            let endIndex = self.index(startIndex, offsetBy: length)
            return String(self[startIndex..<endIndex])
        }
    }
    
    func substring(to:Int) -> String{
        return self[0..<to]
    }
    
    func substring(from:Int) -> String{
        return self[from..<self.count]
    }
    
}
