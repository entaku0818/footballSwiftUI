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
                NavigationLink(destination: TeamView(team: team)) {
                    LandmarkRow(team: team)
                }
            }
            .navigationBarTitle(Text("プレミアリーグ"))

        }
    }
}

struct TeamList_Previews: PreviewProvider {
    static var previews: some View {
        TeamList()
            .environment(\.colorScheme, .dark)
    }
}

struct TeamList_Device_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            TeamList().previewDevice(.init(rawValue: "iPhone 7"))
            TeamList().previewDevice(.init(rawValue: "iPhone 8"))
            TeamList().previewDevice(.init(rawValue: "iPhone X"))
            TeamList().previewDevice(.init(rawValue: "iPhone SE"))
        }
    }
}

