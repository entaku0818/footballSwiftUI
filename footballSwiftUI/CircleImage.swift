//
//  MapView.swift
//  footballSwiftUI
//
//  Created by 遠藤拓弥 on 2019/09/22.
//  Copyright © 2019 遠藤拓弥. All rights reserved.
//

import SwiftUI



struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)

    }
}

struct CircleImage_Preview: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
