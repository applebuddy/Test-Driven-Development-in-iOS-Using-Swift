//
//  TipCalculatorUnitTests.swift
//  TipCalculatorUnitTests
//
//  Created by MinKyeongTae on 2023/01/07.
//

// MARK: - 18. Setting Up Unit Test Proejct
// - XCTest는 Unit Test 작성에 필요한 다양한 function을 제공한다.
// - 또한 Unit Test 작성에 필요한 다양한 function을 사용하기 위해 tests class 는 XCTestCase를 상속해야한다.

import XCTest

final class TipCalculatorUnitTests: XCTestCase {
  // 각 테스트 메서드는 테스트 실행을 위해서는 test_ prefix로 시작해야 한다. (그래야 좌측에 다이아몬드 모양 테스트 실행 버튼이 생김)
  // 좌측의 다이아몬드 버튼을 누르면 테스트가 실행됨
  // 좌측 네비게이터 창의 6번째 텝에서 테스트 목록 정보를 확인할 수 있음
  func test_add_two_numbers() {
    let result = 3 + 5
    
    // Asset 메서드는 조건을 충족하지 않으면 fail 결과를 도출한다. (실패 시, 다이아몬드 버튼 빨강색 + "X" 표시)
    XCTAssertEqual(result, 10)
  }
}
