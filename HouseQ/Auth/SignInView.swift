//
//  SignInView.swift
//  HouseQ
//
//  Created by Muhammad Ahmad on 25/08/2022.
//

import SwiftUI

struct SignInView: View {
    enum onFoucedField: Hashable {
        case username
        case password
    }
    
    @FocusState private var fousedField: onFoucedField?
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isLogin = false
    @State private var isFacebook = false
    @State private var isGoogle = false
    @State private var isRegister = false
    @State private var isForgotPassword = false
    @StateObject private var vm = CoreDataModel()
    
    

    var body: some View {
        NavigationView {
            ZStack {
                VStack{
                    Image("house3")
                        .frame(width: 100, height: 100, alignment: .center)
                        .clipShape(Circle())

                    Text("Sign in to your account")
                        .font(.title2)
                        .foregroundColor(.black)
                    VStack(alignment: .leading, spacing: 20){
                        Text("Email")
                            .foregroundColor(Color.blue)
                        TextField("muhammad.ahmad@netsoltech.com", text: $email)
                            .focused($fousedField, equals: .username)
                            .padding(.leading)
                            .frame(height: 55)
                            .frame(maxWidth: .infinity)
                            .background(Color.gray.brightness(0.4))
                            .cornerRadius(10)
                        Text("Password")
                            .foregroundColor(Color.blue)
                        SecureField("*********", text: $password)
                            .focused($fousedField, equals: .password)
                            .padding(.leading)
                            .frame(height: 55)
                            .frame(maxWidth: .infinity)
                            .background(Color.gray.brightness(0.4))
                            .cornerRadius(10)

                    }
                    .padding(25)
                    
                    NavigationLink(destination: ButtomNavigationBarView(), isActive: $isLogin) {
                        Button(action: {
                            userValdation()
                                
                        }, label: {
                            HStack {
                                Text("Sign In".uppercased())
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                                    .padding(12)
                            }.frame(width: UIScreen.screenWidth * 0.85)
                        }).buttonStyle(.borderedProminent).cornerRadius(26)
                    }
                    
                    NavigationLink(destination: ForgotPasswordView(), isActive: $isForgotPassword) {
                        Button(action: {
                                isForgotPassword = true
                                
                        }, label: {
                            HStack {
                                Text("Forgot the password?")
                                    .fontWeight(.semibold)
                                    .foregroundColor(.blue)
                                    .padding(12)
                            }.frame(width: UIScreen.screenWidth * 0.85)
                        })
                    }
                    
                    Text("or continue with")
                        .padding()
                    
                    HStack(spacing: 20){
                        NavigationLink(destination: ContentView(), isActive: $isFacebook) {
                            Button(action: {
//                                    isLogin = true
                                    
                            }, label: {
                                HStack {
                                    Text("Facebook".uppercased())
                                        .fontWeight(.semibold)
                                        .foregroundColor(.white)
                                        .padding(12)
                                }.frame(width: UIScreen.screenWidth * 0.38)
                            })
                        }
                        NavigationLink(destination: ContentView(), isActive: $isGoogle) {
                            Button(action: {
//                                    isLogin = true
                                    
                            }, label: {
                                HStack {
                                    Text("Google".uppercased())
                                        .fontWeight(.semibold)
                                        .foregroundColor(.white)
                                        .padding(12)
                                }.frame(width: UIScreen.screenWidth * 0.38)
                            })
                        }
                    }.buttonStyle(.borderedProminent)
                            
                    HStack(alignment: .center, spacing: 6){
                        Text("Don't have an account?")
                            .foregroundColor(.gray)
                        NavigationLink(destination: SignUpView(), isActive: $isRegister) {
                            Button(action: {
                                    isRegister = true
                                    
                            }, label: {
                                HStack {
                                Text("Sign up")
                                        .fontWeight(.semibold)
                                    .foregroundColor(Color.blue)
                                }
                            })
                        }
                    }.padding()
                    Spacer()
                }.background(Color.white).navigationBarHidden(true)
            }
        }.navigationBarHidden(true)
    }
    
    func userValdation(){
        let usernameIsValid = !email.isEmpty
        let passwordIsVaild = !password.isEmpty
        if usernameIsValid && passwordIsVaild{
            if(vm.userExists(email, password)){
                email = ""
                password = ""
                print("[+] User Logged In")
                isLogin = true
            }
        }
        else if usernameIsValid{
            fousedField = .password
        }
        else{
            fousedField = .username
        }
                    
        
        
        
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
