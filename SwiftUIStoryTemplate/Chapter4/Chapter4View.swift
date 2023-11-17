import SwiftUI

struct Chapter4View: View {
    var body: some View {
        ZStack {
            Color.gray
                .ignoresSafeArea()
            Image("hallwaywhite")
                .resizable()
                .scaledToFit()
                .frame(width: 470, height: 770)
        }
    }
}

#Preview {
    Chapter4View()
}
