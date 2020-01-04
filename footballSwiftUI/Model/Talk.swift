//
//  Talk.swift
//  footballSwiftUI
//
//  Created by 遠藤拓弥 on 2020/01/04.
//  Copyright © 2020 遠藤拓弥. All rights reserved.
//


import Ballcap
import Firebase
import SwiftUI

final class Talk: Object, DataRepresentable, DataListenable, ObservableObject, Identifiable {

    typealias ID = String

    override class var name: String { "talks" }

    struct Model: Codable, Modelable {

        var text: String = ""
    }

    @Published var data: Talk.Model?

    var listener: ListenerRegistration?
}
