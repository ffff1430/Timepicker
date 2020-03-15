//
//  ViewController.swift
//  Timepicker
//
//  Created by star on 2020/3/14.
//  Copyright © 2020 star. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var timeSlider: UISlider!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var ImageView: UIImageView!
    
    let image = [2010,2011,2012,2013,2014,2015,2016,2017,2018,2019,2020]
    
    var dateString:String = ""
    var timer:Timer?
    var imageNumber = 0
    var sliderNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Datepicker(_ sender: Any) {
        let imageDate = datePicker.date
        let dateComponents = Calendar.current.dateComponents(in: TimeZone.current, from: imageDate)
        
        let year = dateComponents.year!
        let picName = "\(year)"
        
        ImageView.image = UIImage(named: picName)
        
        timeSlider.value = Float(year - 2010)
        timeLabel.text! = "\(picName)"
    }
    
    @IBAction func Slider(_ sender: UISlider) {
        sender.value.round()
        sliderNumber = Int(sender.value)
        let imageSlider = image[sliderNumber]
        ImageView.image = UIImage(named: String(imageSlider))
    
        timeLabel.text = "\(image[sliderNumber])"
        
    }
}

