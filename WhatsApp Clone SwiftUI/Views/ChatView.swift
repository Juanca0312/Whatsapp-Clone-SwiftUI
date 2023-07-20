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
                Chat()
                Chat()
                Chat()
                Chat()
                Chat()
                Chat()
                Chat()
                Chat()
                Chat()
                Chat()


         

                
                
            }.listStyle(.plain)
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

struct Chat: View {
    var body: some View {
        HStack {
            Image("User")
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
            
            VStack(alignment: .leading) {
                Text("Aldair")
                HStack {
                    Image(systemName: "checkmark")
                    Text("Toma algo para")
                }
                
            }
            Spacer()
            VStack (alignment: .trailing) {
                Text("Yesterday")
                Circle()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.blue)
                    .overlay(
                        Text("2")
                            .foregroundColor(.white)
                    )
            }
        }
    }
}
