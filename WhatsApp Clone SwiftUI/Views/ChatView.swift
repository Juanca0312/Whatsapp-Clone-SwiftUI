//
//  ChatView.swift
//  WhatsApp Clone SwiftUI
//
//  Created by Juan Carlos Hernandez Castillo on 18/07/23.
//

import SwiftUI

struct ChatView: View {
    
    var body: some View {
        
        VStack {
            SearchView()
            HStack {
                Button("Broadcast List", action: {})
                Spacer()
                Button("New Group", action: {})
            }
            .padding(.horizontal)
            
            Divider()
            List {
                
            }
        }
        
        
        
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}

struct SearchView: View {
    
    @State private var username: String = ""
    
    
    var body: some View {
        HStack {
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)
                TextField("Search", text: $username)
                    .font(.system(size: 20))
                
            }
            .padding(10)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(.gray.opacity(0.3))
                
            )
            Image(systemName: "line.horizontal.3.decrease")
                .foregroundColor(.blue)
        }.padding()
    }
}
