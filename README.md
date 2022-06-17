# 🌸 SPRING BLOG
<br>

**스프링 프레임 워크를 이용하여 MVC(Model2 Type) 패턴을 적용한 블로그**를 제작<br>
- Spring이라는 단어의 뜻 중 하나인 '봄'을 메인 테마로 선정
- 회원 관리 기능과 게시판을 CRUD를 통해 구현
- PC와 모바일 디바이스에 대응할 수 있는 반응형 홈페이지로 제작

<br>

## 1. 개발 정보
### 1) 프레임워크
- Spring Tool Suite4


### 2) 언어
- Java<br>
- html<br>
- css<br>
- JavaScript


### 3) 호스팅
- Apache Tomcat


### 4) 데이터베이스
- Oracle

<br>


## 2. 프로젝트 개요


### 1) UI 요구사항
![image](https://user-images.githubusercontent.com/93658676/172757617-9a6ca7ee-1234-48c6-bc42-32803f34ef59.png)

<br><br>

### 2) UI 시스템 구조
![image](https://user-images.githubusercontent.com/93658676/172758015-17311ad7-bcfc-479c-9e31-fb5f110e98c2.png)

<br><br>

### 3) 사이트 맵
![image](https://user-images.githubusercontent.com/93658676/172758210-2733952a-c515-47ee-942e-73bf84d795f9.png)

<br><br>

### 4) 기능별 프로세스 정의
![image](https://user-images.githubusercontent.com/93658676/172758369-058d2fff-70a1-498b-8fa4-42e17830d554.png)

<br><br>

## 3. 구현화면

### 1) 메인화면
- 로그인 여부에 따라 헤더의 메뉴 항목이 달라짐
- 로그인 여부에 따라 메인 이미지 상의 카피와 버튼이 상이함<br><br>
  - PC 화면<br><br>
![image](https://user-images.githubusercontent.com/93658676/172389426-07cd0e5e-2e18-43ce-987d-9578c7587a00.png)<br><br>
  - 모바일 화면<br><br>
![image](https://user-images.githubusercontent.com/93658676/172389701-bfaadcaa-1334-418e-b0e1-fe3bff72b975.png)<br>

<br>

---

<br>

### 2) 로그인
- Spring Security 로그인 적용<br><br>
  - PC 화면<br><br>
![image](https://user-images.githubusercontent.com/93658676/172389792-8c9f90aa-9774-45dd-ba7d-e5dc52a20262.png)<br><br>
  - 모바일 화면<br><br>
![image](https://user-images.githubusercontent.com/93658676/172389851-51d83505-19a7-4a95-9df4-d4e3f13577b1.png)<br><br>

<br>

---

<br>

### 3) 회원가입
- 입력 항목 빈칸 유효성 체크
- 회원가입 시 데이터베이스에 회원정보 저장<br><br>
  - PC 화면<br><br>
![image](https://user-images.githubusercontent.com/93658676/172390033-dd519bcb-3cc5-46c1-88ab-c3be2e6b602a.png)<br><br>
![image](https://user-images.githubusercontent.com/93658676/172390085-c659132e-6f89-4696-ae23-c9036e609e03.png)<br><br>

<br>

---

<br>

### 4) 게시판
#### (1) 게시글 목록
- 데이터 베이스에 저장된 게시글 목록 조회
- 페이지네이션 적용 (5페이지씩 끊어서 화면에 표시)
- 1페이지에서는 이전 페이지 버튼 disabled, 마지막 페이지에서는 다음 페이지 버튼 disabled <br><br>
  - PC 화면<br><br>
  ![image](https://user-images.githubusercontent.com/93658676/172390457-102c451b-fa83-4b8d-ab12-9f0291d6afc3.png)<br><br>
  - 모바일 화면<br><br>
  ![image](https://user-images.githubusercontent.com/93658676/172390506-df713ddf-f025-4122-8e8f-062f17b6c400.png)<br><br>

#### (2) 게시글 상세보기
- 클릭한 게시글 고유 아이디를 바탕으로 데이터베이스에서 게시글 정보를 불러옴
- 로그인 유저와 작성자가 일치하는 경우 수정, 삭제 버튼 표시<br><br>
  - PC 화면<br><br>
![image](https://user-images.githubusercontent.com/93658676/172390595-77199ece-450e-4092-9fc8-88cdb419f363.png)<br><br>
  - 모바일 화면<br><br>
![image](https://user-images.githubusercontent.com/93658676/172393333-cede2bd4-bf5e-4356-aa61-67a4e385df95.png)<br><br>

#### (3) 게시글 작성
- 빈칸 항목에 대한 유효성 체크<br><br>
  - PC 화면<br><br>
![image](https://user-images.githubusercontent.com/93658676/172393631-ec948411-b2c6-4705-8336-917c6473a059.png)<br><br>
  - 모바일 화면<br><br>
![image](https://user-images.githubusercontent.com/93658676/172393696-e333765c-edc9-49b7-9f3a-3b1b63b89b31.png)<br><br>

#### (4) 게시글 삭제
- 모달창으로 삭제 여부 재확인<br><br>
![image](https://user-images.githubusercontent.com/93658676/172393888-e82a4f4b-aa56-415c-8840-622045ae5cb4.png)<br><br>

<br>

---

<br>

### 5) 마이페이지
- 데이터베이스에서 로그인 유저에 대한 정보를 불러옴
- 해당 유저가 작성한 게시글과 댓글수 표시
- 로그아웃 및 회원정보 수정 기능<br><br>
  - PC 화면<br><br>
![image](https://user-images.githubusercontent.com/93658676/172390301-1a313d5b-cebd-42ce-b7de-69928634acbd.png)<br><br>
  - 모바일 화면<br><br>
![image](https://user-images.githubusercontent.com/93658676/172390373-5f8e8ac0-9acc-4dca-8080-4cac9aa9f002.png)<br><br>



