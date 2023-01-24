//
//  SecondViewController.swift
//  backDataPassingAssignment1
//
//  Created by Mac on 04/11/22.
//

import UIKit
protocol BackDataPassingProtocol{
    func passDataToFirstViewController1(textToPass1: String)
    func passDataToFirstViewController2(textToPass2: String)
    func passDataToFirstViewController3(textToPass3: String)
}
class SecondViewController: UIViewController {

    @IBOutlet weak var firstdataLabelOnSecondViewController: UILabel!
    
    @IBOutlet weak var seconddataLabelOnSecondViewController: UILabel!
    
    @IBOutlet weak var thirddataLabelOnSecondViewController: UILabel!
    
    @IBOutlet weak var firstNameTextFieldOnSecondViewController: UITextField!
    
    @IBOutlet weak var secondNameTextFieldOnSecondViewController: UITextField!
    
    @IBOutlet weak var thirdNameTextFieldOnSecondViewController: UITextField!
    
    var dataFormFirstViewController1: String?
    var dataFromFirstViewController2: String?
    var dataFormFirstViewController3: String?
    
    var delegateSVC : BackDataPassingProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.firstdataLabelOnSecondViewController.text = dataFormFirstViewController1
        self.seconddataLabelOnSecondViewController.text = dataFromFirstViewController2
        self.thirddataLabelOnSecondViewController.text = dataFormFirstViewController3
    }
    
    @IBAction func btnClickToNavigateToFirstViewController(_ sender: Any) {
        guard let delegateSecondViewController = delegateSVC else  {
           print("Delegate not Found")
            return
        }
        let nameRetivedFromTextField1 = self.firstNameTextFieldOnSecondViewController.text
        let nameRetivedFromTextField2 = self.secondNameTextFieldOnSecondViewController.text
        let nameRetivedFromTextField3 = self.thirdNameTextFieldOnSecondViewController.text
        
        delegateSecondViewController.passDataToFirstViewController1(textToPass1: nameRetivedFromTextField1!)
        delegateSecondViewController.passDataToFirstViewController2(textToPass2: nameRetivedFromTextField2!)
        delegateSecondViewController.passDataToFirstViewController3(textToPass3: nameRetivedFromTextField3!)
        
        navigationController?.popViewController(animated: true)
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
