//
//  ContentView.swift
//  Re-C-Ps
//
//  Created by Alcides Zelaya on 12/18/20.
//

import SwiftUI

struct ContentView: View {
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        NavigationView {
            TabBarView()
            
        }
        .navigationBarTitle("")
        .navigationBarHidden(true)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
