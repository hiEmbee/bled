import SwiftUI

struct Chapter4View: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            Image("hallway")
                .resizable()
                .scaledToFit()
                .frame(width: 600, height: 450)
        }
    }
}

#Preview {
    Chapter4View()
}
