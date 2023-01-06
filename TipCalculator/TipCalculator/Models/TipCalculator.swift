//
//  TipCalculator.swift
//  TipCalculator
//
//  Created by MinKyeongTae on 2023/01/07.
//

import Foundation

enum TipCalculatorError: Error {
  case invalidInput
}

// TipCalculator 객체를 Testing Bundle 내에서 사용하기 위해서 우측 Navigator의 Target Membership을 설정한다.
class TipCalculator {
  func calculate(total: Double, tipPercentage: Double) throws -> Double {
    if total < 0 {
      throw TipCalculatorError.invalidInput
    }
    return total * tipPercentage
  }
}
