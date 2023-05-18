//
//  ContentView.swift
//  MeditationApp
//
//  Created by Nojood Aljuaid  on 27/10/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @State var index = 0
    var body: some View {
        VStack {
            ZStack{
                TabBar(index: $index)
                if self.index == 0 {
                    Home()
                    
                } else if self.index == 1 {
                    Audio()
                    
                }else if self.index == 2 {
                    Calendar()
                }
                else if self.index == 3 {
                    profile()
                } else {
                    EmptyView()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct TabBar : View {
    @Binding var index : Int
    var body: some View{
        VStack{
        Spacer()
        ZStack {
        Rectangle()
    .frame(width: UIScreen.main.bounds.width)
    .frame(height: 85)
    .cornerRadius(30)
    .foregroundColor(Color.purple)
                
    HStack {
                    
    HStack {
    Spacer()
                        
    Button(action : {
    self.index = 0
                        }) {
 if self.index == 0 {
 ZStack {
                                    Circle()
.frame(width: 40 , height: 40)
.foregroundColor(.white)
Image(systemName: "house")
.font(.system(size: 25))
.foregroundColor(Color.purple)
                                }
} else {
Image(systemName: "house")
.font(.system(size: 25))
    .foregroundColor(Color.white)                            }
                        }
                        Spacer()
                        
        Button(action : {
        self.index = 1
                }) {
        if self.index == 1 {
        ZStack {
        Circle()
        .frame(width: 40 , height: 40)
        .foregroundColor(.white)
                                    
        Image(systemName: "headphones")
        .font(.system(size: 25))
        .foregroundColor(Color.purple)
        }} else {
        Image(systemName: "headphones")
        .font(.system(size : 25))
        .foregroundColor(Color.white)
                                    
                                }}
                        Spacer()
                        Button(action : {
                            self.index = 2
                        }) {
                            if self.index == 2 {
                                ZStack {
                                    Circle()
                                        .frame(width: 40 , height: 40)
                                        .foregroundColor(.white)
                                    
                                    Image(systemName: "calendar")
                                        .font(.system(size: 25))
                                        .foregroundColor(Color.purple)
                                    
                                    
                                }} else {
                                    Image(systemName: "calendar")
                                         .font(.system(size : 25))
                                         .foregroundColor(Color.white)
                                                                 }}
                        Spacer()
                        Button(action : {
                            self.index = 3
                        }) {
                            if self.index == 3 {
                                ZStack {
                                    Circle()
                                        .frame(width: 40 , height: 40)
                                        .foregroundColor(.white)
                                    Image(systemName: "person")
                                        .font(.system(size: 25))
                                        .foregroundColor(Color.purple)
                                }}
                            else {
                                Image(systemName: "person")
                                     .font(.system(size : 25))
                                     .foregroundColor(Color.white)
                                                         }}
                        Spacer()
                        
                        
                    }
                }
                
                
                
                
                
            }  .edgesIgnoringSafeArea(.bottom)
                
            }
        }
    }
struct Home : View {
    @State var open = false
    @State var open2 = false
    var body: some View {
        VStack {
            HStack{
                Spacer()
                Button(action:{
                    
                }){
                    ZStack{
                        Circle()
                            .frame(width: 40 , height: 40 , alignment: .topTrailing)
                            .foregroundColor(.white)
                            .shadow(radius: 5)
                        Image(systemName: "magnifyingglass")
                            .font(.system(size: 30))
                            .foregroundColor(.purple)
                        
                    }
                }.padding()
            }
            
            
            HStack{
                Text("Home")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Spacer()
            }.padding(.leading)
            ScrollView(.horizontal , showsIndicators: false){
                
                HStack (spacing: 0 ){
                    Button(action: {
                    }){
                        ZStack {
                            Rectangle()
                                .frame(width: 100 , height: 50)
                                .cornerRadius(20)
                                .foregroundColor(Color.purple)
                            Text("Relaxing").font(.body)
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                            
                            
                            
                            
                            
                            
                        }.padding(.leading)
                    }
                    Button(action: {
                    }){
                        ZStack {
                            Rectangle()
                                .frame(width: 100 , height: 50)
                                .cornerRadius(20)
                                .foregroundColor(Color.purple)
                            Text("Power").font(.body)
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                            
                            
                            
                            
                            
                            
                        }.padding(.leading)
                    }
                    
                    
                    Button(action: {
                    }){
                        ZStack {
                            Rectangle()
                                .frame(width: 100 , height: 50)
                                .cornerRadius(20)
                                .foregroundColor(Color.purple)
                            Text("Quiet").font(.body)
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                            
                            
                            
                            
                            
                            
                        }.padding(.leading)
                    }
                    Button(action: {
                    }){
                        ZStack {
                            Rectangle()
                                .frame(width: 100 , height: 50)
                                .cornerRadius(20)
                                .foregroundColor(Color.purple)
                            Text("Relaxing").font(.body)
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                            
                            
                            
                            
                            
                            
                        }.padding(.leading)
                    }
                    
                }
                
                
            }
            ScrollView(.horizontal , showsIndicators: false){
                
                
                HStack(spacing: 10 ) {
                    Button(action: {
                        self.open.toggle()
                    }){
                        ZStack {
                            
                            Rectangle()
                                .frame(width: 350 , height: 400)
                                .cornerRadius(30)
                                .foregroundColor(.white)
                                
                                .shadow(color: Color.gray, radius: 7 )
                                
                            VStack{
                                Text("Home Meditation")
                                    .fontWeight(.medium)
                                    .font(.title)
                                    .foregroundColor(Color.purple)
                                    
                                Text("Enjoy your relaxing meditation at your home ")
                                    .foregroundColor(Color.gray)
                                    .bold()
                                   
                                    Image("women")
                                    .renderingMode(.original)
                                    .resizable()
                                    .frame(width: 200 , height: 150)
                                    .cornerRadius(20)
                                
                                    

                            }
                            
                        }.padding()
                        
                        
                    }
                    .sheet(isPresented: self.$open) {
                        ZStack{
                            
                            Image("meditate")
                                .renderingMode(.original)
                                .resizable()
                                .frame(width: UIScreen.main.bounds.width , height: 300 )
                                .scaledToFit()
                            
                            
                            ZStack {
                                Rectangle()
                                    .frame(width: UIScreen.main.bounds.width , height: 500 )
                                    .cornerRadius(30)
                                    .foregroundColor(.pink)
                                
                            }.edgesIgnoringSafeArea(.bottom)
                            
                        }
                        Spacer()
                    }.edgesIgnoringSafeArea(.top)
                    
                
                    
                    
                }
                
                
            }
                
                Spacer()
                
            }
        }
        
    }
struct Audio : View {
    var body: some View {
        Text("Audio")
    }
}


struct profile : View {
        var body : some View {
            Text("profile")
        }
    }

struct Calendar : View {
    var body : some View {
        Text("Calendar")
    }
}
