//
//  ViewController.swift
//  StaticLibConsumerAppDemo
//
//  Created by Liam Niehus-Staab on 8/23/22.
//

import UIKit
import StaticLib

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    setup()
  }
  
  private func setup() {
    let tView = UITextView(frame: CGRect(x: 100, y: 100, width: 200, height: 100))
    tView.text = "Hello: \(getSomethingFromStaticLib())"
    tView.textColor = UIColor.black
    tView.translatesAutoresizingMaskIntoConstraints = true
    view.addSubview(tView)
    
    tView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    tView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
  }

  private func getSomethingFromStaticLib() -> String {
//    return StaticLibDemo().text // this works
    let dic = StaticLibDemo().getResource()
    return dic["title"]!!
    /*
    ^ This fails with following error:
    2022-08-23 17:09:54.872641-0600 StaticLibConsumerAppDemo[44944:2189617] StaticLib/StaticLibDemo.swift:6: Fatal error: Unexpectedly found nil while unwrapping an Optional value
     */
  }
}

