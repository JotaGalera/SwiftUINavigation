import SwiftUI

struct IfElseView: View {
    @Binding var canComeBack: Bool
    
    init(canContinue: Binding<Bool>) {
        self._canComeBack = canContinue
    }
    
    var body: some View {
        ZStack {
            Color.green
            
            Button {
                canComeBack.toggle()
            } label: {
                Text("Come back")
            }

        }
    }
}
