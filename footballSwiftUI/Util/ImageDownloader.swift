//
//  ImageDownloader.swift
//  footballSwiftUI
//
//  Created by 遠藤拓弥 on 2020/02/09.
//  Copyright © 2020 遠藤拓弥. All rights reserved.
//

import Foundation

class ImageDownloader : ObservableObject {
    @Published var downloadData: Data? = nil

    func downloadImage(imageURL: URL) {

        DispatchQueue.global().async {
            let data = try? Data(contentsOf: imageURL)
            DispatchQueue.main.async {
                self.downloadData = data
            }
        }
    }

    func downloadImage(url: String) {

        guard let imageURL = URL(string: url) else { return }

        DispatchQueue.global().async {
            let data = try? Data(contentsOf: imageURL)
            DispatchQueue.main.async {
                self.downloadData = data
            }
        }
    }
}
