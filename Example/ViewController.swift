//
//  ViewController.swift
//  Example
//
//  Created by Sergei Kharlamov on 27.06.2022.
//

import UIKit
import GSKit

class ViewController: GSViewController {

    var colors: [UIColor] = [.red, .green, .blue, .orange, .purple]
    var currentIndex = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        changeBackground(withColor: colors[currentIndex])

        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleClick)))
    }

    @objc func handleClick() {
        currentIndex += 1

        if !colors.indices.contains(currentIndex) {
            currentIndex = 0
        }

        changeBackground(withColor: colors[currentIndex])
    }
}

