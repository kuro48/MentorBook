//
//  ViewController.swift
//  MentorBook
//
//  Created by 黒川龍之介 on 2022/02/14.
//

import UIKit

class ViewController: UIViewController {
    
    var mentorArray: [Mentor] = []
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var namelabel: UILabel!
    @IBOutlet var courselabel: UILabel!
    
    var index: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.[
        mentorArray.append(Mentor(name: "ながた",imageName: "nagata.jpg",course: "iPhone"))
        mentorArray.append(Mentor(name: "りょう",imageName: "ryo.jpg",course: "Unity"))
        mentorArray.append(Mentor(name: "たいてぃ",imageName: "taithi.jpg",course: "WebS,WebD"))
        
        setUI()
    }
    
    func setUI(){
        imageView.image = mentorArray[index].getImage()
        namelabel.text = mentorArray[index].name
        courselabel.text = mentorArray[index].course
    }
    
    @IBAction func mae() {
        index = index - 1
        setUI()
        }
    
    @IBAction func tsugi() {
        index = index + 1
        setUI()
        }
    
}

