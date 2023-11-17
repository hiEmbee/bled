import SwiftUI


struct Chapter1View: View {
    var body: some View {
            NavigationStack{
                ZStack {
                    
                    Color.black
                    
                        .ignoresSafeArea()
                    VStack {
                        Image("cover")
                            .resizable()
                            .frame(width: 500, height: 700)
                            .ignoresSafeArea()
                            .padding()
                        NavigationLink {
                            Chapter2View()
                        } label: {
                            Text("Start")
                                .bold()
                                .foregroundColor(.black)
                                .frame(width:120, height: 50, alignment: .center)
                                .background(Color.white)
                                .cornerRadius(10)
                                .bold()
                            
                        }
                    }
                }
            }
        }
    }
    
    #Preview {
        Chapter1View()
    }

