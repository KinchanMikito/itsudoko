//
//  ViewController.swift
//  itsudoko
//
//  Created by 金森幹斗 on 2015/04/11.
//  Copyright (c) 2015年 Mikito Kanamori. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var whenLabel:UILabel!
    @IBOutlet var whereLabel:UILabel!
    @IBOutlet var whoLabel:UILabel!
    @IBOutlet var whatLabel:UILabel!
    
    var whenArray:[String] = ["さっき","けっこう前","昨日","去年","先々週","こないだ"]
    var whereArray:[String] = ["家で","トイレで","職員室で","寿司屋で","アパレル店で","自販機の下で"]
    var whoArray:[String] = ["お父さんが","大統領が","カニが","OLが","あばれる君が","カメムシが"]
    var whatArray:[String] = ["倒れた","寝た","湧いた","荒れた","歌った","腐った"]
    
    var index:Int = 0
    
    var yarisugi:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func tapChange(){
        
        whenLabel.text = whenArray[index]
        whereLabel.text = whereArray[index]
        whoLabel.text = whoArray[index]
        whatLabel.text = whatArray[index]
        
        index++
        
        if index > 5{
            
            index = 0
            
        }
        
        yarisugi++
        
        if yarisugi > 20{
            
            var alert = UIAlertView()
            alert.title = "やり過ぎ"
            alert.message = "目を休めましょう"
            alert.addButtonWithTitle("はい")
            alert.show()
            
            yarisugi = 0
            
        }
        
    }
    @IBAction func tapReset(){
        
        whenLabel.text = "----"
        whereLabel.text = "----"
        whoLabel.text = "----"
        whatLabel.text = "----"
        
        index = 0
        
    }
    @IBAction func tapRandom(){
        
        var index1 = Int(arc4random_uniform(5))
        var index2 = Int(arc4random_uniform(5))
        var index3 = Int(arc4random_uniform(5))
        var index4 = Int(arc4random_uniform(5))
        
        whenLabel.text = whenArray[index1]
        whereLabel.text = whereArray[index2]
        whoLabel.text = whoArray[index3]
        whatLabel.text = whatArray[index4]
        
        NSLog("いつ:%d",index1)
        NSLog("どこで:%d",index2)
        NSLog("だれが:%d",index3)
        NSLog("どうした:%d",index4)
        
        yarisugi++
        
        if yarisugi > 20{
            
            var alert = UIAlertView()
            alert.title = "やり過ぎ"
            alert.message = "目を休めましょう"
            alert.addButtonWithTitle("はい")
            alert.show()
            
            yarisugi = 0
            
        }
        
    }
    
    
}

