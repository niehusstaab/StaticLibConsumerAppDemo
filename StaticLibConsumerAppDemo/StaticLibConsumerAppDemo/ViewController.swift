//
//  ViewController.swift
//  StaticLibConsumerAppDemo
//
//  Created by Liam Niehus-Staab on 8/23/22.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    setup()
  }
  
  private func setup() {
    let tView = UITextView(frame: CGRect(x: 100, y: 100, width: 200, height: 100))
    tView.text = "Hello \(getSomethingFromStaticLib())"
    tView.textColor = UIColor.black
    tView.translatesAutoresizingMaskIntoConstraints = true
    view.addSubview(tView)
    
    tView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    tView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
  }

  private func getSomethingFromStaticLib() -> Int {
    
  }
}

