//
//  ContentView.swift
//  TipCalculator
//
//  Created by Mohammad Azam on 9/29/21.
//

import SwiftUI

// MARK: - 17. Understanding the App
// 앱의 로직이 제대로 동작하는지 TDD의 관점으로 접근해보자!

struct ContentView: View {
  @State private var total: String = ""
  @State private var tipPercentage: Double = 0.2
  @State private var tip: String?
  @State private var message: String = ""
  
  let tipCalculator = TipCalculator()
  
  var body: some View {
    NavigationView {
      VStack {
        TextField("Enter total", text: $total)
          .textFieldStyle(.roundedBorder)
        
        Picker(selection: $tipPercentage) {
          Text("10%").tag(0.1)
          Text("20%").tag(0.2)
          Text("30%").tag(0.3)
        } label: {
          EmptyView()
        }.pickerStyle(.segmented)
        
        
        Button("Calculate Tip") {
          message = ""
          tip = ""

          guard let total = Double(self.total) else {
            // 입력 값이 숫자로 변환이 불가능한 상태인 경우
            message = "Invalid Input"
            return
          }
          do {
            let result = try tipCalculator.calculate(total: total, tipPercentage: tipPercentage)
            let formatter = NumberFormatter()
            formatter.numberStyle = .currency
            tip = formatter.string(from: NSNumber(value: result))
            
          } catch TipCalculatorError.invalidInput {
            message = "Invalid Input"
          } catch {
            message = error.localizedDescription
          }
        }.padding(.top, 20)
        
        Text(message)
          .padding(.top, 50)
        
        Spacer()
        
        Text(tip ?? "")
          .font(.system(size: 54))
        
        Spacer()
          .navigationTitle("Tip Calculator")
      }.padding()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
