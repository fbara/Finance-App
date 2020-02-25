//
//  ContentView.swift
//  Finance App
//
//  Created by Frank Bara on 2/25/20.
//  Copyright © 2020 BaraLabs. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TopView()
            BalanceView()
            HButtonsView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct TopView: View {
    var body: some View {
        HStack {
            Text("Expenses")
                .font(.title)
                .bold()
            
            Spacer()
            
            Button(action: {
                //
            }) {
                Image(systemName: "plus")
                Text("Add")
            }
            .font(Font.body.weight(.black))
            .accentColor(.white)
            .padding(.vertical, 6)
            .padding(.horizontal)
            .background(Color.blue)
            .clipShape(Capsule())
        }
        .padding()
    }
}

struct BalanceView: View {
    var body: some View {
        VStack {
            Text("Total Balance")
                .fontWeight(.bold)
                .foregroundColor(.secondary)
            
            Text("$65.14")
                .font(.system(size: 60))
                .fontWeight(.black)
            
            Text("😨 4 days until expected income")
                .foregroundColor(Color.red)
        }
    }
}

struct ButtonOneView: View {
    var body: some View {
        HStack {
            Text("🍕 Eating out")
                .bold()
            Image(systemName: "chevron.down")
                .font(Font.body.bold())
        }
        .padding()
        .background(Color(.systemTeal).opacity(0.2))
        .clipShape(Capsule())
    }
}

struct ButtonTwoView: View {
    var body: some View {
        Image(systemName: "calendar")
            .font(Font.body.bold())
            .padding()
            .background(Color(.systemTeal).opacity(0.2))
            .clipShape(Circle())
    }
}

struct HButtonsView: View {
    var body: some View {
        HStack {
            ButtonOneView()
            Spacer()
            ButtonTwoView()
        }
        .padding()
    }
}
