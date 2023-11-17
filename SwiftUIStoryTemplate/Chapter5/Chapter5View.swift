import SwiftUI

struct Chapter5View: View {
    var body: some View {
        
        ZStack{
            Image("whitepaper")
            VStack{
                Image("Patient Files")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 400, height: 100)
                ScrollView(.horizontal){
                    HStack(spacing: 20){
                       Image("Malaya File")
                        Image("Theo File")
                        Image("Olivia File")
                    }
                }
            }

        }
    }
}

#Preview {
    Chapter5View()
}
