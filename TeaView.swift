//
//  TeaView.swift
//  Heartea
//
//  Created by Kellie Stein on 6/4/21.
//

import SwiftUI

struct TeaView: View {
    var tea: Tea
    @State private var teaType = "Black"
    let teaTypes = ["Black", "White", "Green", "Oolong"]
    @State var teaName: String = ""
    @State var teaNotes: String = "Add some notes"
    
    var body: some View {
        VStack {
            Spacer()
            Image(tea.imgName)
                .aspectRatio(contentMode: .fit)
                .padding()
            
            Section {
                Picker("Black", selection: $teaType) {
                    ForEach(teaTypes, id: \.self) {
                        Text($0)
                    }
                }.pickerStyle(WheelPickerStyle())
            }
            
            TextField(tea.name, text: $teaName)
                .foregroundColor(.accentColor)
                .padding()
            TextEditor(text: $teaNotes)
                .foregroundColor(.accentColor)
                .padding()
            Spacer()
        }.navigationBarTitle(tea.name, displayMode: .inline)
    }
}

struct TeaView_Previews: PreviewProvider {
    static var previews: some View {
        TeaView(tea: Tea(imgName: "Tea", name: "Tea", notes: "Notes"))
    }
}
