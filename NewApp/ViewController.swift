//
//  ViewController.swift
//  NewApp
//
//  Created by Кристина Максимова on 21.02.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var skyImageView: UIImageView!
    @IBOutlet weak var changeButton: UIButton!
    private var isSun = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        skyImageView.image = UIImage(systemName: "moon")
        skyImageView.tintColor = .gray
        
        changeButton.backgroundColor = .green
    }

    @IBAction func buttonDidTap(_ sender: Any) {
        if isSun {
            skyImageView.image = UIImage(systemName: "moon")
        } else {
            skyImageView.image = UIImage(systemName: "sun.max")
        }
        isSun.toggle()
    }
    
    @IBAction func buttonTouchDown(_ sender: Any) {
        print("Нажали и не оторвали")
    }
}

