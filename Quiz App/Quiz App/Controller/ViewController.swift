//
//  ViewController.swift
//  Quiz App
//
//  Created by Chris Rehagen on 12/29/18.
//  Copyright © 2018 Chris Rehagen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var progressView: UIView!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionCounter: UILabel!
    @IBOutlet weak var faceView: UIImageView!
    @IBOutlet weak var questionLabel: UILabel!
    
    //Outlet for Buttons
    
    @IBOutlet weak var optionA: UIButton!
    @IBOutlet weak var optionB: UIButton!
    @IBOutlet weak var optionC: UIButton!
    @IBOutlet weak var optionD: UIButton!
    
    let allQuestions = QuestionBank()
    var questionNumber: Int = 0
    var score: Int = 0
    var selectedAnswer: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        optionA.layer.cornerRadius = 16
        optionB.layer.cornerRadius = 16
        optionC.layer.cornerRadius = 16
        optionD.layer.cornerRadius = 16
        
        progressView.layer.cornerRadius = 6
        progressView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMaxXMaxYCorner]
        


        updateQuestion()
        updateUI()
    }


    @IBAction func answerPressed(_ sender: UIButton) {
        if sender.tag == selectedAnswer{
            print("Correct")
            score += 1
        }else{
            print("Wrong")
        }
        questionNumber += 1
        updateQuestion()
    }
    
    func updateQuestion(){
        
        allQuestions.list.shuffle()

        
//        if questionNumber < allQuestions.list.count{
        if questionNumber < 10 {
            
            
            faceView.image = UIImage(named: (allQuestions.list[questionNumber].questionImage) )
            questionLabel.text = allQuestions.list[questionNumber].question
            
            optionA.setTitle(allQuestions.list[questionNumber].optionA, for: UIControl.State.normal)
            optionB.setTitle(allQuestions.list[questionNumber].optionB, for: UIControl.State.normal)
            optionC.setTitle(allQuestions.list[questionNumber].optionC, for: UIControl.State.normal)
            optionD.setTitle(allQuestions.list[questionNumber].optionD, for: UIControl.State.normal)
            
            selectedAnswer = allQuestions.list[questionNumber].correctAnswer
        }else{
            let alert = UIAlertController(title: "\(score) / 10", message: "End of Quiz. Do you want to start over?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: {action in self.restartQuiz()})
        alert.addAction(restartAction)
        present(alert, animated: true, completion: nil)
        }
        updateUI()
    }
    
    func updateUI(){
        scoreLabel.text = "Score: \(score)"
        questionCounter.text = "\(questionNumber+1)/ \(10)"
        
        progressView.frame.size.width = (view.frame.size.width / CGFloat(allQuestions.list.count)) * CGFloat(questionNumber + 1)
        
    }
    func restartQuiz(){
        score = 0
        questionNumber = 0
        updateQuestion()
    }
    
    
}

