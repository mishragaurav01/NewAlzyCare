//
//  AssessmentViewController.swift
//  NewAlzyCare
//
//  Created by Batch-2 on 20/05/24.
//

import UIKit

class AssessmentViewController: UIViewController {
    required init?(coder: NSCoder) {
        
        super.init(coder: coder)
        self.tabBarItem.title = "Assessment"
        self.tabBarItem.image = UIImage(systemName: "list.clipboard")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
