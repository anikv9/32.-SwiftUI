//
//  Chat_List.swift
//  32. SwiftUI
//
//  Created by ani kvitsiani on 06.12.23.
//

import SwiftUI

struct Chat_List: View {
    
    struct Person: Identifiable {
        var id = UUID()
        
            var name_surname: String
            var post: String
            var time: String
            var profilePic: String
        }
    
    @State private var showLabel = false
    @State private var people: [Person] = [
        
        Person(name_surname: "Francisco Miles", post: "I went there yesterday", time: "18:14", profilePic: "image1"),
        
        Person(name_surname: "Arlene Fisher", post: "IDK what else is there to do", time: "22:31", profilePic: "image2"),
        
        Person(name_surname: "Darlene Hawkins", post: "No, I can't come tomorrow.", time: "09:18", profilePic: "image3"),
        
        Person(name_surname: "Eduardo Mckinney", post: "Go to hell", time: "Yesterday", profilePic: "image4"),
        
        Person(name_surname: "Aubrey Cooper", post: "I hope it goes well.", time: "Friday", profilePic: "image5"),
        
        Person(name_surname: "Jorge Nguyen", post: "So, what's your plan this weekend?", time: "Thursday", profilePic: "image6"),
        
        Person(name_surname: "Cody Cooper", post: "What's the progress on that task?", time: "Tuesday", profilePic: "image7"),
        
        Person(name_surname: "Kristin Pena", post: "Yeah! You're right.", time: "7/22/20", profilePic: "image8"),
        
        Person(name_surname: "Brandie Watson", post: "I went there yesterday", time: "8/19/20", profilePic: "image9"),
        
        Person(name_surname: "Stella Henry", post: "Martinique", time: "9/15/20", profilePic: "image10"),
        
    
    ]
    
    var body: some View {
        ZStack{
            
            Color(red: 0.2, green: 0.2, blue: 0.2).ignoresSafeArea()
            
            ZStack {
                VStack {
                    Text("Chat")
                        .font(
                            Font.custom("SF Pro Text", size: 17)
                                .weight(.semibold)
                        )
                        .foregroundColor(.white)
                        .padding(.top, 23)
                        .padding(.bottom, 23)
                    
                    //აქ როცა გავუწერე რო ფედინგი მინდა შეინარჩუნოს, მაინც რატო იკიდებს და spacer ჭკუაზე რატო ეწეპება ზედა ნაწილს????
                    
                    Spacer()
                    
                    ForEach(people) { person in
                        
                        HStack {
                            Image("\(person.profilePic)")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 40, height: 40)
                                .clipped()
                                .cornerRadius(40)
                            
                            VStack {
                                
                                HStack{
                                    Text("\(person.name_surname)")
                                        .font(Font.custom("SF Pro Text", size: 17))
                                        .foregroundColor(.white)
                                    
                                        .frame(maxWidth: .infinity, minHeight: 20, maxHeight: 20, alignment: .topLeading)
                                    
                                    Text("\(person.time)")
                                        .font(Font.custom("SF Pro Text", size: 12))
                                        .multilineTextAlignment(.trailing)
                                        .foregroundColor(Color(red: 0.72, green: 0.72, blue: 0.72))
                                }
                                
                                
                                Text("\(person.post)")
                                    .font(Font.custom("SF Pro Text", size: 12))
                                    .foregroundColor(Color(red: 0.61, green: 0.61, blue: 0.61))
                                
                                    .frame(maxWidth: .infinity, alignment: .topLeading)
                                
                                
                                
                                
                                
                                
                                
                            }
                            
                            
                        }
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(height: 1)
                            .background(Color(red: 0.25, green: 0.25, blue: 0.25))
                        
                            .padding(.top, 12)
                            .padding(.bottom, 12)
                        
                        
                        
                    }
                    .padding(.trailing, 16)
                    .padding(.leading, 16)
                    
                    
                }
                
                Rectangle()
                    .foregroundColor(Color(red: 0.2, green: 0.2, blue: 0.2))
                    .frame(width: 400, height: 100)
                    .padding(.top, 725)
                
                Button("Clear Chat"){
                    
                    people.removeAll()
                        
                    
                }
                
                
                .font(
                    Font.custom("Inter", size: 20)
                        .weight(.medium)
                    
                    
                    
                )
                .foregroundColor(.white)
                .frame(width: 221, height: 45, alignment: .center)
                .background(Color(red: 0.14, green: 0.15, blue: 0.38))
                .cornerRadius(6)
                .padding(.top, 725)
                
                
            }
            
            
            
            
            
            

        }
        
        
    }
}




#Preview {
    Chat_List()
}
