//
//  CardView.swift
//  TattooShopApp
//
//  Created by Марк Михайлов on 18.10.2023.
//

import SwiftUI

struct CartView: View {
    
    @Environment(\.presentationMode) var mode
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    HStack {
                        Text("Cart")
                            .font(.system(size: 30))
                            .padding(.trailing)
                        
                        Spacer()
                        
                        Button {
                            mode.wrappedValue.dismiss()
                        } label: {
                            Text("3")
                                .imageScale(.large)
                                .padding()
                                .frame(width: 70, height: 90)
                                .background(.yellow.opacity(0.5))
                                .clipShape(Capsule())
                        }
                        .foregroundColor(.black)
                        
                        Button {
                            mode.wrappedValue.dismiss()
                        } label: {
                            Image(systemName: "arrow.left")
                                .imageScale(.large)
                                .padding()
                                .frame(width: 70, height: 90)
                                .overlay(RoundedRectangle(cornerRadius: 50).stroke().opacity(0.4))
                        }
                        .foregroundColor(.black)
                    }
                    .padding(30)
                    
                    // Cart Products
                    VStack {
                        ForEach(productList) { item in
                            CartProductCard(product: item)
                        }
                    }
                    .padding(.horizontal)
                    
                    // Cart Total
                    VStack(alignment: .leading) {
                        HStack {
                            Text("Delivery Amount")
                            Spacer()
                            Text("$8.00")
                                .font(.system(size: 25).weight(.semibold))
                        }
                        
                        Divider()
                        
                        Text("Total Amount")
                            .font(.system(size: 25))
                        
                        Text("USD 36.00")
                            .font(.system(size: 36).weight(.semibold))
                    }
                    .padding(30)
                    .frame(maxWidth: .infinity)
                    .background(.yellow.opacity(0.5))
                    .clipShape(.rect(cornerRadius: 30))
                    .padding()
                    
                    // Button To Make Payment
                    Button {
                        
                    } label: {
                        Text("Make Payment")
                            .frame(maxWidth: .infinity)
                            .frame(height: 80)
                            .background(.yellow.opacity(0.5))
                            .font(.system(size: 20).weight(.semibold))
                            .foregroundColor(.black)
                            .clipShape(Capsule())
                            .padding()
                        
                        
                    }
                    
                }
            }
        }
    }
}

#Preview {
    CartView()
}

// Cart Product View

struct CartProductCard: View {
    
    var product: Product
    
    var body: some View {
        HStack(alignment: .center, spacing: 20) {
            
            Image(product.image)
                .resizable()
                .scaledToFit()
                .padding()
                .frame(width: 100, height: 100)
                .background(.gray.opacity(0.1))
                .clipShape(Circle())
            
            VStack(alignment: .leading, content: {
                Text(product.name)
                    .font(.headline)
                
                Text(product.category)
                    .font(.callout)
                    .opacity(0.5)
            })
            
            Spacer()
            
            Text("$\(product.price)")
                .padding()
                .background(.yellow.opacity(0.5))
                .clipShape(Capsule())
        }
    }
}
