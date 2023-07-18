//
//  ContentView.swift
//  WhatsApp Clone SwiftUI
//
//  Created by Juan Carlos Hernandez Castillo on 18/07/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
            TabView {
                Text("Status")
                    .tabItem {
                        Image(systemName: "livephoto")
                        Text("Status")
                    }
                
                Text("Calls")
                    .tabItem {
                        Image(systemName: "phone.fill")
                        Text("Calls")
                    }
                
                Text("Communities")
                    .tabItem {
                        Image(systemName: "person.3")
                        Text("Communities")
                    }
                
                ChatView()
                    .badge(2)
                    .tabItem {
                        Image(systemName: "message")
                        Text("Chats")
                    }
                
                Text("Settings")
                    .tabItem {
                        Image(systemName: "gear")
                        Text("Settings")
                    }
                
            }
            
        }
        
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



