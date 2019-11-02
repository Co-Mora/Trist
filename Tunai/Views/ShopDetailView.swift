//
//  ShopDetailView.swift
//  Tunai
//
//  Created by admin on 27/10/2019.
//  Copyright © 2019 admin. All rights reserved.
//

import SwiftUI
import UIKit

struct ShopDetailView: View {
    init() {
//        UINavigationBar.appearance().backgroundColor = .orange
//        UINavigationBar.appearance().barTintColor = .orange
//        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
//        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
    }
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: true) {
                VStack(spacing: 10) {
                    UserActivity()
                    UserFeatured()
                    
                    Group {
                        
                        VStack(alignment: .leading) {
                            Text("Promotion")
                            .font(.system(size: 22.0, weight: .bold, design: .rounded))
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack() {
                                    Section {
                                        VStack {
                                            Section {
                                                Image("images")
                                                    .resizable()
                                            }.background(Color.orange)
                                            .frame(width: 320, height: 300)
                                            Text("We have New IPhone, Xboxne")
                                                .foregroundColor(Color.white)
                                            .lineLimit(3)
                                            .padding()
                                        }.background(Color.orange)
                                        .cornerRadius(15)
                                    }
                                }
                                
                            }
                        }.padding()
                        
                    }
                }.offset(y: 30)
            }
        }
        

    }
}

struct ShopDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ShopDetailView()
    }
}

struct UserActivity: View {
    var body: some View {
        VStack {

            HStack(spacing: 50) {
                Group {
                    VStack {
                        Image(systemName: "star.fill")
                        Text("RM 41.39")
                    }
                    
                }
                
                Section {
                    VStack {
                        Image(systemName: "paperplane.fill")
                        Text("RM 41.39")
                    }
                }
                Section {
                    VStack {
                        Image(systemName: "gamecontroller.fill")
                        Text("413 Point")
                    }
                }
            }
            
            
            
        }.navigationBarTitle(Text("Tunai KM Salon").fontWeight(.regular), displayMode: .inline)
    }
}

struct UserFeatured: View {
    var body: some View {
        Group {
            HStack(spacing: 20) {
                Section {
                    VStack {
                        Image("tunai")
                            .resizable()
                            .frame(width: 70, height: 70)
                            .scaledToFill()
                        Text("App")
                    }
                    VStack {
                        Image("tunai")
                            .resizable()
                            .frame(width: 70, height: 70)
                            .scaledToFill()
                        Text("Booking")
                    }
                    VStack {
                        Image("tunai")
                            .resizable()
                            .frame(width: 70, height: 70)
                            .scaledToFill()
                        Text("Bills")
                    }
                    VStack {
                        Image("tunai")
                            .resizable()
                            .frame(width: 70, height: 70)
                            .scaledToFill()
                        Text("Message")
                    }
                    
                }
            }
        }
    }
}
