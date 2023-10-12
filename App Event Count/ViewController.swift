//
//  ViewController.swift
//  App Event Count
//
//  Created by Jacob Davis on 10/11/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var didFinishLaunchingLabel: UILabel!
    @IBOutlet weak var configurationForConnectingLabel: UILabel!
    @IBOutlet weak var willConnectToLabel: UILabel!
    @IBOutlet weak var didBecomeActiveLabel: UILabel!
    @IBOutlet weak var willResignActiveLabel: UILabel!
    @IBOutlet weak var willEnterForegroundLabel: UILabel!
    @IBOutlet weak var didEnterBackgroundLabel: UILabel!
    var willConnectCount = 0
    var didBecomeActiveCount = 0
    var willResignActiveCount = 0
    var willEnterForegroundCount = 0
    var didEnterBackgroundCount = 0
    
    var appDelegate = (UIApplication.shared.delegate as! AppDelegate)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func updateView() {
        didFinishLaunchingLabel.text = "The App has launched \(appDelegate.launchCount) time(s)"
        configurationForConnectingLabel.text = "The App has been connected to scene \(appDelegate.configurationForConnectingCount) time(s)"
        willConnectToLabel.text = "Will Connect has been called \(willConnectCount) time(s)"
        didBecomeActiveLabel.text = "Scene did become active \(didBecomeActiveCount) time(s)"
        willResignActiveLabel.text = "Scene will resign active has been called \(willResignActiveCount) time(s)"
        willEnterForegroundLabel.text = "Scene will enter foreground has been called \(willEnterForegroundCount) time(s)"
        didEnterBackgroundLabel.text = "App entered background \(didEnterBackgroundCount) time(s)"
        
    }
    
    
}

