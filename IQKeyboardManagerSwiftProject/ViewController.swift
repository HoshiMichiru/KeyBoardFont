//
//  ViewController.swift
//  IQKeyboardManagerSwiftProject
//
//  Created by 星みちる on 2019/07/29.
//  Copyright © 2019 星みちる. All rights reserved.
//

import UIKit
//追記
import FontAwesome_swift
import RevealingSplashView


class ViewController: UIViewController {
    
    @IBOutlet weak var label1: UILabel!
    
    
    @IBOutlet weak var label2: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        //label1にアイコン設定
        label1.font = UIFont.fontAwesome(ofSize: 100, style: .brands)
        label1.text = String.fontAwesomeIcon(name: .github)
        
        label2.font = UIFont.fontAwesome(ofSize: 80, style: .brands)
        label2.text = String.fontAwesomeIcon(name: .apple)
        label2.textColor = .red
        
        //スプラッシュビューの設定
        let revealingSplashView = RevealingSplashView(iconImage: UIImage(named: "logo")!,iconInitialSize: CGSize(width: 70, height: 70), backgroundColor: UIColor(red:0.11, green:0.56, blue:0.95, alpha:1.0))
  
        //動き
//revealingSplashView.animationType = .heartBeat
        
        
        //Adds the revealing splash view as a sub view
        //時間
        revealingSplashView.delay = 3.0
        self.view.addSubview(revealingSplashView)
        
        //Starts animation
        revealingSplashView.startAnimation(){
            print("Completed")
        }
        
    
    }



}
