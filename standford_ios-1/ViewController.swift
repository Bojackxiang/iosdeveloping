
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
        print(sender.currentTitle)
        if(sender.currentTitle == "" || sender.currentTitle == nil){
            if let index = buttonCollection.index(of: sender){
                sender.setTitle(constentList[index], for: UIControlState.normal)
            }else{
                print("chosen card is not in the list")
            }
            
            
        }else{
            sender.setTitle("", for: UIControlState.normal);
            
        }
    }
    
    @IBOutlet weak var countLabel: UILabel!
    

}

