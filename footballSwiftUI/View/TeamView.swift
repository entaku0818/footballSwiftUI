//
//  LandmarkList.swift
//  footballSwiftUI
//
//  Created by 遠藤拓弥 on 2019/09/23.
//  Copyright © 2019 遠藤拓弥. All rights reserved.
//


import SwiftUI

struct TeamView: View {



    let team: Team
    @ObservedObject var viewModel: TeamsViewModel

    init(team:Team) {
        self.team = team
        viewModel = TeamsViewModel.init(team: team)
    }


    var body: some View {
        List(viewModel.matchs) { match in
            MatcheRow(fixture: match)
        }
        .navigationBarTitle(Text(team.name))
        .onAppear {
            self.viewModel.fetch()
        }
    }

}

//struct TeamView_Previews: PreviewProvider {
//    static var previews: some View {
//       TeamView()
//           .environment(\.colorScheme, .dark)
//    }
//}
//
//struct TeamView_Device_Previews: PreviewProvider {
//    static var previews: some View {
//        Group{
//           TeamView().previewDevice(.init(rawValue: "iPhone 7"))
//        TeamView().previewDevice(.init(rawValue: "iPhone 8"))
//         TeamView().previewDevice(.init(rawValue: "iPhone X"))
// TeamView().previewDevice(.init(rawValue: "iPhone SE"))
//        }
//    }
//}

