//
//  ViewController.swift
//  TinderUI_Sampler
//
//  Created by k-tatsumi on 2019/04/10.
//  Copyright © 2019 k-tatsumi. All rights reserved.
//

import UIKit
import Poi
class ViewController: UIViewController, PoiViewDataSource, PoiViewDelegate {
    
    var sampleCards = [UIView]()
    var goodImageView = UIImageView()
    var badImageView = UIImageView()
    @IBOutlet weak var poiView: PoiView!
    @IBOutlet weak var imageView: UIImageView!
    var nameArray = ["IMG_3237 2.JPG","IMG_3238.JPG","IMG_3209 5.png","IMG_3213 4.png","IMG_3228 3.png"]
    override func viewDidLoad() {
        super.viewDidLoad()
        goodImageView.image = UIImage(named: "good.png")
        badImageView.image = UIImage(named: "bad.png")
        var colors = [UIColor.red, UIColor.orange,UIColor.blue,UIColor.black,UIColor.yellow]
        for i in (0..<5) {
            sampleCards.append(UIView(frame: CGRect(x: 0, y: 0, width: 240, height: 128)))
            sampleCards[i].backgroundColor = colors[i]
        }
        poiView.dataSource = self
        poiView.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: PoiViewDataSource
    func numberOfCards(_ poi: PoiView) -> Int {
        return 5
    }
    
    func poi(_ poi: PoiView, viewForCardAt index: Int) -> UIView {
        imageView.image = UIImage(named: nameArray[index])
        return sampleCards[index]
    }
    
    func poi(_ poi: PoiView, viewForCardOverlayFor direction: SwipeDirection) -> UIImageView? {
        switch direction {
        case .right:
            return goodImageView
        case .left:
            return badImageView
        }
    }
        
        // MARK: PoiViewDelegate
        func poi(_ poi: PoiView, didSwipeCardAt: Int, in direction: SwipeDirection) {
            switch direction {
            case .left:
                print("left")
            case .right:
                print("right")
            }
        }
        
        func poi(_ poi: PoiView, runOutOfCardAt: Int, in direction: SwipeDirection) {
            alert(message: "おわたyo")
        }
        
}

