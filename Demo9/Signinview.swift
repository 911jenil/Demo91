
import SwiftUI
import iPhoneNumberField

struct signinview: View {
    var body: some View {
        NavigationStack {
            ZStack {
                
                Image("sign_in_top")
                    .resizable()
                    .scaledToFit()
                    .ignoresSafeArea()
                    .frame(width: .screenWidth,height: .screenHeight)
                    .padding(.bottom,500)
                
                VStack{
                    
                    Text("get your grocceress \nwith nector")
                        .padding(.bottom,120)
                        .padding(.trailing,170)
                        .font(.customfont(.semibold,fontSize: 24))
                        .foregroundColor(.primaryText)
                        .padding(.top,200)
                    
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.gray.opacity(0.4))
                        .padding(.horizontal,30)
                        .padding(.bottom,25)
                    
                    NavigationLink {
                        loginView()
                    } label: {
                        Text("Countinue With Signin")
                            .font(.customfont(.semibold, fontSize:20))
                            .frame(minWidth: 0,maxWidth:.infinity,minHeight:30,maxHeight: 60)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .background(Color(hex:"5383EC"))
                            .cornerRadius(20)
                    }
                    .padding(.bottom,5)
                    .padding(.horizontal,20)
                    
                    NavigationLink{
                        signupview()
                    } label: {
                        Text("countinue with signup")
                            .font(.customfont(.semibold, fontSize: 20))
                            .frame(minWidth: 0,maxWidth: .infinity,minHeight:30,maxHeight: 60)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .background(Color.primaryApp)
                            .cornerRadius(20)
                    }
                    .padding(.horizontal,20)
                    
                    Divider()
                        .frame(width: 350)
                    
                    VStack{
                        Text("or connect with social media")
                            .font(.customfont(.semibold, fontSize: 14))
                            .foregroundColor(.gray.opacity(2))
                            .padding(.top,5)
                            .padding(.bottom,10)
                            .multilineTextAlignment(.center)
                        
                        HStack
                        {
                            Image("google")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40,height: 40)
                                .padding(.trailing,5)
                            Image("facebook")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40,height: 40)
                                .padding(.trailing,5)
                            Image("apple_logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 40,height: 40)
                                .padding(.trailing,5)
                        }
                    }
                }
            }
        }
    }
}
    #Preview {
        NavigationView {
            signinview()
        }
    }

