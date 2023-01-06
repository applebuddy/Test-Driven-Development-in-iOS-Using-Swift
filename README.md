# Test-Driven-Development-in-iOS-Using-Swift
Let's study about TDD(Test Driven Development) with Udemy Lecture.

- Udemy lecture link : https://www.udemy.com/course/test-driven-development-in-ios-using-swift/



## Section 2: Understanding Test Driven Development?

### 2-5. What is the TDD(Test Driven Development)?

많은 테스터가 앱을 테스트할 수 있다. 이때 테스트 기반 개발, TDD를 활용할 수 있다. TDD는 단순 테스팅하는 과정만 의미하는 것이 아닌. 앱에 대한 하나의 Architecture이다. TDD기반에서는 앱을 동작시키기 위한 코드만 작성하지 않는다. 그전에 unit test 코드를 작성할 수 있다.

#### TDD Life Cycle

failing Unit Test를 작성한다. -> Test를 통과 한다. -> Refactoring -> 다시 Unit Test를 작성 ....

### 2-6. 왜 TDD를 써야할까?

- 보다 신뢰성을 갖고 앱 코드를 작성하고 변경할 수 있다. 예를 들면 앱 개발 후 2~3년 뒤에 어떤 변경을 해야할때, 기존에 이미 작성된 Unit Test를 사용할 수도 있다. 이때 보다 신뢰성을 갖고 코드를 변경할 수 있을 것이다.
- 사람이 직접 테스트할 필요 없이 UI testing을 사용하여 User Interface를 자동화 할 수 있다. 
- Testing은 보다 나은 software architecture를 만들 수 있도록 도와준다.

### 2-7. 무엇을 Test 하고, 하지 말아야 할까?

#### DO

- Application Domain을 테스트해라. 실제 앱 로직에 대한 Test를 진행한다.
  - 은행 앱이라면, 송금하기 / 예치하기 / 이자계산 등등이 될 것이다.
- 자동화된 Unit Tests를 활용한 Application User Interface Test

#### Don't

- 개인, 팀에 의해 작성 된 코드가 아닌 그 외 프로그램에 의해 자동적으로 생성되는 Generated code
- 컴파일러에 의해 잡히는 이슈들
- dependency, third-party library code 등

### 2-8. 언제 TDD를 사용해야 할까?

- New App development (Greenfield development)
  - 새로운 프로젝트에서 적용 가능
- Legacy App development (Brownfield development)
  - 2~3년 된 앱 등 이미 개발 후 운영 중인 앱에도 적용 가능
  - 이미 개발된 코드, 신규기능 코드에 모두 적용할 수 있음.
- TDD를 사용하기 위해 App project의 Domain 이해가 필요하다.
- 해커톤 (평가용)
  - 24 ~ 48시간 만에 만들어진 프로젝트에 버그가 분명히 있을 것이다. 이런 단기 프로젝트를 마치기 위해서 타협적으로 Unit Test를 작성하여 사용할 수 있을 것이다.

### 2-9. TDD와 관련하여 흔히 착각할 수 있는 개념들

- Testing은 QA의 업무이다. -> 명백히 틀린 말이다. QA팀에서는 그들만의 다른 Testing 도구로 테스트를 진행한다. 개발자 또한 개발한 기능이 정확히 동작하는지 테스트할 필요가 있다. Testing을 QA팀의 일만으로 한정짓는것은 맞지 않다.
- TDD는 시간이 너무 오래 걸려! -> Unit Test를 작성할때 시간이 걸리는 것은 맞다. 6개월 ~ 2, 3년까지 장기적인 미래를 봤을때 이슈를 잡고, 보완하는데 큰 도움이 될 것이다.
- Client의 입장에서, TDD 구성을 위한 작업에 대한 비용 지불을 원치 않을 때가 있다. -> TDD는 결국 Application의 신뢰성, 유지보수 등을 위한 추가적인 일이므로, 공수에 같이 산정하는것이 맞는 것 같다.

### 2-10. 좋은 테스트 작성을 위한 규칙

