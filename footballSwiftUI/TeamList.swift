//
//  LandmarkList.swift
//  footballSwiftUI
//
//  Created by 遠藤拓弥 on 2019/09/23.
//  Copyright © 2019 遠藤拓弥. All rights reserved.
//


import SwiftUI

struct TeamList: View {
    var body: some View {
        NavigationView {
            List(sampleTeams) { team in
                LandmarkRow(team: team)
            }
            .navigationBarTitle(Text("プレミアリーグ"))
        }
    }
}

struct TeamList_Previews: PreviewProvider {
    static var previews: some View {
        TeamList()
    }
}
