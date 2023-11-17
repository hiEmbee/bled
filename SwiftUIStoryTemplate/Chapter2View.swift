import SwiftUI

struct Chapter2View: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Image("whitepaper")
       
                VStack {
                    Text(" It is October 18th, 1931 and their is a massive economic depression in the United States. To make matters worse, zombies are wandering the streets destroying everything and everyone in their path. In the midst of this apocalypse, a group of people have found refuge at Hotel Mirage.                `                                                                   ")
                        .fontDesign(.monospaced)
                        .frame (width: 300)
                        .bold()
                        .lineSpacing(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                        .frame(alignment: .topLeading)
 
                    
                    
               
               
                    
                    HStack {
                       
                        NavigationLink() {
                            SwiftUIView()
                        } label: {
                            Text("Story")
                                .bold()
                                .foregroundColor(.white)
                                .frame(width:170, height: 50, alignment: .center)
                                .background(Color.black)
                                .cornerRadius(10)
                                .bold()
                        }
                        NavigationLink() {
                            Chapter5View()
                        } label: {
                            Text("Characters")
                                .bold()
                                .foregroundColor(.white)
                                .frame(width:170, height: 50, alignment: .center)
                                .background(Color.black)
                                .cornerRadius(10)
                                .bold()
                        }
                    }
                }
            }
        }
    }
}


#Preview {
    Chapter2View()
}
