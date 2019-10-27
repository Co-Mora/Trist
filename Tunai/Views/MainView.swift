//
//  MainView.swift
//  Tunai
//
//  Created by admin on 27/10/2019.
//  Copyright © 2019 admin. All rights reserved.
//

import Foundation

import SwiftUI


struct MainView : View {
    
    let shops = Shop.all()
    
    var body : some View {
        NavigationView {
            TabView {
                VStack(spacing: 20) {
                    Group {
                        ScrollView (.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(shops) { shop in
                                    Image(shop.imgURL)
                                        .resizable()
                                        .frame(width:80, height:80)
                                        .padding(5)
                                        .clipShape(Circle())
                                    
                                }
                            }
                        }.frame(height: 100)


                    }.padding()
                    
                    FeaturedShop()
                   
                    
                }.tabItem {
                    Image(systemName: "1.circle")
                    Text("First")
                }.tag(0)
                
                Text("Second View")
                    .tabItem {
                        Image(systemName: "2.circle")
                        Text("Second")
                    }.tag(1)
                Text("Third View")
                    .tabItem {
                        Image(systemName: "2.circle")
                        Text("Third")
                    }.tag(1)
                
            }.navigationBarTitle(Text("Tunai"), displayMode: .inline)
            
        }
    }
    
}



struct FeaturedShop: View {
    var body: some View {
        VStack {
            List() {
                VStack(alignment: .leading, spacing: 10) {
                    Group {
                        ShowPost()
                        Image("tunai-1")
                            .resizable()
                            .cornerRadius(20)
                            .frame(height: 400)
                    }
                }
            }
        }
    }
}


struct ShowPost: View {
    
    var body: some View {
        
        Group {
            HStack {
                Image("tunai")
                    .resizable()
                    .frame(width:60, height:60)
                    .clipShape(Circle())
                VStack(alignment: .leading) {
                    Text("Tunai Salon")
                        .font(.custom("Arial", size: 22))
                    .bold()
                    
                    Text("13-09-2019. 12:10 PM")
                        .foregroundColor(.secondary)
                }
                Spacer()
                Image("tunai")
                .resizable()
                .frame(width:20, height:20)
                .clipShape(Circle())
            }
            
        }
    }
}

#if DEBUG
struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

#endif
