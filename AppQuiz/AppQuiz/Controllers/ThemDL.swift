//
//  ThemDL.swift
//  AppQuiz
//
//  Created by Taof on 8/28/19.
//  Copyright © 2019 Taof. All rights reserved.
//

import UIKit
import Firebase

class ThemDL: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        addDuLieu()
    }
    
    func addDuLieu(){
        
        let db = Firestore.firestore()
        
        let question1 = Question(question: "Từ nào dưới đây có tiếng đồng không có nghĩa là “cùng”?", note: "từ đồng nghĩa", answer: "Thần đồng", answers: [Answer(answer: "Đồng hương", isSelected: false),
                                 Answer(answer: "Thần đồng", isSelected: false),
                                 Answer(answer: "Đồng nghĩa", isSelected: false),
                                 Answer(answer: "Đồng chí", isSelected: false)])
        
        let collection1 = Collection(level: "Cấp độ 1", subject: "Lịch sử", time: 60, questions: [question1])
        
        let collections = [collection1]
        
        for item in collections {
            db.collection("abcs").addDocument(data: item.dictionary)
        }
    }
}
