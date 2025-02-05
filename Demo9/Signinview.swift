
import SwiftUI
import iPhoneNumberField
import CountryPicker

struct Signinview: View {
    @Environment(\.dismiss) private var dismiss
    @Environment(\.presentationMode) var presenttationmode
    @State private var phoneNumber = ""
    @State private var selectCountry = Country.india
    @State private var showCountrypicker = false
    
    
    var body: some View {
        NavigationStack {
            ZStack{
                
                Image("sign_in_top")
                    .resizable()
                    .scaledToFit()
                    .ignoresSafeArea()
                    .frame(width: .screenWidth,height: .screenHeight)
                    .padding(.bottom,500)
                Spacer()
                
                VStack {
                    Text("Get your groceries \nwith nectar")
                        .font(.customfont(.semibold, fontSize: 22))
                        .padding(.trailing,200)
                        .padding(.bottom,60)
                        .foregroundColor(.primaryText)
                        .multilineTextAlignment(.leading)
                        .padding(.top, 550)
                    
                    HStack(spacing: 12) {
                        Button(action: {
                            showCountrypicker = true
                        }) {
                            HStack(spacing: 4)
                            {
                                
                            }
                        }
                        
                        Rectangle()
                            .frame( width:150,height:1)
                            .foregroundColor(.gray.opacity(0.3))
                            .padding(.horizontal, 30)
                            .padding(.bottom, 25)
                        
                        
                        NavigationLink {
                            loginview()
                        } label: {
                            Text("continue with signIn")
                                .font(.customfont(.semibold, fontSize: 18))
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center)
                                .frame(minWidth: 0,maxWidth:.infinity,minHeight:60,maxHeight:60)
                                .background(Color(hex: "5383EC"))
                                .cornerRadius(20)
                        }
                        .padding(.horizontal,20)
                        .padding(.bottom, 5)
                        
                        
                        
                        //                        Divider()
                        //                            .frame(width:150)
                        NavigationLink {
                            loginview()
                        } label: {
                            VStack{
                                Text("or connect with social media")
                                    .font(.customfont(.semibold, fontSize: 16))
                                    .foregroundColor(.textTitle)
                                    .multilineTextAlignment(.center)
                                    .padding(.top, 30)
                                    .padding(.bottom, 15)
                            }
                            
                        }
                        VStack {
                            HStack{
                                BackButton {
                                    WelcomeView()
                                }
                                Spacer()
                            }
                            Spacer()
                        }
                        .padding(.top, 60)
                        .padding(.horizontal, 20)
                    }
                }
                .navigationTitle("")
                .ignoresSafeArea()
                .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true)
            }
            
        }
    }
}

    #Preview {
        NavigationView{
            Signinview()
        }
    }

