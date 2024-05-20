//
//  PhotoAlbum1ViewController.swift
//  AlzyCareRepo
//
//  Created by Batch-2 on 17/05/24.
//

import UIKit

class PhotoAlbum1ViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    
    var photoAlbum : PhotoAlbum1?
    
    @IBOutlet var choosePhotoButton: UIBarButtonItem!
    
    @IBOutlet var photoImageView: UIImageView!
    
    
    //    init?(coder: NSCoder, photoAlbum: PhotoAlbum1?){
    //        self.photoAlbum = photoAlbum
    //        super.init(coder: coder)
    //    }
    //
    //    required init?(coder: NSCoder) {
    //        fatalError("init(coder:) has not been implemented")
    //    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
        
        // Do any additional setup after loading the view.
    }
    func updateView() {
        guard let photoAlbum = photoAlbum else {return}
        if let imageData = photoAlbum.imageData,
           let image = UIImage(data: imageData) {
            
            photoImageView.image = image
        } else {
            photoImageView.image = nil
        }
    }
    
    @IBAction func choosePhotoButtonTapped(_ sender: Any) {
        let alertController = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        
        
        //        let choosePhotoAction = UIAlertAction(title: "Choose From Library", style: .default){_ in
        //        }
        //
        //        alertController.addAction(choosePhotoAction)
        //        let takePhotoAction = UIAlertAction(title: "Take Photo", style: .default){_ in
        //        }
        //
        //        alertController.addAction(takePhotoAction)
        
        
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            let choosePhotoAction = UIAlertAction(title: "Choose from Library", style: .default) { _ in
                imagePicker.sourceType = .photoLibrary
                self.present(imagePicker, animated: true, completion: nil)
            }
            alertController.addAction(choosePhotoAction)
        }
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            let takePhotoAction = UIAlertAction(title: "Take Photo", style: .default) { _ in
                imagePicker.sourceType = .camera
                self.present(imagePicker, animated: true, completion: nil)
            }
            alertController.addAction(takePhotoAction)
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        
        present(alertController, animated: true, completion: nil)
        
        
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let image = info[.originalImage] as? UIImage {
                print("Image picked successfully")
                if let imageData = image.jpegData(compressionQuality: 0.9) {
                    print("Image data converted successfully")
                    self.photoAlbum?.imageData = imageData
                    picker.dismiss(animated: true) {
                        self.updateView()
                    }
                } else {
                    print("Failed to convert image to data")
                    picker.dismiss(animated: true, completion: nil)
                }
            } else {
                print("No image picked")
                picker.dismiss(animated: true, completion: nil)
            }
        }

        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            print("Image picker cancelled")
            picker.dismiss(animated: true, completion: nil)
        }
    
    //    @IBAction func actionButtonTapped(_ sender: Any) {
    //        UIActivityViewController(activityItemsConfiguration: photoAlbum as! UIActivityItemsConfigurationReading)
    //    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}

