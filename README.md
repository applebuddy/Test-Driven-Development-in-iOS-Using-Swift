# Test-Driven-Development-in-iOS-Using-Swift
Let's study about TDD(Test Driven Development) with Udemy lecture.

- Udemy lecture link : https://www.udemy.com/course/test-driven-development-in-ios-using-swift/



## What is the TDD(Test Driven Development)?

많은 테스터가 앱을 테스트할 수 있다. 이때 테스트 기반 개발, TDD를 활용할 수 있다. TDD는 단순 테스팅하는 과정만 의미하는 것이 아닌. 앱에 대한 하나의 Architecture이다. TDD기반에서는 앱을 동작시키기 위한 코드만 작성하지 않는다. 그전에 unit test 코드를 작성할 수 있다.

### TDD Life Cycle

failing Unit Test를 작성한다. -> Test를 통과 한다. -> Refactoring -> 다시 Unit Test를 작성 ....

### 왜 TDD를 써야할까?

- 보다 신뢰성을 갖고 앱 코드를 작성하고 변경할 수 있다. 예를 들면 앱 개발 후 2~3년 뒤에 어떤 변경을 해야할때, 기존에 이미 작성된 Unit Test를 사용할 수도 있다. 이때 보다 신뢰성을 갖고 코드를 변경할 수 있을 것이다.
- 사람이 직접 테스트할 필요 없이 UI testing을 사용하여 User Interface를 자동화 할 수 있다. 
- Testing은 보다 나은 software architecture를 만들 수 있도록 도와준다.

### 무엇을 Test 하고, 하지 말아야 할까?

### DO

- Application Domain을 테스트해라. 실제 앱 로직에 대한 Test를 진행한다.
  - 은행 앱이라면, 송금하기 / 예치하기 / 이자계산 등등이 될 것이다.
- 자동화된 Unit Tests를 활용한 Application User Interface Test

### Don't

- 개인, 팀에 의해 작성 된 코드가 아닌 그 외 프로그램에 의해 자동적으로 생성되는 Generated code
- 컴파일러에 의해 잡히는 이슈들
- dependency, third-party library code 등



