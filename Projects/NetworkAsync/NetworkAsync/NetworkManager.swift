//
//  NetworkManager.swift
//  NetworkAsync
//
//  Created by Ludovic Ollagnier on 11/12/2020.
//

import UIKit

class NetworkManager {

    static let shared = NetworkManager()

    func requestImage(completion: @escaping (UIImage?)->()) {

        let session = URLSession.shared

        //App Transport Security requires HTTPS, if not Info.plist to make exclusion
        let url = URL(string: "https://www.apple.com/v/homepod-mini/d/images/overview/hero_homepod__cnpc7icpf1aq_large_2x.png")!

//        let request = URLRequest(url: url)
//        request.httpMethod = "POST"

        let task = session.dataTask(with: url) { (data, response, error) in

            guard error == nil else {
                completion(nil)
                return
            }
            guard let data = data else {
                completion(nil)
                return
            }
            if let image = UIImage(data: data) {
                print(image)
                completion(image)
            } else {
                completion(nil)
            }
        }

        //Execute the task
        task.resume()
        print("Resume")
    }
}
