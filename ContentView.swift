//
//  ContentView.swift
//  Heartea
//
//  Created by Kellie Stein on 6/4/21.
//

import SwiftUI
let sweetPink = UIColor(red: 255/255, green: 161/255, blue: 168/255, alpha: 1)

struct Tea: Identifiable {
    var id = UUID()
    var imgName: String
    var name: String
    var notes: String
}

struct ContentView: View {
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: sweetPink]
    }
    var body: some View {
        TabView() {
            TeaList()
                .tabItem {
                    Label("My Tea", systemImage: "leaf.fill")
                }
            
            Browse()
                .tabItem {
                    Label("Browse", systemImage: "bag.fill")
                }
        }
    }
}

struct TeaList: View {
    
    var tea1 = Tea(imgName: "EngBreakfast", name: "English Breakfast", notes: "")
    var tea2 = Tea(imgName: "SilverNeedle", name: "Silver Needle", notes: "")
    
    var tea3 = Tea(imgName: "MasalaChai", name: "Masala Chai", notes: "")
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    
                    NavigationLink(destination: TeaView(tea: tea1)) {
                        TeaRowView(tea: tea1)
                    }.padding()
                    
                    NavigationLink(destination: TeaView(tea: tea2)) {
                        TeaRowView(tea: tea2)
                    }.padding()
                    
                    NavigationLink(destination: TeaView(tea: tea3)) {
                        TeaRowView(tea: tea3)
                    }.padding()
                    
                }.navigationBarTitle("", displayMode: .inline)
                .navigationBarItems(leading:
                                        HStack {
                                            Text("Heartea")
                                                .fontWeight(.bold)
                                                .font(.system(size: 24, design: .rounded))
                                            Image(systemName: "heart.fill")
                                        },trailing: Button {
                                            //Action here
                                        } label: {
                                            Image(systemName: "plus")
                                        })
                .foregroundColor(.accentColor)
            }
        }
        
    }
}

struct Browse: View {
    var body: some View {
        NavigationView {
            Text("Browse")
                .padding()
                .navigationBarTitle("Browse")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
