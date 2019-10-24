//
//  ViewController.swift
//  brilliant-makeover
//
//  Created by Fitri San on 04/10/2019.
//  Copyright © 2019 Fitri San. All rights reserved.
//

import UIKit
import GoogleMobileAds

class HomeVC: UIViewController {

    @IBOutlet weak var bannerView: GADBannerView!
    @IBOutlet weak var removeAdsBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if userDefaults.standard.bool(forKey : PurchaseManager.instance.IAP_REMOVE_ADS) == true {
            removeAdsBtn.removeFromSuperview()
            bannerView.removeFromSuperview()
        }else{
            bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716"
            bannerView.rootViewController = self
            bannerView.load(GADRequest())
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func removeAdsPressed(_ sender: Any) {
        //show a loading spinner ActivityIndicator
        PurchaseManager.instance.purchaseRemoveAds { (success) in
            //dismiss
            if success {
                self.bannerView.removeFromSuperview()
                self.removeAdsBtn.removeFromSuperview()
            }else{
                //show message to user
            }
        }
    }
    
}

