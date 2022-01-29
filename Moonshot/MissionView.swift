//
//  hamoo.swift
//  Moonshot
//
//  Created by Abdelrahman  Desoki on 28/01/2022.
//

import SwiftUI

struct MissionView: View {
    let mission: Mission
    let crew: [CrewMember]

    var body: some View {
        GeometryReader{ geometry in
            ScrollView{
                VStack{
                    Image(mission.image)
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: geometry.size.width * 0.6)
                        .padding(.top)
                    VStack(alignment: .leading){
                        Text("Mission Highlights")
                            .font(.title.bold())
                            .padding(.bottom, 5)
                        Text(mission.description)
                    }
                    .padding(.horizontal)
                }
                .padding(.bottom)
            }
    }
        .navigationTitle(mission.displayName)
        .navigationBarTitleDisplayMode(.inline)
        .background(.darkBackground)
}
struct CrewMember {
        let role: String
        let astronaut: Astronauts
                   }
    init(mission: Mission, astronauts: Astronauts) {
        self.mission = mission

        self.crew = mission.crew.map { member in
            if let astronaut = Astronauts[member.name] {
                return CrewMember(role: member.role, astronaut: astronaut)
            } else {
                fatalError("Missing \(member.name)")
            }
        }
    }
    
}

struct MissionView_Previews: PreviewProvider {
    static let Missions: [Mission] = Bundle.main.decode("missions.json")
    static let astronauts: Astronauts = Bundle.main.decode("astronauts.json")


    static var previews: some View {
        
        MissionView(mission: Missions[0], astronauts: Astronauts)
            .preferredColorScheme(.dark)
    }
}
