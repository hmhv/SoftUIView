//
//  ViewController.swift
//  Example
//
//  Created by MYUNGHOON HONG on 2020/02/08.
//  Copyright © 2020 hmhv. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleView: SoftUIView!
    @IBOutlet weak var subtitleView: SoftUIView!

    @IBOutlet weak var backwardView: SoftUIView!
    @IBOutlet weak var playView: SoftUIView!
    @IBOutlet weak var forwardView: SoftUIView!

    @IBOutlet weak var actionView: SoftUIView!
    var actionLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = #colorLiteral(red: 0.9333333333, green: 0.9333333333, blue: 0.9333333333, alpha: 1)

        setupTitleView()
        setupSubtitleView()

        setupBackwardView()
        setupForwardView()
        setupPlayView()

        setupActionView()
    }
}

extension ViewController {

    func setupTitleView() {
        titleView.type = .normal

        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .darkText
        label.font = UIFont.init(name: "AvenirNext-Medium", size: 20)

        label.text = "Soft UI View"

        titleView.setContentView(label)
        label.centerXAnchor.constraint(equalTo: titleView.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: titleView.centerYAnchor).isActive = true
    }

    func setupSubtitleView() {
        subtitleView.type = .normal
        subtitleView.isSelected = true

        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.init(name: "AvenirNext-Bold", size: 13)

        label.text = "Neumorphism"

        label.textColor = .darkText
        subtitleView.setContentView(label)
        label.centerXAnchor.constraint(equalTo: subtitleView.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: subtitleView.centerYAnchor).isActive = true
    }

    func setupBackwardView() {
        backwardView.addTarget(self, action: #selector(backwardTapHandler), for: .touchUpInside)
        backwardView.cornerRadius = 30

        let icon = UIImage(systemName: "backward.fill")
        let imageView = UIImageView(image: icon)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.tintColor = .darkGray

        backwardView.setContentView(imageView)
        imageView.centerXAnchor.constraint(equalTo: backwardView.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: backwardView.centerYAnchor).isActive = true
    }

    func setupForwardView() {
        forwardView.addTarget(self, action: #selector(forwardTapHandler), for: .touchUpInside)
        forwardView.cornerRadius = 30

        let icon = UIImage(systemName: "forward.fill")
        let imageView = UIImageView(image: icon)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.tintColor = .darkGray

        forwardView.setContentView(imageView)
        imageView.centerXAnchor.constraint(equalTo: forwardView.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: forwardView.centerYAnchor).isActive = true
    }

    func setupPlayView() {
        playView.type = .toggleButton
        playView.addTarget(self, action: #selector(playTapHandler), for: .touchDown)
        playView.cornerRadius = 30
        let playIcon = UIImage(systemName: "play.fill")
        let playImageView = UIImageView(image: playIcon)
        playImageView.translatesAutoresizingMaskIntoConstraints = false
        playImageView.tintColor = .darkGray

        let stopIcon = UIImage(systemName: "stop.fill")
        let stopImageView = UIImageView(image: stopIcon)
        stopImageView.translatesAutoresizingMaskIntoConstraints = false
        stopImageView.tintColor = .darkGray

        playView.setContentView(playImageView, selectedContentView: stopImageView, selectedTransform: nil)
        playImageView.centerXAnchor.constraint(equalTo: playView.centerXAnchor).isActive = true
        playImageView.centerYAnchor.constraint(equalTo: playView.centerYAnchor).isActive = true
        stopImageView.centerXAnchor.constraint(equalTo: playView.centerXAnchor).isActive = true
        stopImageView.centerYAnchor.constraint(equalTo: playView.centerYAnchor).isActive = true
    }

    func setupActionView() {
        subtitleView.type = .normal

        actionLabel = UILabel()
        actionLabel.translatesAutoresizingMaskIntoConstraints = false
        actionLabel.textColor = .darkText
        actionLabel.font = UIFont.init(name: "AvenirNext-Regular", size: 16)

        actionLabel.text = "Ready"

        actionView.setContentView(actionLabel)
        actionLabel.centerXAnchor.constraint(equalTo: actionView.centerXAnchor).isActive = true
        actionLabel.centerYAnchor.constraint(equalTo: actionView.centerYAnchor).isActive = true
    }

    @objc func backwardTapHandler() {
        actionLabel.text = "Backward"
    }

    @objc func forwardTapHandler() {
        actionLabel.text = "Forward"
    }

    @objc func playTapHandler() {
        actionLabel.text = playView.isSelected ? "Playing" : "Stopped"
    }

}


