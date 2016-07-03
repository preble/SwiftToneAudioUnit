//
//  ViewController.swift
//  SwiftToneAudioUnit
//
//  Created by Adam Preble on 7/3/16.
//

import UIKit

class ViewController: UIViewController {

    private let toneGenerator = ToneGenerator()
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        toneGenerator.start()
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        
        toneGenerator.stop()
    }

}

