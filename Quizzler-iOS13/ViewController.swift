
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var processBar: UIProgressView!
    @IBOutlet weak var falseButtom: UIButton!
    @IBOutlet weak var trueButtom: UIButton!
    @IBOutlet weak var questionLabel: UILabel!
    
//    let userAnswer = sender.currentTitle
//    let actualAnswer = quiz[questionNumber].answer
    let quiz = [
        Question(text: "Four + Two is equal to Six.", answer: "True"),
        Question(text: "Five - Three is greater than One", answer:"True"),
        Question(text:"Three + Eight is less than Ten", answer:"False")
    ]
    
    var questionNumber = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func answerPut(_ sender: UIButton) {
        let userAnswer = sender.currentTitle //True, False
        let actualAnswer = quiz[questionNumber].answer
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
        questionLabel.text = quiz[questionNumber].text
        
    }
}

