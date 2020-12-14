//
//  DrugDetailController.swift
//  PlanerLekow
//
//  Created by Aleksandra Kodroń on 14/12/2020.
//

import UIKit
import Foundation
import AVFoundation

class DrugDetailController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    let synth = AVSpeechSynthesizer()
    var myUtterance = AVSpeechUtterance(string: "")
    
    override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    
    var drug: Drug?
    var pickerData: [String] = [String]()
    
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var textField: UITextView!
    
    override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
        self.picker.delegate = self
        self.picker.dataSource = self
        
        textField.text = drug?.purpose
        pickerData = ["Cel stosowania", "Dawkowanie","Skład", "Efekty uboczne", "Przeciwwskazania"]
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
        }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        switch row {
        case 0:
            textField.text = drug?.purpose

        case 1:
            textField.text = drug?.dosage

        case 2:
            textField.text = drug?.ingredients

        case 3:
            textField.text = drug?.sideEffects
        case 4:
            textField.text = drug?.contraindications
        default:
            textField.text = ""
        }
    }
    
    @IBAction func speakerButton(_ sender: Any) {
        if(synth.isSpeaking){
            synth.stopSpeaking(at: AVSpeechBoundary.immediate)
        }else{
            myUtterance = AVSpeechUtterance(string: textField.text)
            myUtterance.rate = 0.5
            synth.speak(myUtterance)
        }
        
    }
    
    
}
