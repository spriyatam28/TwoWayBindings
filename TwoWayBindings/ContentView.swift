//
//  ContentView.swift
//  TwoWayBindings
//
//  Created by Pritam on 22/05/25.
//

import SwiftUI

struct ContentView: View {
    @State private var count: Int = 0
    @State private var toggleIsOn: Bool = true
    @State private var name: String = ""
    @State private var selectedColor: Color = .red
    @State private var selectedDate: Date = Date()
    @State private var stepperValue: Int = 0
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("Press Count: \(count)")
            Button("Press Me") {
                count += 1
            }
            .fontWeight(.regular)
            .buttonStyle(.borderedProminent)
            
            Spacer()
            
            TextField("Enter a name", text: $name)
                .textFieldStyle(.roundedBorder)
            Text("Name entered: \(name)")
            
            Spacer()
            
            Toggle("Toggle is \(toggleIsOn ? "on" : "off")", isOn: $toggleIsOn)
            
            Spacer()
            
            Rectangle()
                .fill(selectedColor)
                .frame(width: 128, height: 128)
            
            ColorPicker("Pick a Rectangle color", selection: $selectedColor)
            
            Spacer()
            
            DatePicker("Date: ", selection: $selectedDate)
            Text("Selected date is : \(selectedDate.formatted(date: .abbreviated, time: .shortened))")
            
            Spacer()
            
            Stepper("Stepper value: \(stepperValue)", value: $stepperValue, in: 1...10)
            
            Spacer()
        }
        .font(.title2)
        .padding()
    }
}

#Preview {
    ContentView()
}
