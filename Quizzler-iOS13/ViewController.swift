
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var processBar: UIProgressView!
    @IBOutlet weak var falseButtom: UIButton!
    @IBOutlet weak var trueButtom: UIButton!
    @IBOutlet weak var questionLabel: UILabel!
    
    
    let quiz = [
    ["Four + Two is equal to Six.","True"],
    ["Five - Three is greater than One","True"],
    ["Three + Eight is less than Ten","False"]
    ]
    
    var questionNumber = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func answerPut(_ sender: UIButton) {
        let userAnswer = sender.currentTitle //True, False
        let actualAnswer = quiz[questionNumber][1]
        if userAnswer == actualAnswer {
            print ("Right!")
        } else {
            print ("Wrong!")
        }
//        print(questionNumber,quiz.count)
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        }
        else if questionNumber + 1 == quiz.count {
            questionNumber = 0
        }
        updateUI ()
    }
    
    
    func updateUI(){
        questionLabel.text = quiz[questionNumber][0]
        
    }
}

