//
//  URLImageView.swift
//  footballSwiftUI
//
//  Created by 遠藤拓弥 on 2020/02/09.
//  Copyright © 2020 遠藤拓弥. All rights reserved.
//

import SwiftUI

struct URLImageView: View {

    let url: URL
    @ObservedObject private var imageDownloader = ImageDownloader()

    init(url: URL) {
        self.url = url
        self.imageDownloader.downloadImage(imageURL: self.url)
    }

    var body: some View {
        if let imageData = self.imageDownloader.downloadData {
            let img = UIImage(data: imageData)
            return VStack {
                Image(uiImage: img!).resizable()
            }
        } else {
            return VStack {
                Image(uiImage: UIImage(systemName: "icloud.and.arrow.down")!).resizable()
            }
        }
    }
}
