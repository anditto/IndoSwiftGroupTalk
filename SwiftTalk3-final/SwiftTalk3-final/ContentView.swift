//
//  ContentView.swift
//  SwiftTalk3-final
//
//  Created by anditto-heristyo on 2021/03/27.
//

import SwiftUI

struct ContentView: View {
    
    private var assets: [Asset] = [
        Asset(id: 1, title: "MAIN POCKET", text1: "Reset in 10days"),
        Asset(id: 2, title: "COLD POCKET", text1: "Reset in 20days"),
        Asset(id: 3, title: "HOT POCKET", text1: "Reset in 30days"),
        Asset(id: 4, title: "EXCHANGE POCKET", text1: "Reset in 40days")
    ]
    
    init() {
        // Bagian Atas Navigation Bar
        let navBar = UINavigationBarAppearance()
        navBar.backgroundColor = UIColor(Color.bgColor)
        navBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        UINavigationBar.appearance().standardAppearance = navBar
        
        // Warna Back button
        UINavigationBar.appearance().tintColor = .white
        
        // Bagian Bawah List
        UITableView.appearance().backgroundColor = UIColor(Color.bgColor)
    }
    
    var body: some View {
        ZStack {
            Color.bgColor.ignoresSafeArea(.all)
            NavigationView {
                List {
                    ForEach(assets) { asset in
                        ZStack {
                            Color.pocketColor
                            VStack {
                                HStack {
                                    Text(asset.title).font(.custom("Montserrat-Light", size:16))
                                    Spacer()
                                }.padding()
                                HStack {
                                    Spacer()
                                    Text(asset.text1).font(.custom("Montserrat-Light", size: 14))
                                }.padding()
                            }
                            NavigationLink(
                                destination: Text(asset.title),
                                label: {
                                    EmptyView()
                                })
                                .opacity(0)
                            }
                        .cornerRadius(8)
                    }
                    .listRowBackground(Color.bgColor)
                    .foregroundColor(.white)
                }
                .navigationBarTitle("HOME", displayMode: .inline)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
