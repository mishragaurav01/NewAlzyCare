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
        let alertController = UIAlertController(title: "Create New", message: nil, preferredStyle: .actionSheet)
        
        // Add "New Album" action
        let newAlbumAction = UIAlertAction(title: "New Album", style: .default) { (_) in
            PHPhotoLibrary.requestAuthorization { (authorizationStatus) in
                if authorizationStatus == .authorized {
                    PHPhotoLibrary.shared().performChanges({
                        PHAssetCollectionChangeRequest.creationRequestForAssetCollection(withTitle: "New Album")
                    }, completionHandler: { (success, error) in
                        if success {
                            print("New album created successfully.")
                        } else if let error = error {
                            print("Error creating new album: \(error.localizedDescription)")
                        }
                    })
                }
            }
        }
        alertController.addAction(newAlbumAction)
        
         
        
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
