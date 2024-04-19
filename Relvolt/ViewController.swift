//
//  ViewController.swift
//  testStackView_MUSIC
//
//  Created by thnam on 02/04/2024.
//

import UIKit

class ViewController: UIViewController, UIVideoEditorControllerDelegate {

    @IBOutlet weak var lbCartoon: UILabel!
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var viewImages: UIView!
    @IBOutlet weak var viewBackGround: UIView!
   
    @IBOutlet weak var heightBackGround: NSLayoutConstraint!


    @IBOutlet weak var widthMenu: NSLayoutConstraint!
    @IBOutlet weak var textBackGround: UILabel!
    

    @IBOutlet weak var heightView: NSLayoutConstraint!
    @IBOutlet weak var heightMenuView: NSLayoutConstraint!
    
    
    @IBOutlet weak var viewFiles: UIView!
    @IBOutlet weak var viewBg: UIView!
    
    @IBOutlet weak var viewImage: UIView!
    @IBOutlet weak var viewAudio: UIView!
    
    @IBAction func buttonImage(_ sender: Any) {
        let vc = ImageCartoonViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func buttonMakeVideo(_ sender: Any) {
        
        let vc = VideoMakerViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    @IBAction func buttonMyFiles(_ sender: Any) {
        
        let vc1 = MyFilesViewController()
        self.navigationController?.pushViewController(vc1, animated: true)
        
    }
    
    @IBOutlet weak var imageAiCartoon: UIImageView!
    
    
    @IBOutlet weak var widthMenuView: NSLayoutConstraint!
    @IBOutlet weak var viewVideo: UIView!
    @IBOutlet weak var heightMenu: NSLayoutConstraint!
    
    @IBOutlet weak var widthStack1: NSLayoutConstraint!
    
    @IBOutlet weak var widthStack2: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let newLayer = CAGradientLayer()
        newLayer.frame = viewBg.bounds
        newLayer.colors = [UIColor.white.cgColor,UIColor.blue.cgColor]
        newLayer.frame = view.frame
        viewBg.layer.insertSublayer(newLayer, at: 0)
        
        
      viewAudio.layer.cornerRadius = 15
        viewImage.layer.cornerRadius = 15
        viewVideo.layer.cornerRadius = 15
        viewFiles.layer.cornerRadius = 15
        
        //fix gradient
        let view = UIView(frame: viewImages.frame)
        let gradient = CAGradientLayer()
        gradient.colors = [UIColor.clear.cgColor, UIColor.white.cgColor]

        gradient.locations = [0.0, 1.0]

        view.layer.insertSublayer(gradient, at: 0)

        viewImages.addSubview(view)

        viewImages.bringSubviewToFront(view)
        
        view.addSubview(lbCartoon)
        
        
        if UIDevice.current.userInterfaceIdiom == .pad {
            gradient.frame = CGRect(x: 0, y: 0, width: viewImages.bounds.size.width + 86, height: viewImages.bounds.size.height + 132)
            textBackGround.font = UIFont.systemFont(ofSize: 50)
          heightBackGround.constant = 540
          
         heightMenuView.constant = 592
            widthMenuView.constant = 565
            widthStack1.constant = 255
            widthStack2.constant = 255
//
        } else {
            gradient.frame = view.frame
        }
  
        
        
    }


}
