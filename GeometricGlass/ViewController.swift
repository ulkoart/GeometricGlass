//
//  ViewController.swift
//  GeometricGlass
//
//  Created by user on 26/11/2019.
//  Copyright © 2019 Artem Ulko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        loadProducts()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    private func loadProducts() {
        let stringUrl = "https://geometric-glass.firebaseio.com/products.json"
        guard let url = URL(string: stringUrl) else { return }
        
        let task = URLSession.shared.dataTask(with: url) {
            (data, response, error) in
            guard error == nil else {
                print (error?.localizedDescription ?? "noDesc")
                return
            }
            guard let data = data else { return }
            
            print (data)
            
            guard let productsList = try? JSONDecoder().decode([Product].self, from: data) else {
                print ("Error: can`t parse products")
                return
            }
            
            print ("products load!")
        }
        task.resume()
        
        
    }


}

