//
//  purchaseMovieViewController.swift
//  CinemaBookingApplication
//
//  Created by Liuyu on 2022/5/22.
//

import Foundation
import UIKit

class purchaseMovieViewController: UIViewController{
    
    var specificMovie : Movie?
    var selectedDate : String = ""
    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var movieDatePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        movieNameLabel.text = specificMovie?.movieName
        
        let oneDayTime:TimeInterval = 24 * 60 * 60
        let currentDate = NSDate() as Date
       
        let oneDayFromToday = currentDate.addingTimeInterval(oneDayTime)
       
        let fiveDayFromToday = currentDate.addingTimeInterval(5 * oneDayTime)
       
        movieDatePicker.minimumDate = oneDayFromToday
        movieDatePicker.maximumDate = fiveDayFromToday
        movieDatePicker.addTarget(self, action:#selector(dateChanged), for: UIControl.Event.valueChanged)
        
//        selectedDate = movieDatePicker.date as NSDate
    }
    
    @objc func dateChanged(datePicker:UIDatePicker)
        {
            // 更新提醒时间文本框
            let dateFormat = DateFormatter()
            dateFormat.dateFormat = "yyyy-MM-dd"
            let date = datePicker.date
            selectedDate = dateFormat.string(from: date)
            
        }
    
    /// use Segue to change the viewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToPurchase1" {
            let showTicketVC = segue.destination as! showTicketViewController
            showTicketVC.selectedTime = "08:40"
            showTicketVC.selectedDate = selectedDate
            showTicketVC.specificMovie = specificMovie
            
        } else if segue.identifier == "goToPurchase2" {
            let showTicketVC = segue.destination as! showTicketViewController
            showTicketVC.selectedTime = "09:30"
            showTicketVC.selectedDate = selectedDate
            showTicketVC.specificMovie = specificMovie
            
        } else if segue.identifier == "goToPurchase3" {
            let showTicketVC = segue.destination as! showTicketViewController
            showTicketVC.selectedTime = "10:50"
            showTicketVC.selectedDate = selectedDate
            showTicketVC.specificMovie = specificMovie
            
        } else if segue.identifier == "goToPurchase4" {
            let showTicketVC = segue.destination as! showTicketViewController
            showTicketVC.selectedTime = "12:00"
            showTicketVC.selectedDate = selectedDate
            showTicketVC.specificMovie = specificMovie
            
        } else if segue.identifier == "goToPurchase5" {
            let showTicketVC = segue.destination as! showTicketViewController
            showTicketVC.selectedTime = "14:40"
            showTicketVC.selectedDate = selectedDate
            showTicketVC.specificMovie = specificMovie
            
        } else if segue.identifier == "goToPurchase6" {
            let showTicketVC = segue.destination as! showTicketViewController
            showTicketVC.selectedTime = "17:20"
            showTicketVC.selectedDate = selectedDate
            showTicketVC.specificMovie = specificMovie
            
        } else if segue.identifier == "goToPurchase7" {
            let showTicketVC = segue.destination as! showTicketViewController
            showTicketVC.selectedTime = "20:00"
            showTicketVC.selectedDate = selectedDate
            showTicketVC.specificMovie = specificMovie
            
        } else if segue.identifier == "goToPurchase8" {
            let showTicketVC = segue.destination as! showTicketViewController
            showTicketVC.selectedTime = "22:00"
            showTicketVC.selectedDate = selectedDate
            showTicketVC.specificMovie = specificMovie
            
        } else {
            print("error")
        }
    }
}
