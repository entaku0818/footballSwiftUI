//
//  LandmarkRow.swift
//  footballSwiftUI
//
//  Created by 遠藤拓弥 on 2019/09/22.
//  Copyright © 2019 遠藤拓弥. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {

    let team: Team

    var body: some View {
        HStack {
            team.image
                .resizable()
                .frame(width: 50, height: 50)

            Text(team.name)

            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {

        Group {
            LandmarkRow(team: sampleTeams[0])
            LandmarkRow(team: sampleTeams[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
        
    }
}

