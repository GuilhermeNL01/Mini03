//
//  SwiftUIView.swift
//
//
//  Created by Guilherme Nunes Lobo on 27/11/23.
//

import SwiftUI
var totalPages = 3

struct OnboardingScreen: View {
    
    @AppStorage("currentPage") var  currentPage = 1
    var body: some View {
        ZStack{
            if currentPage == 1 {
                ScreenView(image: "Fakepng", title: "title", details: "")

            }
            if currentPage == 2 {
                ScreenView(image: "Fakepng2", title: "title2", details: "")

            }
            if currentPage == 3 {
                ScreenView(image: "Fakepng3", title: "title3", details: "")

            }
        }
    }
}

#Preview {
    OnboardingScreen()
}

struct ScreenView: View {
    
    @AppStorage("currentPage") var currentPage = 1
    
    var image: String
    var title: String
    var details: String
    
    var body: some View {
        VStack{
            HStack{
                if currentPage == 1{
                    Text("Hello World")
                        .font(.title)
                        .fontWeight(.semibold)
                        .kerning(1.4)
                } else {
                    Button(action: {
                        currentPage -= 1
                    }, label: {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.white)
                            .padding(.vertical,10)
                            .padding(.horizontal)
                            .background(Color.black.opacity(0.4))
                            .cornerRadius(10)
                    })
                }
              
                Spacer()
                
                Button(action: {
                    currentPage = 4
                }, label: {
                    Text("Skip")
                        .fontWeight(.semibold)
                        .kerning(1.2)
                })
            }.padding()
                .foregroundColor(.black)
            Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.horizontal,16)
                .frame(height: 400)
            
            
            Spacer(minLength: 80)
            
            
            Text(title)
                .font(.largeTitle)
                .fontWeight(.bold)
                .kerning(1.2)
                .padding(.top)
                .padding(.bottom, 5)
                .foregroundColor(Color("mainColor"))
            
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry.")
                .font(.body)
                .fontWeight(.regular)
                .kerning(1.2)
                .padding([.leading,.trailing] )
                .multilineTextAlignment(.center)
            
            Spacer(minLength: 0)
            HStack{
                if currentPage == 1 {
                    Color("mainColor").frame(height: 8 /  UIScreen.main.scale)
                    Color.gray.frame(height: 8 /  UIScreen.main.scale)
                    Color.gray.frame(height: 8 /  UIScreen.main.scale)
                }
                
                else if currentPage == 2 {
                    Color.gray.frame(height: 8 /  UIScreen.main.scale)
                    Color("mainColor").frame(height: 8 /  UIScreen.main.scale)
                    Color.gray.frame(height: 8 /  UIScreen.main.scale)
                }
                
                else if currentPage == 3 {
                    Color.gray.frame(height: 8 /  UIScreen.main.scale)
                    Color.gray.frame(height: 8 /  UIScreen.main.scale)
                    Color("mainColor").frame(height: 8 /  UIScreen.main.scale)
                }
                
                
               

            }
            .padding(.horizontal, 35)
            Button(action: {
                if currentPage <= totalPages{
                    currentPage += 1
                }
                
                else {
                    currentPage = 1
                }
                    
            }, label: {
                
                
                
                if currentPage ==  3{
                    Text("Next")
                        .fontWeight(.semibold)
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color("mainColor"))
                        .cornerRadius(40)
                        .padding(.horizontal, 16)
                }else{
                    Text("Next")
                        .fontWeight(.semibold)
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color("mainColor"))
                        .cornerRadius(40)
                        .padding(.horizontal, 16)
                }
               
            })
        }
    }
}
