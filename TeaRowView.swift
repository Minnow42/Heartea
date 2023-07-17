//
//  TeaRowView.swift
//  Heartea
//
//  Created by Kellie Stein on 6/4/21.
//

import SwiftUI

struct TeaRowView: View {
    var tea: Tea
    var body: some View {
        ZStack(alignment: .topLeading) {
            Image(tea.imgName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 25.0))
            
            HStack {
                Text(tea.name)
                    .foregroundColor(.accentColor)
                    .font(.system(size: 30, design: .rounded))
                    .padding(5)
            }.background(Color(.systemBackground))
            .opacity(0.9)
            .cornerRadius(10.0)
            .padding(15)
            
        }
        
    }
}

struct TeaRowView_Previews: PreviewProvider {
    static var previews: some View {
        TeaRowView(tea: Tea(imgName: "Tea", name: "Tea", notes: "Notes"))
    }
}
