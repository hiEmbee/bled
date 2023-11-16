import SwiftUI

struct Chapter3View: View {
    var body: some View {
        ZStack {
            Color.black
            .ignoresSafeArea()
            
            Image("malayaRoom")
                .resizable()
                .frame(width: 450, height: 890)
            
        }
    }
}

#Preview {
    Chapter3View()
}
