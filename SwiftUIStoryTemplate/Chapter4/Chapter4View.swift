import SwiftUI

struct Chapter4View: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            Image("hallwaywhite")
                .resizable()
                .scaledToFit()
                .frame(width: 680, height: 770)
        }
    }
}

#Preview {
    Chapter4View()
}
