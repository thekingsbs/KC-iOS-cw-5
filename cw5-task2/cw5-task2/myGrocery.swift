//
//  ContentView.swift
//  cw5-task2
//
//  Created by Saleh Al Sedrah on 10/08/2022.
//

import SwiftUI

struct myGrocery: View {
    
    @State var items = ["Pringles", "Skittles", "Water", "Coca-Cola","M&Ms"]
    @State var newItems = ""
    
    var body: some View {
        
        ZStack {
            
            
            VStack {
                
                Text("Grocery list")
                    .font(.system(size: 40, weight: .bold, design: .monospaced))
                    .frame(width: 320, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .background(Color.green)
                    .opacity(0.7)
                    .cornerRadius(25)
                
                Spacer()
                
                List(items, id: \.self) { name in
                    
                    HStack {
                        
                        Text(name)
                            .font(.title2)
                            .padding()
                        
                        Spacer()
                        
                        Image(name)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                            .padding()
                            
                    }
                  
                }
                
                HStack {
                    
                    Button {
                        
                        items.append(newItems)
                        
                    } label: {
                        Image(systemName: "plus")
                            .scaledToFit()
                            .frame(width: 50, height:50)
                            .foregroundColor(.white)
                            .background(Color.green)
                            .cornerRadius(10)
                            .padding()
                            
                    }
                    
                    TextField("Add an item", text: $newItems)
                        .frame(width: 200, height: 25)
                        .cornerRadius(25)
                        .padding()
                    
                    
                    Button {
                        
                        items.remove(at: 0)
                        
                    } label: {
                        Image(systemName: "minus")
                            .frame(width: 50, height: 50)
                            .foregroundColor(.white)
                            .background(Color.red)
                            .cornerRadius(5)
                            .padding()
                        
                    }
                    
                    
                }
                
                
            }
            
            
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        myGrocery()
            .previewDevice("iPhone 12 Pro")
    }
}
