//
//  LandmarkDetail.swift
//  footballSwiftUI
//
//  Created by 遠藤拓弥 on 2019/09/22.
//  Copyright © 2019 遠藤拓弥. All rights reserved.
//

import SwiftUI

struct LandmarkDetail: View {
    var body: some View {


        VStack(alignment: .leading) {
            MapView()
                .frame(height: 300)

            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
            }
            .padding()

            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail()
    }
}
