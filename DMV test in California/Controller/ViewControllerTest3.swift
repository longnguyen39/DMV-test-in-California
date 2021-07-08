//
//  ViewController.swift
//  DMV test in California
//
//  Created by user166398 on 6/1/20.
//  Copyright © 2020 user166398. All rights reserved.
//

import UIKit

class ViewControllerTest3: UIViewController {

    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    
    
    @IBOutlet weak var AButton: UIButton!
    @IBOutlet weak var BButton: UIButton!
    @IBOutlet weak var CButton: UIButton!
    @IBOutlet weak var DButton: UIButton!
    
    
    @IBOutlet weak var ALabel: UILabel!
    @IBOutlet weak var BLabel: UILabel!
    @IBOutlet weak var CLabel: UILabel!
    @IBOutlet weak var DLabel: UILabel!
    
    @IBOutlet weak var scoreLabel: UILabel!
    
    
    @IBOutlet weak var explanationLabel: UILabel!
    @IBOutlet weak var nextBtn: UIButton!
    
    var questionIndexNumber: Int = 0
    var score: Int = 0
    var finalScore: Double = 0
    var pickedAnswer: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        questionIndexNumber = questionIndexNumber - 1
        nextQuestion()
        defaultButtonColor()
        buttonAnimation()
        explanationLabel.text = ""
    }

    func buttonAnimation () {
        AButton.layer.cornerRadius = 10
        
        BButton.layer.cornerRadius = 10
        
        CButton.layer.cornerRadius = 10
        
        DButton.layer.cornerRadius = 10
        
        ALabel.layer.cornerRadius = 15
        ALabel.layer.shadowOpacity = 0.2
        ALabel.layer.shadowOffset = CGSize(width: 3, height: 2)
        ALabel.layer.shadowRadius = 5
        
        BLabel.layer.cornerRadius = 15
        BLabel.layer.shadowOpacity = 0.2
        BLabel.layer.shadowOffset = CGSize(width: 3, height: 2)
        BLabel.layer.shadowRadius = 5
        
        CLabel.layer.cornerRadius = 15
        CLabel.layer.shadowOpacity = 0.2
        CLabel.layer.shadowOffset = CGSize(width: 3, height: 2)
        CLabel.layer.shadowRadius = 5
        
        DLabel.layer.cornerRadius = 15
        DLabel.layer.shadowOpacity = 0.2
        DLabel.layer.shadowOffset = CGSize(width: 3, height: 2)
        DLabel.layer.shadowRadius = 5
        
        nextBtn.layer.cornerRadius = 20
        nextBtn.layer.shadowOpacity = 0.3
        nextBtn.layer.shadowOffset = CGSize(width: 2, height: 2)
        nextBtn.layer.shadowRadius = 8
  
    }
    
    
    @IBAction func dismissButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

    @IBAction func checkButton(_ sender: AnyObject) {
        if sender.tag == 1 {
            pickedAnswer = "A"
        }
        else if sender.tag == 2 {
            pickedAnswer = "B"
        }
        else if sender.tag == 3 {
            pickedAnswer = "C"
        }
        else if sender.tag == 4 {
            pickedAnswer = "D"
        }
        
        checkfunc()
        nextBtn.isHidden = false
        disableButton()
        explanationLabel.text = "Answer:  \(AnswerExplanation3().list[questionIndexNumber])"
        scrollView.setContentOffset(CGPoint(x: 0,y: 150), animated: true)
    }
    
    
    func disableButton() {
        AButton.isEnabled = false
        BButton.isEnabled = false
        CButton.isEnabled = false
        DButton.isEnabled = false
    }

    func enableButton() {
        AButton.isEnabled = true
        BButton.isEnabled = true
        CButton.isEnabled = true
        DButton.isEnabled = true
    }
    
    func UIupdate () {
        if questionIndexNumber < QuestionBank3().list.count {
        scoreLabel.text = "\(questionIndexNumber+1) / \(QuestionBank3().list.count)"
            
        }
    }
    
    func colorTrue () {
        if pickedAnswer == "A" {
            ALabel.backgroundColor = UIColor.green
        }
        else if pickedAnswer == "B" {
            BLabel.backgroundColor = UIColor.green
        }
        else if pickedAnswer == "C" {
            CLabel.backgroundColor = UIColor.green
        }
        else if pickedAnswer == "D" {
            DLabel.backgroundColor = UIColor.green
        }
    }
    
    func colorFalse () {
        if pickedAnswer == "A" {
            ALabel.backgroundColor = UIColor.red
        }
        else if pickedAnswer == "B" {
            BLabel.backgroundColor = UIColor.red
        }
        else if pickedAnswer == "C" {
            CLabel.backgroundColor = UIColor.red
        }
        else if pickedAnswer == "D" {
            DLabel.backgroundColor = UIColor.red
        }
    }
    
    func checkfunc () {
        if questionIndexNumber < QuestionBank3().list.count {
        
            if pickedAnswer == QuestionBank3().list[questionIndexNumber].answer {
            print ("Yeah!!!")
            score = score + 1
            colorTrue()
            
            }
                
        else {
            print ("You suck")
            colorFalse()
            colorCorrect()
            }
        
        }
    }
   
    
    func colorCorrect () {
        if QuestionBank3().list[questionIndexNumber].answer == "A" {
            ALabel.backgroundColor = UIColor.green
        }
        else if QuestionBank3().list[questionIndexNumber].answer == "B" {
            BLabel.backgroundColor = UIColor.green
        }
        else if QuestionBank3().list[questionIndexNumber].answer == "C" {
            CLabel.backgroundColor = UIColor.green
        }
        else if QuestionBank3().list[questionIndexNumber].answer == "D" {
            DLabel.backgroundColor = UIColor.green
        }
    }
    
    
    func defaultButtonColor () {
        ALabel.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        BLabel.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        CLabel.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        DLabel.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
        //you can use UIColor.clear to clear the backgroundColor
    }
    
    
    @IBAction func nextButton(_ sender: Any) {
        nextQuestion()
        defaultButtonColor()
        nextBtn.isHidden = true
        enableButton()
        explanationLabel.text = ""
        scrollView.setContentOffset(CGPoint(x: 0,y: 0), animated: true)
    }
        
        
    func nextQuestion () {
        questionIndexNumber = questionIndexNumber + 1
        if questionIndexNumber < QuestionBank3().list.count {
            questionLabel.text = QuestionBank3().list[questionIndexNumber].questionText
            
            ALabel.text = " A. \(QuestionBank3().list[questionIndexNumber].A)"
            BLabel.text = " B. \(QuestionBank3().list[questionIndexNumber].B)"
            CLabel.text = " C. \(QuestionBank3().list[questionIndexNumber].C)"
            DLabel.text = " D. \(QuestionBank3().list[questionIndexNumber].D)"
                
            UIupdate()
        }
            else {
                print("done")
            finalScore = (Double(score)/Double(QuestionBank3().list.count))*100
            let final: String = String(format: "%0.1f", finalScore)
            
                let alert = UIAlertController(title: "You are done!! Your score is: \(final)%, with \(score) corrected out of \(QuestionBank3().list.count)", message: "Do you want to start again?", preferredStyle: .alert)
                
                let restartAction = UIAlertAction (title: "Restart", style: .default) { (UIAlertAction) in
                    self.restart()
                }
            
                let doneAction = UIAlertAction (title: "Done", style: .default) { (UIAlertAction) in
                  self.dismissTest()
            }
                    
                
            alert.addAction(restartAction)
            alert.addAction(doneAction)
            present(alert, animated: true, completion: nil)
            }
        }
    

    func dismissTest () {
        dismiss(animated: true, completion: nil)
    }

    func restart () {
    questionIndexNumber = 0
    score = 0
    finalScore = 0
    questionIndexNumber = questionIndexNumber - 1
    nextQuestion()
    UIupdate()
    
}

}

