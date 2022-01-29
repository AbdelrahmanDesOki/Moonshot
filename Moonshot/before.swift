//
//  trial_before_proj.swift
//  Moonshot
//
//  Created by Abdelrahman  Desoki on 17/01/2022.
//

//import Foundation


//GeometryReader{
//    geo in
//    Image("abdoo")
//        .resizable()
//        .scaledToFill()
//        .frame(width: geo.size.width*0.8)
//        .frame(width: geo.size.width, height: geo.size.height )
////            .clipped()
//}



//struct CustomText: View {
//    let text: String
//
//    var body: some View {
//        Text(text)
//    }
//
//    init(_ text: String) {
//        print("Creating a new CustomText")
//        self.text = text
//    }
//}

//ScrollView(.horizontal){
//    LazyHStack(spacing: 10){
//        ForEach(0..<100){
//            CustomText("Item \($0)")
//                .font(.title)
//        }
//    }
//    .frame(maxWidth: .infinity)
//}



//NavigationView{
//    List(0..<100){ row in
//    NavigationLink{
//        Text("Desoki \(row)")
//    }label: {
//        Text("Hello user \(row)")
//            .padding()
//             }
//    }
//    .navigationTitle("SwiftUI ")
//}

//Button("Decode JSON") {
//    let input = """
//    {
//        "name": "Desoki Swift",
//        "address": {
//            "street": "vasarhelyi, Taylor Swift Avenue",
//            "city": "Budapest"
//        }
//    }
//    """
//
//    let data = Data(input.utf8)
//    let decoder = JSONDecoder()
//    if let user = try? decoder.decode(USer.self, from: data) {
//        print(user.address.street)
//    }        }



//let layout = [
//    GridItem(.adaptive(minimum: 80, maximum: 120))
//]
//var body: some View {
//
//    ScrollView {
//        LazyVGrid(columns: layout) {
//            ForEach(0..<1000) {
//                Text("Item \($0)")
//            }
//        }
//    }
//
//}
//}
