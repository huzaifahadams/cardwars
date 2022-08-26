//
//  ContentView.swift
//  cardWars
//
//  Created by huzaifah Adams on 08/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card6"
    @State private var cpuCard = "card4"
    @State private var playerScore = 0
    @State private  var cpuScore = 0
    
    
    
    var body: some View {
        ZStack{

            Image("background").ignoresSafeArea()

            VStack{
                Spacer()
                Image("logo")
                Spacer()


                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()

                }
                Spacer()
                Button(action: {
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)

                    //generet a random number btwn 2 and 14
                    
                    //update cards
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    //update scores
                    
                    if playerRand > cpuRand{
                        playerScore  += 1
                    }
                    else if cpuRand > playerRand{
                        cpuScore += 1
                    }
                   
                    
                    
                },
                
                label:{
                    Image("dealbutton")
            
                })
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        
                        Text("Player").font(.largeTitle).fontWeight(.semibold).foregroundColor(Color.white)
                            .padding(.bottom)
                            Text(String(playerScore))
                            .font(.title)
                            .foregroundColor(Color.white)



                    }
                    VStack{
                        Text("CPU").font(.largeTitle).fontWeight(.semibold).foregroundColor(Color.white)
                            .padding(.bottom)
                            Text(String(cpuScore))
                            .font(.title)
                            .foregroundColor(Color.white)
                    }
                    Spacer()

                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
