//
//  ViewController.swift
//  AutoLayoutStarter
//
//  Created by Derrick Park on 2019-04-17.
//  Copyright © 2019 Derrick Park. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let mainView: UIView = {
        let main = UIView()
        // important when setting contraints programmatically
        main.translatesAutoresizingMaskIntoConstraints = false
        main.backgroundColor = .green
        return main
    }()
    
    let squareButton: UIButton = {
        let butt = UIButton(type: .system)
        butt.setTitle("Square", for: .normal)
        butt.translatesAutoresizingMaskIntoConstraints = false
        butt.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        butt.addTarget(self, action: #selector(squareTapped), for: .touchUpInside)
        return butt
    }()
    
    let portraitButton: UIButton = {
        let butt = UIButton(type: .system)
        butt.setTitle("Portrait", for: .normal)
        butt.translatesAutoresizingMaskIntoConstraints = false
        butt.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        butt.addTarget(self, action: #selector(portraitTapped), for: .touchUpInside)
        return butt
    }()
    
    let landScapeButton: UIButton = {
        let butt = UIButton(type: .system)
        butt.setTitle("Landscape", for: .normal)
        butt.translatesAutoresizingMaskIntoConstraints = false
        butt.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        butt.addTarget(self, action: #selector(landscapeTapped), for: .touchUpInside)
        return butt
    }()
    
    
    
    var widthAnchor: NSLayoutConstraint?
    var heightAnchor: NSLayoutConstraint?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(mainView)
        purpleBox()
        setupLayout()
        blueBoxs()
        orangeBox()
    }
    
    fileprivate func setupLayout() {
        mainView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        mainView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        widthAnchor = mainView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7, constant: 0)
        widthAnchor?.isActive = true
        
        heightAnchor = mainView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.7, constant: 0)
        heightAnchor?.isActive = true
        
        
        let buttStackView = UIStackView(arrangedSubviews: [
                                            squareButton, portraitButton, landScapeButton])
        buttStackView.translatesAutoresizingMaskIntoConstraints = false
        buttStackView.axis = .horizontal
        buttStackView.alignment = .center
        buttStackView.distribution = .fillEqually
        
        view.addSubview(buttStackView)
        NSLayoutConstraint.activate([
            buttStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
            buttStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttStackView.heightAnchor.constraint(equalToConstant: 50),
            buttStackView.widthAnchor.constraint(equalTo: view.widthAnchor)
        ])
    }
    
    func purpleBox(){
        let purpleView = UIView()
        purpleView.translatesAutoresizingMaskIntoConstraints = false
        purpleView.backgroundColor = .purple
        
        mainView.addSubview(purpleView)
            
        purpleView.bottomAnchor.constraint(equalTo: mainView.bottomAnchor, constant: -30).isActive = true
        purpleView.leadingAnchor.constraint(equalTo: mainView.leadingAnchor, constant: 200).isActive = true
        purpleView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -25).isActive = true
        purpleView.topAnchor.constraint(equalTo: mainView.bottomAnchor, constant: -100).isActive = true
        
    }
    
    func orangeBox(){
        let orangeBox1 = UIView()
        orangeBox1.translatesAutoresizingMaskIntoConstraints = false
        orangeBox1.backgroundColor = .orange
        orangeBox1.layer.borderColor = UIColor.red.cgColor
        orangeBox1.layer.borderWidth = 10
        
        let orangeBox2 = UIView()
        orangeBox2.translatesAutoresizingMaskIntoConstraints = false
        orangeBox2.backgroundColor = .orange
        orangeBox2.layer.borderColor = UIColor.red.cgColor
        orangeBox2.layer.borderWidth = 10
        
        mainView.addSubview(orangeBox1)
        mainView.addSubview(orangeBox2)
        
        orangeBox1.rightAnchor.constraint(equalTo: mainView.rightAnchor,constant: -25).isActive = true
        orangeBox1.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 25).isActive = true
        orangeBox1.heightAnchor.constraint(equalToConstant: 70).isActive = true
        orangeBox1.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        orangeBox2.rightAnchor.constraint(equalTo: orangeBox1.rightAnchor,constant: -90).isActive = true
        orangeBox2.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 25).isActive = true
        orangeBox2.heightAnchor.constraint(equalToConstant: 70).isActive = true
        orangeBox2.widthAnchor.constraint(equalToConstant: 120).isActive = true
    }
    
    func blueBoxs() {
        
        let blueBox1 = UIView()
        blueBox1.translatesAutoresizingMaskIntoConstraints = false
        blueBox1.backgroundColor = .blue
        
        let blueBox2 = UIView()
        blueBox2.translatesAutoresizingMaskIntoConstraints = false
        blueBox2.backgroundColor = .blue
        
        let blueBox3 = UIView()
        blueBox3.translatesAutoresizingMaskIntoConstraints = false
        blueBox3.backgroundColor = .blue
        
        
        let stackView = UIStackView(arrangedSubviews: [blueBox1, blueBox2, blueBox3])
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .equalCentering
        stackView.spacing = 20
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        blueBox1.heightAnchor.constraint(equalToConstant: 70).isActive = true
        blueBox1.widthAnchor.constraint(equalTo: blueBox1.heightAnchor).isActive = true
        
        blueBox2.heightAnchor.constraint(equalToConstant: 70).isActive = true
        blueBox2.widthAnchor.constraint(equalTo: blueBox2.heightAnchor).isActive = true
        
        blueBox3.heightAnchor.constraint(equalToConstant: 70).isActive = true
        blueBox3.widthAnchor.constraint(equalTo: blueBox3.heightAnchor).isActive = true
        
        mainView.addSubview(stackView)
        stackView.leadingAnchor.constraint(equalTo: mainView.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        stackView.trailingAnchor.constraint(equalTo: mainView.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
        stackView.centerXAnchor.constraint(equalTo: mainView.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: mainView.centerYAnchor).isActive = true
        stackView.heightAnchor.constraint(equalTo: mainView.heightAnchor, multiplier: 0.7).isActive = true
    }
    
    @objc private func squareTapped() {
        view.layoutIfNeeded()
        UIView.animate(withDuration: 2.0) {
            self.widthAnchor?.isActive = false
            self.widthAnchor? = self.mainView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.9)
            self.widthAnchor?.isActive = true
            
            self.heightAnchor?.isActive = false
            self.heightAnchor? = self.mainView.heightAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.9)
            self.heightAnchor?.isActive = true
            self.view.layoutIfNeeded()
        }
    }
    
    @objc private func portraitTapped() {
        view.layoutIfNeeded()
        UIView.animate(withDuration: 2.0) {
            self.widthAnchor?.isActive = false
            self.widthAnchor? = self.mainView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.7)
            self.widthAnchor?.isActive = true
            
            self.heightAnchor?.isActive = false
            self.heightAnchor? = self.mainView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.7)
            self.heightAnchor?.isActive = true
            self.view.layoutIfNeeded()
        }
        
    }
    
    @objc private func landscapeTapped() {
        view.layoutIfNeeded()
        UIView.animate(withDuration: 2.0) {
            self.widthAnchor?.isActive = false
            self.widthAnchor? = self.mainView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.95)
            self.widthAnchor?.isActive = true
            
            self.heightAnchor?.isActive = false
            self.heightAnchor? = self.mainView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.4)
            self.heightAnchor?.isActive = true
            self.view.layoutIfNeeded()
        }
    }
}

