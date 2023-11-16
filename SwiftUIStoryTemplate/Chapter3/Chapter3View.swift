import SwiftUI

struct Chapter3View: View {
    var body: some View {
        ZStack{
            Image("whitepaper")
            VStack{
                Image("Patient Files")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 400, height: 100)
                ScrollView(.horizontal){
                    HStack(spacing: 2){
                        Image("clipboard")
                    }
                }
            }
        }
    }
}

#Preview {
    Chapter3View()
}
