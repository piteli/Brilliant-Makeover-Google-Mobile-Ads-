//
//  ViewController.swift
//  brilliant-makeover
//
//  Created by Fitri San on 04/10/2019.
//  Copyright © 2019 Fitri San. All rights reserved.
//

import UIKit
import GoogleMobileAds

class ViewController: UIViewController {

    @IBOutlet weak var bannerView: GADBannerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716"
        bannerView.rootViewController = self
        bannerView.load(GADRequest())
        // Do any additional setup after loading the view, typically from a nib.
    }


}

