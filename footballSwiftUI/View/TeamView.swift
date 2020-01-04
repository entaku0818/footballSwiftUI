//
//  LandmarkList.swift
//  footballSwiftUI
//
//  Created by 遠藤拓弥 on 2019/09/23.
//  Copyright © 2019 遠藤拓弥. All rights reserved.
//


import SwiftUI
import Ballcap

struct TeamView: View {

    @State var talks: [Talk] = []

    let dataSource: DataSource<Talk> = Talk.order(by: "updatedAt").limit(to: 30).dataSource()

    let team: Team

    var body: some View {
        List {
            ForEach(talks) { talk in
                VStack {
                    Text(talk[\.text])
                }
            }
        }.navigationBarTitle(Text(team.name))
        .onAppear(perform: {
            self.dataSource
                .retrieve(from: { (_, snapshot, done) in
                    let task: Talk = Talk(snapshot: snapshot)!
                    done(task)
                })

                .onChanged({ (_, snapshot) in
                    self.talks = snapshot.after
                })
                .listen()
        })
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

