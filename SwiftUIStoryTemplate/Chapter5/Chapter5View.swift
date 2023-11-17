import SwiftUI

struct Chapter5View: View {
    var patients = ["Olivia","Maria","Theo"]
    @State private var showDream = true
    var body: some View {

            VStack {
                Toggle ("show Dream",isOn: $showDream)
                if showDream {
                    Text ("""
                          Olivia running while calling for her husband
                          """)
                    Text ("Olivia : So, I had anouther bad dream last night.")
                    Text ("Patient 2 : I'm concerned about those things surrounding this building.")
                    Text ("Patient 3 : So why don't the we just kill them, I mean it;s not like we can't stab them with a spear or shoot them with a bow and arrow.")
                    Text ("Patient x : I know we could make theree spears to kill them infront of the gae  then use bows and arrowsto shoot them from fudrther out.")
                    
                    var weapons = ["spear, bo and arrows, mace"]
//                    let let (weapons [0]) =["shaft,knife,rope,counter balance"]
//                    
                    Text ("Three days later")
                    
                   
                    Text ("Doctor : Ladies wat are you doing?")
                    
                    Text ("Killing monsters with our  .")
                    
                    Text ("No. Those are tourist. Please stop the medication we gave youy makes you thinks you think they are monsters so you would stay.")
                    Text ("Patient 2 : So you neen drugging us with out our permission?")
                    Text("Patient 3 : So to keep us keep us abducted.")
                    
//                    @State private var patient = "Oliva"
//                    
//                    
//                    VStack{
//                        Picker("Please choose a patient", selection: $patients){
                            ForEach (patients, id: \.self) {
                                Text($0)
                            }
                        }}
                    Text("\(patients) : Shall we go home.")
                        }
                    }
                    

                    
            
                }
                
            }
        
        


#Preview {
    Chapter5View()
}
