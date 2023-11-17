
import SwiftUI


import SwiftUI


struct DraggableView: ViewModifier {
    @State private var offset = CGPoint(x: 0, y: 0)
   
    
    func body(content: Content) -> some View {
        content
            .gesture(DragGesture(coordinateSpace: .global)
                .onChanged { value in
                    self.offset.x = value.location.x - value.startLocation.x
                    self.offset.y = value.location.y - value.startLocation.y
                }
            )
            .offset(x: offset.x, y: offset.y)
    }
}

extension View {
    func draggable() -> some View {
        self.modifier(DraggableView())
    }
}

struct DraggableImage: View {
    let imageName: String
    
    var body: some View {
    }
}

struct Chapter3View: View {
    let imageNames = ["clock", "cagedbird", "bear", "roses"]
    @State private var isAnimated = false
    let easeOut = Animation.easeOut
    
    var body: some View {
        NavigationStack{
            ZStack {
                Color.black
                    .ignoresSafeArea()
                
                Image("malayaRoom")
                    .resizable()
                    .frame(width: 500, height: 920)
                
                HStack {
                    ForEach(imageNames, id: \.self) { imageName in
                        DraggableImage(imageName: imageName)
                    }
                    VStack(spacing: 20) {
                        Button(action: {
                            self.isAnimated.toggle()
                            print("Button tapped")
                        }) {
                            Image("harlem")
                                .resizable()
                                .frame(width: 100, height: 100)
                                .scaleEffect(isAnimated ? 0.5 : 1)
                                .animation(easeOut)
                                .offset(x: 300, y: 200)
                        }
                    }
                }
            }
        }
    }
    
    
    struct Chapter3View_Previews: PreviewProvider {
        static var previews: some View {
            Chapter3View()
        }
    }
}
