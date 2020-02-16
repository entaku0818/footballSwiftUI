//
//  MatcheRow.swift
//  footballSwiftUI
//
//  Created by 遠藤拓弥 on 2020/02/09.
//  Copyright © 2020 遠藤拓弥. All rights reserved.
//

import Foundation
import SwiftUI

struct MatcheRow: View {

    let fixture: LastMatche.Fixture

    var body: some View {
        VStack{
            HStack {
                URLImageView(url: fixture.homeTeam.logo).frame(width: 50, height: 50)

                Text(fixture.homeTeam.teamName)
                Text(String(fixture.goalsHomeTeam))
                Spacer()
            }
            HStack {
                URLImageView(url: fixture.awayTeam.logo).frame(width: 50, height: 50)

                Text(fixture.awayTeam.teamName)
                Text(String(fixture.goalsAwayTeam))
                Spacer()
            }
        }

    }
}
