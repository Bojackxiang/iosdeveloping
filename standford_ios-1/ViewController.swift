
import UIKit

class ViewController: UIViewController {
    
    // General Value
    let constentList = ["😈", "😄", "😈", "😄"]
    @IBOutlet var buttonCollection: [UIButton]!
    var clickedTime: Int = 0{
        didSet{
            countLabel.text = "flips : \(clickedTime)"
        }
    }
    
    // General Functions
    @IBAction func button(_ sender: UIButton) {
        clickedTime+=1
        if(sender.currentTitle != ""){
            sender.setTitle("", for: UIControlState.normal)
        }else{
            clickedTime+=1
            let index = buttonCollection.index(of: sender)
            sender.setTitle(constentList[index!], for: UIControlState.normal)
        }
    }
    
    @IBOutlet weak var countLabel: UILabel!
    

}

