//
//  ContentView.swift
//  AnotherOne
//
//  Created by CTSS Students on 16/6/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var angle : Double = 0.0
    @State var angle2 : Double = 0.0
    @State var angleSun : Double = 0.0
    @State var moveAlongCircle = false
    @State var moveAlongCircle2 = false
    @State var iAlsoWannaMove = false
    
    var body: some View {
        
        ZStack {
            
            Color.black
                .ignoresSafeArea(.all)
            ZStack {
                Image(systemName: "sun.max.fill")
                    .foregroundColor(.yellow)
                    .font(.system(size: 64))
                    .rotationEffect(.degrees(iAlsoWannaMove ? 360 : 0))
                    .onAppear(){
                        withAnimation(.linear(duration: 2).repeatForever(autoreverses: false)) {
                            self.iAlsoWannaMove.toggle()
                        }
                    }
                
                Circle()
                    .stroke(lineWidth: 4)
                    .frame(width: 200, height: 200)
                    .foregroundColor(.yellow)
                
                Circle()
                    .stroke(lineWidth: 1)
                    .frame(width: 300, height: 300)
                    .foregroundColor(.yellow)
                
                Circle()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.white)
                    .offset(y: -100)
                    .rotationEffect(.degrees(moveAlongCircle ? 360 : 0))
                    .onAppear() {
                        withAnimation(.linear(duration: 5).repeatForever(autoreverses: false)) {
                            self.moveAlongCircle.toggle()
                        }
                        
                    }
                
                Circle()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.white)
                    .offset(y: 150)
                    .rotationEffect(.degrees(moveAlongCircle2 ? 360 : 0))
                    .onAppear() {
                        withAnimation(.linear(duration: 4).repeatForever(autoreverses: false)) {
                            self.moveAlongCircle2.toggle()
                        }

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
