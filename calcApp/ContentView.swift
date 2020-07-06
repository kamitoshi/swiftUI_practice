//
//  ContentView.swift
//  calcApp
//
//  Created by Toshiki Kamiya on 2020/07/06.
//  Copyright © 2020 Toshiki Kamiya. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("消費税計算")
            Calculator()
        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Calculator: View{
    
    @State var price = ""
    @State var tax = ""
    @State var total = 0.0
    @State var final = 0
    
    var body: some View{
        Form{
            Section(header: Text("食費")){
                
                TextField("価格", text: self.$price).keyboardType(.numberPad)
                TextField("消費税", text: self.$tax).keyboardType(.numberPad)
                
                Button(action: {
                    self.total = Double(self.price)! + (Double(self.price)! * Double(self.tax)! / 100.0)
                    self.final = Int(self.total)
                }){
                    Text("確定")
                }
                Text("\(self.final)円")
            }
        }
    }
    
    
}
