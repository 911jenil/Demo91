//
//  ContentView.swift
//  Demo9
//
//  Created by student on 20/01/25.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            Image("welcom_bg")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .frame(width:.screenWidth,height:.screenHeight)
            VStack{
                Spacer()
                
                Image("app_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60,height: 60)
                    .padding(.bottom,8);
                
                Text("welcome to our store")
                    .colorInvert()
                    .multilineTextAlignment(.center)
                    .font(.customfont(.semibold,fontSize: 48));
                
                Text("Get your grosseries as fast as one hour")
                    .colorInvert()
                    .multilineTextAlignment(.center)
                    .padding(.bottom,16)
                    .font(.customfont(.medium, fontSize: 16))
                            
                
                NavigationLink {
                Signinview()
                    } label: {
                                   Text("Get Started")
                                       .font(.customfont(.semibold, fontSize: 18))
                                       .foregroundColor(.white)
                                       .multilineTextAlignment(.center)
                                       .frame(minWidth: 0, maxWidth: .infinity, minHeight: 60, maxHeight: 60)
                                       .background(Color.primaryApp)
                                       .cornerRadius(20)
                }
                
                Spacer()
                    .frame(height: 80)
                
                
            }
            .padding(.horizontal)
            
        }
        .navigationTitle("")
        .ignoresSafeArea()
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        
    }
        }
    
     
#Preview {
    NavigationView{
        WelcomeView()
    }
}
