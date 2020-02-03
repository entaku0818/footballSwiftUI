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

class LeagueViewModel: ObservableObject {
    @Published var teams: [Team] = []

    private var teamsCancellable: Cancellable? {
        didSet { oldValue?.cancel() }
    }

    deinit {
        teamsCancellable?.cancel()
    }
    init() {
        fetchTeams()
    }

    func fetchTeams() {
        
        teamsCancellable = Session.Send(request: TeamsRequest())
            .sink(receiveCompletion: { (completion) in
                  switch completion {
                   case .finished:
                       // 成功時に行いたい処理
                       break
                  case .failure(let error):
                       break
                   }
                
            }, receiveValue: { (teams) in
                self.teams = teams.api.teams
            })
    }
    
}
