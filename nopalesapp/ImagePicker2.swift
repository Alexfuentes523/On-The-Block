//
//  ImagePicker2.swift
//  nopalesapp
//
//  Created by Abe Molina on 2/15/23.
//

import SwiftUI



//Image Picker

struct ImagePicker2: UIViewControllerRepresentable {
    @Binding var selectedImage2: UIImage?
    @Environment(\.presentationMode) var presentationMode
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(self)
    }
    
    func makeUIViewController(context: Context) -> some UIViewController {
        let picker2 = UIImagePickerController()
        picker2.delegate = context.coordinator
        return picker2
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    
    }
    
}


//Coordinator

extension ImagePicker2 {
    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        let parent: ImagePicker2
    
        init(_ parent: ImagePicker2) {
            self.parent = parent
        }
        
        
//    Here is where we get the image
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
//            This might be where the problem is
            guard let image = info[.originalImage] as? UIImage else { return }
            parent.selectedImage2 = image
            parent.presentationMode.wrappedValue.dismiss()
        }
    }
}
