# News-App

## Table View와 Table view controller
<img width="684" src="https://user-images.githubusercontent.com/68676844/145227678-afb28f92-2232-4d90-b264-e1ca0234d923.png">

- Table View : Table의 크기를 지정할 수 있다.
- Table View Controller: 전체의 뷰가 하나의 테이블


## Table View
1) Table view 구성요소 결정하기
- 어떤 데이터로 구성할 것인가.
- 몇 개의 데이터로 이루어져 있는가.
- 행 클릭시 발생할 이벤트 (옵션)

2) Class 상송
- UITableViewController, UITableViewDataSource 상속
<img width="80%" src="https://user-images.githubusercontent.com/68676844/145227865-61d7a207-3670-4714-aa36-424ce13741a6.png">


- 발생한 Error는 Fix 버튼을 눌러 해결할 수 있다.


<img width="80%" src="https://user-images.githubusercontent.com/68676844/145227967-bc247f48-0edd-4917-b543-1ce8d2c2ece5.png">


3) 결과
<img height="500" src="https://user-images.githubusercontent.com/68676844/145229074-95e253b9-4721-4b24-a520-b02ecfc7607b.gif">


## Table View (Dynamic)
1) Table View Cell 추가
<img width="80%" src="https://user-images.githubusercontent.com/68676844/145255943-40625fdc-8159-49a0-bb72-79a589124faf.png">


2) Lable 추가 및 class와 연결
<img width="80%" src="https://user-images.githubusercontent.com/68676844/145256027-2abe6d4a-a52e-434d-98d4-4bfe94fa28b2.png">


- Lable은 cell 안에 추가한다.

<img width="80%" src="https://user-images.githubusercontent.com/68676844/145256179-9f20bdc6-d4ae-4d26-b131-abfe6d1d9b31.png">


- Table View를 보면 Dynamic Prototypes가 설정된 것이 보일 것이다.


3) 결과화면

추가) 타입캐스팅 as

- 부모와 자식 간의 관계를 정하는데에 있어 친자를 확인하는 용도이다.

(1) as?

- 안전한 추론 방법이다. (내가 자식이 맞니?)

(2) as!

- 강제로 추론하는 방법이다. (내가 자식이 맞아!)

