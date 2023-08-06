//
//  ViewController.swift
//  MergeableLibDemo
//
//  Created by Sanju Naik on 23/06/23.
//

import UIKit
import MyFramework
import Alamofire
import SubProjFramework

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var xcodeImageView: UIImageView!

    
    var name: String {
        return "Sanju"
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        MyFrameworkClass().greet(message: "Welcome to mergeable libraries")
        SubProjFrameworkClass().greetingFromSubProj("How are you doing today")
        
        let bundle = Bundle(for: MyFrameworkClass.self)
        print("bundle - \(bundle)")
        let image = UIImage(named: "welcome", in: bundle, compatibleWith: nil)!
        imageView.image = image
        
        xcodeImageView.image = UIImage(named: "xcode-icon", in: resourceBundle(), compatibleWith: nil)
        
        AF.request("https://google.com").response { response in
            debugPrint(response)
        }
        // Do any additional setup after loading the view.
    }

    func resourceBundle() -> Bundle {
        let frameworkBundle = Bundle(for: MyFrameworkClass.self)
        let resourceBundlePath = frameworkBundle.path(forResource: "MyFrameworkResources", ofType: "bundle")!
        let bundle = Bundle(path: resourceBundlePath)!
        return bundle
    }

}

