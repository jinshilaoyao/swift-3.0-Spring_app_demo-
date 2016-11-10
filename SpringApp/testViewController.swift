//
//  testViewController.swift
//  SpringApp
//
//  Created by yesway on 2016/11/10.
//  Copyright © 2016年 Meng To. All rights reserved.
//

import UIKit
import Spring
class testViewController: UIViewController {

    @IBOutlet weak var blurView: UIView!
    @IBOutlet weak var downButton: AsyncButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        asyncButton()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIApplication.shared.sendAction(#selector(SpringViewController.minimizeView(_:)), to: nil, from: self, for: nil)
        


    }
    
    @IBAction func back(_ sender: UIButton) {
        dismiss(animated: false, completion: nil)
        
        UIApplication.shared.sendAction(#selector(SpringViewController.maximizeView(_:)), to: nil, from: self, for: nil)
        
    }
    
    func asyncButton() {
        
        downButton.setImageURL(url: NSURL(string: "http://d.lanrentuku.com/down/png/1311/origami_birds/bird_red.png"), placeholderImage: nil, forState: .normal)
        
        blurView = insertBlurView(view: blurView, style: .light)
    }

}
