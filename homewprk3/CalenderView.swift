//
//  CalenderView.swift
//  homewprk3
//
//  Created by User12 on 2021/12/5.
//

import SwiftUI

let WeekDayName = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]

let MonthDayNum = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

struct CalenderView: View {
    @State private var selectTime = Date()
    
    var body: some View {
        VStack{
            Text("我的行事曆")
                .font(.title)
                .bold()
            DatePicker("我的行事曆", selection: $selectTime, displayedComponents: .date)
                .datePickerStyle(GraphicalDatePickerStyle())
                .accentColor(.orange)
            EventView(selectDate: $selectTime)
        }
        
    }
}

func getDay(selectDate: Date) -> String {
    let calendar = Calendar.current
    let day = calendar.component(.day, from: selectDate)
    return String(day)
}

struct EventView: View {
    @Binding var selectDate: Date
    @State private var showForm = false
    
    var body: some View{
            VStack{
                HStack{
                    Text(getDay(selectDate: selectDate))
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .padding()
                    Spacer()
                }
                Button("新增行程"){
                    showForm = true
                }.sheet(isPresented: $showForm, content: {
                    AddEventView()
                })
            }
    }
}

struct CalenderView_Previews: PreviewProvider {
    static var previews: some View {
        CalenderView()
    }
}
