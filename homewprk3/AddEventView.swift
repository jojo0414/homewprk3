//
//  AddEventView.swift
//  homewprk3
//
//  Created by User12 on 2021/12/5.
//

import SwiftUI

struct AddEventView: View {
    @State private var eventName = ""
    
    var body: some View {
        Form{
            VStack
            {
                TextField("行程名稱", text: $eventName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
        }
    }
}

struct AddEventView_Previews: PreviewProvider {
    static var previews: some View {
        AddEventView()
    }
}
