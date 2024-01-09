
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var processBar: UIProgressView!
    @IBOutlet weak var falseButtom: UIButton!
    @IBOutlet weak var trueButtom: UIButton!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var point: UILabel!
  

    var quizBrain = QuizBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func answerPut(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle! //True, False
        let userAnswerRight =  quizBrain.checkAnswer(userAnswer: userAnswer)
        
        if userAnswerRight {
            sender.backgroundColor = UIColor.green
            
            print ("Right!")
        } else {
            sender.backgroundColor = UIColor.red
            print ("Wrong!")
        }
        
        Timer.scheduledTimer(timeInterval: 0.2, target:self, selector:
                                        #selector (updateUI), userInfo:nil, repeats: false)
//        updateUI ()
        quizBrain.nextQuestion()
    }
    
    
    @objc func updateUI(){
        questionLabel.text = quizBrain.getQuestionText()
        processBar.progress = quizBrain.getProgress()
        
        trueButtom.backgroundColor = UIColor.clear
        falseButtom.backgroundColor = UIColor.clear

        point.text = "Score: \(quizBrain.getScore())"


    }
}

