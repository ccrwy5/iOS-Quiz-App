//
//  QuestionBank.swift
//  Quiz App
//
//  Created by Chris Rehagen on 12/29/18.
//  Copyright © 2018 Chris Rehagen. All rights reserved.
//

import Foundation

class QuestionBank{
    var list = [Question]()
    
    init() {
        list.append(Question(image: "RMorrison.jpg", questionText: "Who is this founding father?", choiceA: "Ardivan Walker Rogers", choiceB: "John Wolfe Lindley", choiceC: "Robert Morrison", choiceD: "Robert Thompson Drake", answer: 3))
        
        list.append(Question(image: "AndrewWRogers.jpg", questionText: "Who is this founding father?", choiceA: "Ardivan Walker Rogers", choiceB: "John Wolfe Lindley", choiceC: "Robert Morrison", choiceD: "Andrew Watts Rogers", answer: 4))
        
        list.append(Question(image: "AWRogers.jpg", questionText: "Who is this founding father?", choiceA: "Ardivan Walker Rogers", choiceB: "John Wolfe Lindley", choiceC: "John Wolfe Lindley", choiceD: "Andrew Watts Rogers", answer: 1))
        
        list.append(Question(image: "JMWilson.jpg", questionText: "Who is this founding father?", choiceA: "Ardivan Walker Rogers", choiceB: "John Wolfe Lindley", choiceC: "John McMillan Wilson", choiceD: "Robert Thompson Drake", answer: 3))
        
        list.append(Question(image: "JWLindley", questionText: "Who is this founding father?", choiceA: "John Wolfe Lindley", choiceB: "Ardivan Walker Rogers", choiceC: "Robert Morrison", choiceD: "Robert Thompson Drake", answer: 1))
        
        list.append(Question(image: "RTDrake", questionText: "Who is this founding father?", choiceA: "Ardivan Walker Rogers", choiceB: "Robert Thompson Drake", choiceC: "Robert Morrison", choiceD: "John Wolfe Lindley", answer: 2))
        
        list.append(Question(image: "allFounders", questionText: "When was Phi Delta Theta founded?", choiceA: "1841", choiceB: "1848", choiceC: "1870", choiceD: "1808", answer: 2))
        
        list.append(Question(image: "MOAlpha", questionText: "When was Missouri Alpha founded?", choiceA: "1870", choiceB: "1848", choiceC: "1808", choiceD: "1841", answer: 1))
        
        list.append(Question(image: "miamiU", questionText: "Where was Phi Delta Theta founded? (University)", choiceA: "University of Miami (Florida)", choiceB: "Washington College", choiceC: "Miami University (Ohio)", choiceD: "Oxford College", answer: 3))
        
        list.append(Question(image: "elliotHall", questionText: "Where was Phi Delta Theta founded? (Building)", choiceA: "Elliot Hall", choiceB: "Biship Hall", choiceC: "Laws Hall", choiceD: "Williams Hall", answer: 1))
        
        list.append(Question(image: "snowballRebellion", questionText: "When was the Snowball Rebellion?", choiceA: "December 26, 1848", choiceB: "January 11, 1847", choiceC: "January 12, 1848", choiceD: "November 26, 1870", answer: 3))
        
        list.append(Question(image: "betaBellTower", questionText: "Which of the following is not part of the Miami Triad?", choiceA: "Phi Delta Theta", choiceB: "None of these", choiceC: "Sigma Chi", choiceD: "Beta Theta Pi", answer: 3))
    
    }
}
