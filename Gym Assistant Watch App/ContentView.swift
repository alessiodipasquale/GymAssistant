//
//  ContentView.swift
//  Gym Assistant Watch App
//
//  Created by Alessio Di Pasquale on 22/11/22.
//

import SwiftUI
import Foundation

// Create Date


struct ContentView: View {
    
    var body: some View {
        let dayOfWeek = getDayOfWeek()
        if dayOfWeek == 1 || dayOfWeek == 3 || dayOfWeek == 4 || dayOfWeek == 5 {
                StandardView()
        } else {
            if dayOfWeek == 2 {
                LunediView()
            } else if dayOfWeek == 6 || dayOfWeek == 7 {
                VenerdiView()
            }
        }
        
    }
}
//1 dom 2 lun 3mar 4mer 5gio 6ven 7sab

struct StandardView: View {
    var body: some View {
        VStack {
            Text("Oggi non hai allenamento!")
        }
        .padding()
    }
}

struct VenerdiView: View {
    var body: some View {
        ScrollView {
            VStack {
                Group{
                    Text("Lat Machine dietro la nuca 4*12").frame(maxWidth: .infinity, alignment: .leading)
                    Divider()
                    Text("Rematore 3*12").frame(maxWidth: .infinity, alignment: .leading)
                    Divider()
                    Text("Butterfly Reverse 2*15").frame(maxWidth: .infinity, alignment: .leading)
                    Divider()
                    Text("Alzate laterali 3*12").frame(maxWidth: .infinity, alignment: .leading)
                    Divider()
                    Group{
                        Text("Scrollate con bilanciere davanti 3*12").frame(maxWidth: .infinity, alignment: .leading)
                        Divider()
                        Text("Biceps Curl 3*12").frame(maxWidth: .infinity, alignment: .leading)
                        Divider()
                        Text("Scott Curl 3*12").frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
            }
        }
    }
}

struct LunediView: View {
    var body: some View {
        ScrollView {
            VStack {
                Group {
                    Text("Distensioni con bilanciere su panca piana 3*12").frame(maxWidth: .infinity, alignment: .leading)

                    Divider()
                    Text("Distensioni con manubri su panca inclinata 3*12").frame(maxWidth: .infinity, alignment: .leading)

                    Divider()
                    Text("Butterfly 2*15").frame(maxWidth: .infinity, alignment: .leading)
                    Divider()
                    Text("French Press 3*12").frame(maxWidth: .infinity, alignment: .leading)
                    Divider()
                    Text("Push Down 3*15").frame(maxWidth: .infinity, alignment: .leading)
                    Group{
                        Divider()
                        Text("Addominali").frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


func getDayOfWeek() -> Int {
    
    //let date = Date()
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "MM/dd/yyyy hh:mma"
    let date = dateFormatter.date(from: "12/5/2022 7:59AM")
    print(date)
    
    let myCalendar = Calendar(identifier: .gregorian)
    let weekDay = myCalendar.component(.weekday, from: date ?? Date())
    print(weekDay)
    return weekDay
}
