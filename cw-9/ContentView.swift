//
//  ContentView.swift
//  cw-9
//
//  Created by Sarah Almutairi on 06/01/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List{
            MovieRow(movieName: "Aladdin", mainCharacters: ["Aladdin", "Jasmine", "Genie"])
            MovieRow(movieName: "Coco", mainCharacters: ["Coco", "Pixar", "Grand Ma"])
            MovieRow(movieName: "Toy Story", mainCharacters: ["Buzz Lightyear", "Woody", "Andy"])
        }
    }
}

struct MovieRow: View {
    var movieName: String
    var mainCharacters: [String]
    var body: some View{
        List{
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/){
                Image("Aladdin")
                    .resizable()
                    .scaledToFit()
                    .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                VStack(alignment: .leading){
                    Text("Aladdin")
                        .font(.largeTitle)
                    Text(["Aladdin", "Jasmine", "Genie"] .joined(separator: ","))
                }
                .padding(.vertical)
            }
            
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/){
                Image("Coco")
                    .resizable()
                    .scaledToFit()
                    .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                VStack(alignment: .leading){
                    Text("Coco")
                        .font(.largeTitle)
                    Text(["Coco", "Pixar", "Grand Ma"] .joined(separator: ","))
                }
                .padding(.vertical)
            }
            
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/){
                Image("Toy Story")
                    .resizable()
                    .scaledToFit()
                    .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                VStack(alignment: .leading){
                    Text("Toy Story")
                        .font(.largeTitle)
                    Text(["Buzz Lightyear", "Woody", "Andy"] .joined(separator: ","))
                }
                .padding(.vertical)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
