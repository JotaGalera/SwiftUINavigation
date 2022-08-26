import SwiftUI

struct ContentViewNavigationItem: View {
    var body: some View {
        NavigationView {
            NavigationLink("Navigate") {
                NavigationItemView()
            }
        }
    }
}

struct ContentViewNavigationItem_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewNavigationItem()
    }
}
