//
//  ViewController.swift
//  selectImage
//
//  Created by HiroshiYamaguchi on 2018/02/01.
//  Copyright © 2018年 HiroshiYamaguchi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func selectImage(_ sender: UITapGestureRecognizer) {
        //UIImageViewがタップされたときの動作
        //画像を選択する画面を用意
        let pickerController = UIImagePickerController()
        
        //画像をどこから用意するか
        pickerController.sourceType = .photoLibrary
        
        //画像が選択されたときの動作をどこに記述するかを設定
        pickerController.delegate = self
        
        //画像を選択する画面を表示する
        present(pickerController, animated: true, completion: nil)
        
        //キャンセルされた場合の動作
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController){
            //画像選択画面を閉じる
            dismiss(animated: true, completion: nil)
        }
        //画像が選択された場合の動作
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info:[String : Any]){
            guard let selectedImage = info[UIImagePickerControllerOriginalImage]as? UIImage else { fatalError("おかしい実際に返ってきたのは:\(info)") }
            //imageViewに表示
            imageView.image = selectedImage
            //画像選択画面を閉じる
            dismiss(animated: true, completion: nil)
        }

    }
    
}

