//
//  MemoryLaneViewController.swift
//  NewAlzyCare
//
//  Created by Batch-2 on 20/05/24.
//

import UIKit

class MemoryLaneViewController: UIViewController {
    required init?(coder: NSCoder) {
        
        super.init(coder: coder)
        self.tabBarItem.title = "MemoryLane"
        self.tabBarItem.image = UIImage(systemName: "brain")
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
