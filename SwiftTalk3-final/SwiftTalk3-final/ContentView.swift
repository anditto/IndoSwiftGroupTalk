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
    
    var body: some View {
        NavigationView {
            List {
                ForEach(assets) { asset in
                    NavigationLink(
                        destination: Text(asset.title),
                        label: {
                            Text(asset.title)
                        })
                }
            }
            .navigationBarTitle("HOME", displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
