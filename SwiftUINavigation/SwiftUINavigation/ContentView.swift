//
//  ContentView.swift
//  SwiftUINavigation
//
//  Created by Galera, Javier on 26/8/22.
//

import SwiftUI

struct ContentView: View {
    @State var timer: Timer? = nil
    @State var canContinueToNextView = false
    
    var body: some View {
        if canContinueToNextView {
            IfElseView(canContinue: $canContinueToNextView)
        } else {
            VStack {
                Image(systemName: "mic")
                Button {
                    canContinueToNextView.toggle()
                } label: {
                    Text("Navigate")
                }
            }
            .onAppear {
                timer = Timer.scheduledTimer(withTimeInterval: 0.1,
                                     repeats: true) { timer in
//                    DispatchQueue.main.async {
//                        for i in 0...999999999999999999 {
//                            print ("\(i)")
//                        }
//                    }
                }
            }
            .onDisappear {
                guard let timer = timer else { return }
                timer.invalidate()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
