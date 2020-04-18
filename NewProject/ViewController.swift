//
//  ViewController.swift
//  NewProject
//
//  Created by Abhisekh Sahoo on 21/02/20.
//  Copyright © 2020 Abhisekh Sahoo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var number: UITextField!
    var picture:[Picture]=[]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        picture=createArray()
        // Do any additional setup after loading the view.
    }
//Code for Palindrome Check
    @IBAction func check(_ sender: Any) {
        var reversen = 0
         var rem = 0
        var n:Int = Int(number.text!) ?? 0
         var no = n
         no=n

         while n != 0 {
             rem = n%10
             reversen = reversen * 10 + rem
             n /= 10
         }
         if(no == reversen)
         {
            let sco:String="Number is palindrome"
            let alert1=UIAlertController( title: "", message:String(sco), preferredStyle: .alert)
            alert1.addAction(UIAlertAction(title: "OK", style: .default, handler:nil))
            self.present(alert1,animated: true)
         }
         else
         {
            let sco:String="Number is not a palindrome"
            let alert1=UIAlertController(title: "", message:String(sco), preferredStyle: .alert)
            alert1.addAction(UIAlertAction(title: "OK", style: .default, handler:nil))
            self.present(alert1,animated: true)
         }

    }
    
//Code for table view controller
    func createArray()->[Picture]{
        var tempPicture:[Picture]=[]
        let pic1=Picture(image:UIImage(named: "a") ?? UIImage(), title: "House in Manali")
        let pic2=Picture(image:UIImage(named: "b") ?? UIImage(), title: "Group pic in snow")
        let pic3=Picture(image:UIImage(named: "c") ?? UIImage(), title: "Farewll pic")
        let pic4=Picture(image:UIImage(named: "d") ?? UIImage(), title: "Vintage sunset")
        let pic5=Picture(image:UIImage(named: "e") ?? UIImage(), title: "BNW Keyboard")
        let pic6=Picture(image:UIImage(named: "f") ?? UIImage(), title: "Iron man")
        tempPicture.append(pic1)
        tempPicture.append(pic2)
        tempPicture.append(pic3)
        tempPicture.append(pic4)
        tempPicture.append(pic5)
        tempPicture.append(pic6)
        return tempPicture
    }
}
extension ViewController: UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return picture.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let pic=picture[indexPath.row]
        let cell=tableView.dequeueReusableCell(withIdentifier: "pictureCell") as! pictureCell
        cell.setImage()
    }
    
    
}
