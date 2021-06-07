//
//  ResultVievC.swift
//  BMI Calculator
//
//  Created by Aleksandr Khalupa on 25.12.2020.
//

import UIKit

class ResultVievC: UIViewController {

    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var resultLebel: UILabel!
    
    var resultBMI = ""
    var imageBMI = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLebel.text = resultBMI
        resultImage.image = imageBMI
    }
    
    
    @IBAction func pressedRecalculate(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
