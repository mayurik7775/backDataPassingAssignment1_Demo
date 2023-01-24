//
//  ViewController.swift
//  backDataPassingAssignment1
//
//  Created by Mac on 04/11/22.
//

import UIKit

class ViewController: UIViewController,BackDataPassingProtocol{
    

    @IBOutlet weak var FirstNameTextFieldOnFirstViewController: UITextField!
   
    @IBOutlet weak var SecondNameTextFieldOnFirstViewController: UITextField!
    
    @IBOutlet weak var ThirdNameTextFieldOnFirstViewController: UITextField!
    
    @IBOutlet weak var FirstDataLabelOnFirstViewController: UILabel!
    
    @IBOutlet weak var SecondDataLabelOnFirstViewController: UILabel!
    
    @IBOutlet weak var ThirdDataLabelOnFirstViewController: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.FirstNameTextFieldOnFirstViewController.text = ""
        self.SecondNameTextFieldOnFirstViewController.text = ""
        self.ThirdNameTextFieldOnFirstViewController.text = ""
    }

    @IBAction func btnClicktToNavigateOnSecondViewController(_ sender: Any) {
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        let dataToBePassed1 = self.FirstNameTextFieldOnFirstViewController.text
        let dataToBePassed2 = self.SecondNameTextFieldOnFirstViewController.text
        let dataToBePassed3 = self.ThirdNameTextFieldOnFirstViewController.text
        
        secondViewController.dataFormFirstViewController1 = dataToBePassed1
        secondViewController.dataFromFirstViewController2 = dataToBePassed2
        secondViewController.dataFormFirstViewController3 = dataToBePassed3
        
        secondViewController.delegateSVC = self
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
    func passDataToFirstViewController1(textToPass1: String) {
        self.FirstDataLabelOnFirstViewController.text = textToPass1
    }
    
    func passDataToFirstViewController2(textToPass2: String) {
        self.SecondDataLabelOnFirstViewController.text = textToPass2
    }
    
    func passDataToFirstViewController3(textToPass3: String) {
        self.ThirdDataLabelOnFirstViewController.text = textToPass3
    }

}

