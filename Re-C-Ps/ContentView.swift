//
//  MainView.swift
//  Re-C-Ps
//
//  Created by Alcides Zelaya on 12/18/20.
//

import SwiftUI

struct MainView: View {
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        TabBarView()
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
