//
//  VideoMakerViewController.swift
//  testStackView_MUSIC
//
//  Created by thnam on 04/04/2024.
//

import UIKit

class VideoMakerViewController: UIViewController {

    @IBOutlet weak var buttonAudio: UIView!
    
    @IBOutlet weak var buttonImage: UIView!
    
    
    @IBOutlet weak var viewBackGround: UIView!
    @IBAction func buttonBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.setHidesBackButton(true, animated: true)

        
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let newLayer = CAGradientLayer()
        newLayer.frame = viewBackGround.frame
        newLayer.colors = [UIColor.white.cgColor, UIColor(named: "rgbC4CAFB")?.cgColor ?? UIColor()]
        newLayer.locations = [0.0, 0.1, 0.2, 0.3, 1.0]
       // newLayer.frame = view.frame
        viewBackGround.layer.insertSublayer(newLayer, at: 0)
    }
  

}
