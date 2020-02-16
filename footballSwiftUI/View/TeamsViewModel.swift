//
//  LeagueViewModel.swift
//  footballSwiftUI
//
//  Created by 遠藤拓弥 on 2020/02/02.
//  Copyright © 2020 遠藤拓弥. All rights reserved.
//

import Foundation
import Combine
import APIKit

class TeamsViewModel: ObservableObject {
    @Published var matchs: [LastMatche.Fixture] = []

    private var teamsCancellable: Cancellable? {
        didSet { oldValue?.cancel() }
    }

    let team:Team


    deinit {
        teamsCancellable?.cancel()
    }
    init(team:Team) {
        self.team = team
        fetch()
    }

    func fetch() {
        
        teamsCancellable = Session.Send(request: LastMatchesRequest(teamId: team.id))
            .sink(receiveCompletion: { (completion) in
                  switch completion {
                   case .finished:
                       // 成功時に行いたい処理
                       break
                  case .failure(let error):

                       break
                   }
                
            }, receiveValue: { (response) in
                self.matchs = response.api.fixtures
            })
    }
    
}
