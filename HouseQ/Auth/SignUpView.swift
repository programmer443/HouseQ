//
//  SignUpView.swift
//  HouseQ
//
//  Created by Muhammad Ahmad on 25/08/2022.
//

import SwiftUI

struct SignUpView: View {
    @State private var userName: String = ""
    @State private var email: String = ""
    @State private var phone: String = ""
    @State private var password: String = ""
    @State private var isLogin = false
    @State private var isRegister = false
    @StateObject private var vm = CoreDataModel()

    var body: some View {
        NavigationView {
            ZStack {
                VStack{
                        Image("tree")
                            .frame(width: 100, height: 100, alignment: .center)
                            .clipShape(Circle())
                    Text("Welcome")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.blue)
                    Text("Sign up for enjoy houseq")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    VStack(alignment: .leading, spacing: 20){
                        Text("Name")
                            .foregroundColor(Color.blue)
                        TextField("ali".capitalized, text: $userName)
                        Text("Phone")
                            .foregroundColor(Color.blue)
                        TextField("456544654564", text: $phone)
                            .keyboardType(.decimalPad)
                        Text("Email")
                            .foregroundColor(Color.blue)
                        TextField("muhammad.ahmad@netsoltech.com", text: $email)
                        Text("Password")
                            .foregroundColor(Color.blue)
                        SecureField("*********", text: $password)
                    }.textFieldStyle(.roundedBorder)
                    .padding(25)
                    
                    NavigationLink(destination: SignInView(), isActive: $isRegister) {
                        Button(action: {
                            if !userName.isEmpty && !phone.isEmpty && !email.isEmpty && !password.isEmpty{
                                vm.addUser(name: userName, num: phone, email: email, pass: password)
                                userName = ""
                                email = ""
                                phone = ""
                                password = ""
                                isRegister = true
                            }
                        }, label: {
                            HStack {
                                Text("Sign up".uppercased())
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                                    .padding(12)
                            }.frame(width: UIScreen.screenWidth * 0.85)
                        }).buttonStyle(.borderedProminent).cornerRadius(26)
                    }
                    
                    Text("or continue with")
                        .padding()
                    
                    HStack{
                        NavigationLink(destination: ContentView(), isActive: $isLogin) {
                            Button(action: {
//                                    isLogin = true
                                    
                            }, label: {
                                HStack {
                                    Text("Facebook".uppercased())
                                        .fontWeight(.semibold)
                                        .foregroundColor(.white)
                                        .padding(12)
                                }.frame(width: UIScreen.screenWidth * 0.4)
                            })
                        }.buttonStyle(.borderedProminent).cornerRadius(20)
                        NavigationLink(destination: ContentView(), isActive: $isLogin) {
                            Button(action: {
//                                    isLogin = true
                                    
                            }, label: {
                                HStack {
                                    Text("Google".uppercased())
                                        .fontWeight(.semibold)
                                        .foregroundColor(.white)
                                        .padding(12)
                                }.frame(width: UIScreen.screenWidth * 0.4)
                            })
                        }.buttonStyle(.borderedProminent).cornerRadius(20)
                    }
                            
                    HStack(alignment: .center, spacing: 6){
                        Text("Already have an account?")
                        NavigationLink(destination: SignInView(), isActive: $isLogin) {
                            Button(action: {
                                    isLogin = true
                                    
                            }, label: {
                                HStack {
                                Text("Sign In")
                                        .fontWeight(.semibold)
                                    .foregroundColor(Color.blue)
                                    .onTapGesture {
                                        isRegister = true
                                    }
                                }
                            })
                        }
                    }.padding()
                    Spacer()
                }.background(Color.white).navigationBarHidden(true)
            }
        }.navigationBarHidden(true)
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
