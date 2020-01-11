//
//  AddTalk.swift
//  footballSwiftUI
//
//  Created by 遠藤拓弥 on 2020/01/11.
//  Copyright © 2020 遠藤拓弥. All rights reserved.
//

import SwiftUI
import KeyboardObserving

struct AddTalk: View {

    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    @ObservedObject(initialValue: Talk()) var talk: Talk

    var body: some View {
        NavigationView {
            VStack{
                TextField("コメント", text: self.$talk[\.text])
                .navigationBarTitle("コメント")
                .navigationBarItems(trailing: Button("保存") {
                    self.talk.save()
                    self.presentationMode.wrappedValue.dismiss()
                }).padding()
            }
            .keyboardObserving()


            Spacer()
        }
    }
}

struct AddTalk_Previews: PreviewProvider {
    static var previews: some View {
        AddTalk()
    }
}