#### 먼저, 나쁜 테스트의 예시는 무엇이 있을까?

- 하나의 테스트는 하나의 스토리가 있어야 한다. 테스트가 끝났을때 고유한 목표점이 있어야한다. 단순 인스턴스가 생성되면 생성여부를 판단하고 끝나는등의 단편적인 테스트 방식은 좋지 않다.

#### 좋은 테스팅을 위한 규칙

- Independent, 독립적이어야 한다.
  - Wi-Fi 연결, 데이터 베이스 접근 등이 불필요해야 한다.
- Automatic, 자동화가 되어야 한다.
  - 늦은 밤, 새벽에 수동적으로 개발자가 수동 테스트를 하면 불편하다.. 테스트 자동화를 활용해야 한다.
- Repeatable, 반복 가능해야 한다.
  - 수십번을 반복해야 제대로된 결과가 나온다면, 끔찍할 것이다.
  - 각각의 테스트들에 대해서 반복을 하여도 정확한 결과가 나와야 한다. 성패 여부에 관계 없이
  - Test를 통과하던, 실패하던, 각각의 테스트에 대해 반복가능한 결과를 생산할 수 있어야 한다.
- Readable, 가독성을 신경쓴다. 나만 알아볼 수 있게가 아닌, 다음 사람도 이해할 수 있도록 작성하는 것이 좋다.



## Section 3: Types of Testing

### 3-11. Unit Testing

- Unit testing이란, 기본적으로는 매우 구체적이고 적은 양의 코드에 대한 테스트를 수행하는 것이다.
- Unit testing은 메모리 상에서 빠르게 동작해야한다.
- Unit testing 간 Network를 사용하지 않는다. (인터넷에 연결될 필요가 없어야 한다.)
- Unit testing 간 데이터베이스를 건드리지 않는다. DB를 건드리면 그건 DB 테스트가 섞이게 된다.
- Unit testing 간 시스템 파일이 섞이면 안된다.



### 3-12. User Interface Testing

- 앱을 실행하고, 무언가 입력하고, 터치하고, 기능을 수행하는 과정이 정상적으로 동작하는지 테스트 코드를 작성하여 테스트 하는 것
- User Interface Test code를 작성하여 테스트 자동화를 돌릴 수 있다.



### 3-13. Integration Testing

- UI, Domain logics, Services (login, registration, image services...), Database등을 개별적으로 테스트할 수 있다.
- 위의 요소들을 통합해서 테스트하는 것을 Integration Testing이라고 한다.
- Integration Testing은 모든 요소가 정상 동작하는지 봐야하기 때문에 실제 시나리오를 염두하고 진행된다.
- 물론 Integration Testing에 Testing Data가 사용될 수 있다. 하지만, 마지막 단계에서는 Acceptance Testing을 진행한다. 이때에는 실제 하드웨어, 서버, 데이터와 함께 Test가 수행된다.



### 3-14. Acceptance Testing

- 실제 하드웨어, 서버, 데이터와 함께 수행되는 Test
- 실제 환경 속에서 실제 프로젝트의 사업 기준, 요구사항에 충족될 수 있는지를 평가한다.
- client, end user에 의해 수행된다.



### 3-15. Performance Testing

- Throughput : 특정 시간 내에 앱에서 처리되는 요청 / 트랜젝션 수
  - 시간내에 처리되는 횟수가 실제로 사용하기에 충분한 횟수인가?
- Response Time : 요청 이후 첫 응답까지의 시간이 얼마나 소요되나? 그것이 고객이 기다릴 수 있는 소요시간인가?
  - 가능한 응답시간이 짧으면 좋다. (당연)
- Tuning : 앱의 bottleneck 문제를 식별하고 제거하기 위해 사용되는 처리절차
- Benchmarking : 산업 내의 타 회사의 최고의 실 사례를 찾아서 비교하는 것



### Testinig References

- Types of Testing

  - https://hackr.io/blog/types-of-software-testing

- Performance Testing

  - #### https://www.slideshare.net/Bugraptors/performance-testing-1
