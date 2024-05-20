//
//  CreateViewController.swift
//  NewAlzyCare
//
//  Created by Batch-2 on 20/05/24.
//

import UIKit
import Photos

class CreateViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func handlePlusButtonTapped(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Create New Album", message: nil, preferredStyle: .alert)

            // Add a text field for the album name
            alertController.addTextField { (textField) in
                textField.placeholder = "Enter album name"
            }

            // Add "Create" action
            let createAction = UIAlertAction(title: "Create", style: .default) { (_) in
                if let albumName = alertController.textFields?.first?.text {
                    PHPhotoLibrary.requestAuthorization { (authorizationStatus) in
                        if authorizationStatus == .authorized {
                            PHPhotoLibrary.shared().performChanges({
                                PHAssetCollectionChangeRequest.creationRequestForAssetCollection(withTitle: albumName)
                            }, completionHandler: { (success, error) in
                                if success {
                                    print("New album created successfully: \(albumName)")
                                } else if let error = error {
                                    print("Error creating new album: \(error.localizedDescription)")
                                }
                            })
                        }
                    }
                }
            }
            alertController.addAction(createAction)
         
        
        // Add "Cancel" action
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        
        // Present the alert controller
        present(alertController, animated: true, completion: nil)
        
     
       
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
