# ReadMe App

![readme_long](https://github.com/ReadMeCorporation/app_ReadMe/assets/68271830/cb87d3f4-2a02-47d1-8894-371e7954dd02)

# 앱 소개
`Read Me`는 **최고의 독서 경험을 선사하는 전자책 플랫폼 앱**입니다.</br>
다양한 장르의 책을 제공하며 편리한 인터페이스로 책 읽기를 더욱 즐겁게 만들어줍니다.</br>
수많은 전자책을 한 곳에서 쉽게 찾아 읽을 수 있는 편리함과 함께 즐겨찾은 페이지를 표시하고,</br> 읽은 책에 대한 리뷰를 공유하는 등 독서를 더욱 풍부하게 즐길 수 있습니다. </br>

# 시연영상
https://www.youtube.com/watch?v=MDKwmzJHqKE

# 기술 스택
## IDE
[![Android Studio](https://img.shields.io/badge/-Android%20Studio-green?logo=android-studio&logoColor=white)](https://developer.android.com/studio)

## FrameWork
[![Flutter](https://img.shields.io/badge/-Flutter-blue?logo=flutter&logoColor=white)](https://flutter.dev)

## 사용기술
[![SQFLITE](https://img.shields.io/badge/-SQFLITE-blue?logo=flutter&logoColor=white)](https://pub.dev/packages/sqflite)
[![RiverPod](https://img.shields.io/badge/-RiverPod-blue?logo=flutter&logoColor=white)](https://pub.dev/packages/riverpod)
[![BootPay](https://img.shields.io/badge/-BootPay-yellow?logo=bootpay&logoColor=white)](https://www.bootpay.co.kr/)
[![Freezed](https://img.shields.io/badge/-Freezed-brightgreen?logo=dart&logoColor=white)](https://pub.dev/packages/freezed)
[![Firebase](https://img.shields.io/badge/-Firebase-yellow?logo=firebase&logoColor=white)](https://firebase.google.com/)
[![OAuth](https://img.shields.io/badge/-OAuth-blue?logo=oauth&logoColor=white)](https://oauth.net/)

## 협업 툴
[![Figma](https://img.shields.io/badge/-Figma-purple?logo=figma&logoColor=white)](https://www.figma.com)
[![Notion](https://img.shields.io/badge/-Notion-black?logo=notion&logoColor=white)](https://www.notion.so)
[![Git](https://img.shields.io/badge/-Git-red?logo=git&logoColor=white)](https://git-scm.com)
[![GitHub](https://img.shields.io/badge/-GitHub-black?logo=github&logoColor=white)](https://github.com)
[![JIRA](https://img.shields.io/badge/-JIRA-blue?logo=jira&logoColor=white)](https://www.atlassian.com/software/jira)
[![Slack](https://img.shields.io/badge/-Slack-purple?logo=slack&logoColor=white)](https://slack.com)

<br/>

## sqflite 
- Flutter 용 SQLite 플러그인
- SQLite란 경량의 관계형 데이터베이스 관리 시스템(RDBMS)으로 표준 SQL 쿼리 언어를 사용하여 데이터를 저장, 검색, 수정, 삭제할 수 있다. 내장형 데이터베이스로서 별도의 서버 프로세스가 필요하지 않으며, 단일 파일 형태(.db)로 데이터를 저장한다. 따라서 메모리와 디스크 공간을 적게 차지하며, 빠르고 효율적인 데이터 액세스를 제공한다. 또한 트랜잭션/배치를 지원하기 때문에 데이터 무결성에 탁월하다.  
  - 트랜잭션은 여러 개의 데이터베이스 작업을 하나의 논리적인 작업 단위로 묶어서 원자성(Atomicity), 일관성(Consistency), 격리성(Isolation), 지속성(Durability)을 보장하는데 사용한다.
  - 배치 작업은 여러 개의 쿼리를 한 번에 실행하여 데이터베이스 작업을 효율적으로 처리하는 기능이다. sqflite에서 batch 메서드는 트랜잭션을 자동으로 관리한다.
- 사용이유
  - 거의 변하지 않는 데이터(ex: 사용자 기본 정보)를 매통신마다 전달받지 않고 최초 로드 시 전달 받은 후 로컬에 저장한 뒤 사용하기 위해 적용
  - 프로젝트에서 카테고리 정보, 유저정보, 검색이로 활용해서 사용함
  
    <br/>

## Bootpay
- 부트페이는 사업자가 PG 이용을 더욱 손쉽게 할 수 있도록 하는 서비스로 PG 가입을 위한 절차를 대행해주고, 결제 연동을 쉽게 할 수 있도록 표준화된 형태의 결제 API를 제공한다.
  
### 결제 흐름
1. 결제 연동을 위한 키를 발급
   - 클라이언트 연동키 (Web Application ID / Android Application ID / iOS Application ID)
   - 프로젝트에서 Android Application ID만 사용
2. 부트페이가 PG사의 결제창을 로드하기 전 서버와 통신
   - 서버 측에서 1차적으로 request 데이터 DB 저장 후, 대응하는 특정 값(계산서 번호, 결제 종류)를 응답
3. Client SDK로 결제 호출
   - payload의 metadata에 데이터 ( 결제 계산서 번호, 결제 종류 ) 담아 전달
   - 결제 서버 승인 시, 부트페이 측에서 전달되는 결제 결과 데이터와의 비교를 위함
4. 사용자가 결제 진행하면 PG사가 결제 승인 전 부트페이 서버로 신호 전달
   - 전달되었을때 payload의 metadata에 데이터와 db에 있는 결제 정보를 비교하여 금액 [유효성 인증] 진행
5. 서버에서 부트페이쪽으로 최종 승인할시 결제 완료 처리
   - 서버에도 결제 완료 통지
   - 앱에서도 정상적으로 결제 완료 처리가 되고 done 호출

    <br/>

## epub viewer
- Flutter 애플리케이션에 전자책 리더기를 추가하는 데 사용할 수 있는 라이브러리
  - EPUB(electronic publication)은 국제 디지털 출판 포럼(IDPF, International Digital Publishing Forum)에서 제정한 개방형 자유 전자서적 표준이다. HTML과 CSS의 일부분을 차용한 오픈된 파일포맷 표준으로, 기본적으로 인터넷 연결이 끊어진 상태에서 PDA 또는 노트북 등에서 전자책 열람이 자유롭도록 제정된 전자책 포맷이다. 기본적으로는 HTML 로 이뤄진 문서가 ZIP 으로 압축된 모양새이다.

    <br/>
    
## RiverPod
- Flutter용 상태 관리 라이브러리
- Flutter의 Provider 패턴을 기반으로 하며, 단순하고 직관적인 API를 제공하여 애플리케이션의 상태 관리를 용이하게 한다.
- Riverpod은 상태를 관리하기 위해 StateNotifier와 StateNotifierProvider를 사용하는데, StateNotifier는 상태를 변경하고 관리하는 컨트롤러 역할을 수행하며, StateNotifierProvider는 상태를 저장하고 제공하는 컨테이너이다.
- Riverpod은 상태 변화를 감지하고 이에 따라 UI를 업데이트하는 기능을 제공한다. Consumer 위젯을 사용하여 Provider의 상태를 구독하고, 상태가 변경될 때마다 UI를 자동으로 업데이트할 수 있다.
- 보통 MVVM(Model-View-ViewModel) 아키텍처 패턴과 함께 사용하지만 프로젝트에서는 해당 아키텍처를 변경한 MVCS(Model-view-controller-store) 사용했다.
- MVCS
  ![riverpod-mvcs](https://github.com/ReadMeCorporation/app_ReadMe/assets/116797781/68f87c6d-125d-4df8-b7b5-de15cc259ba9)
    - view가 controller의 provider를 통해 상태 변경을 요청하면 controller가 repository를 호출한다. repository에서 통신이 이루어지고 반환된 response를 통해 controller가 provider에 상태를 변경하고, provider에서 변경된 값을 state에 저장한다. view는 provider를 구독하고 있기 때문에 상태값이 변함에 따라 UI가 업데이트 된다.  

    <br/>
  
    1. view - provider 구독  
  
  ![1  view-provider 구독](https://github.com/ReadMeCorporation/app_ReadMe/assets/116797781/66aa2276-46ce-4ed7-aafb-be9a17dd4ae0)
  

  2. view-controller  
  
   ![2  view-controller](https://github.com/ReadMeCorporation/app_ReadMe/assets/116797781/4847368b-9d3d-4298-a856-923f67ec39fa)
  

  3. controller-repository & controller-provider  
  
   ![3  controller-repository and controller-provider](https://github.com/ReadMeCorporation/app_ReadMe/assets/116797781/57d7530a-9264-4db8-89c7-bfd30fb4c0fc)
  

  4. provider 상태 변경  
  
   ![4  provider - 상태값](https://github.com/ReadMeCorporation/app_ReadMe/assets/116797781/ea209056-7c35-4e5d-a7c0-506d6718eb51)

    <br/>

## Secure Storage
- Flutter 애플리케이션에서 안전하고 보안된 방식으로 데이터를 저장하고 관리하는 라이브러리 
- 사용자의 중요한 정보(개인정보, 인증 토큰, API 키 등)를 안전하게 보호하기 위해 데이터를 암호화하여 저장하고, 데이터를 보호하기 위해 암호화 키를 사용한다. 안드로이드의 Keystore나 iOS의 Keychain과 같은 안전한 저장소를 사용하여 데이터를 저장하기 때문에 외부 공격으로부터 데이터를 보호하고, 데이터 유출 및 변경을 방지한다. 또한 인가되지 않은 사용자가 데이터에 접근하거나 수정하는 것을 방지하기 위해 암호화와 권한 관리를 사용하고, 사용자 인증 및 권한 검사를 통해 데이터의 무단 액세스를 방지한다.

    <br/>

## Freezed 
- Freezed는 Dart 언어에서 사용되는 코드 생성 도구로 코드 생성을 통해 데이터 모델의 필드, 생성자, 메서드 등을 자동으로 생성한다. 이는 반복적이고 지루한 작업을 줄여주며, 개발자가 직접 작성하는 코드의 양을 줄여준다. 또한 불변성(Immu`tability)을 갖춘 데이터 모델을 생성하는 데 도움을 준다.
    - 불변성(Immutability)은 객체나 데이터가 생성된 이후에 그 값을 변경할 수 없는 상태를 말한다. 이는 객체의 상태를 보호하여 예기치 않은 변경이 발생하는 것을 방지하고, 데이터의 일관성과 예측 가능성을 높여준다.
- 사용 이유
  1. JSON 직렬화와 역직렬화
     -  freezed는 자동으로 JSON 직렬화 및 역직렬화를 지원한다. Spring과 달리 Flutter에서는 fromJson, toJson을 직접 만들어 통신을 해야 했는데 freezed를 이용해 해당 과정을 간결화했다.
  2. copywith 메서드를 이용한 간편한 객체 생성
     - copywith 메서드는 특정 값 변경 시 새로운 객체를 반환하기 때문에 riverpod에서 state 값을 변경할 때의 번거로움을 줄여준다. state(model)은 객체의 참조값이 바뀌어야 변경을 감지하기 때문에 freezed를 사용하지 않았다면 하나의 값만 변경되어도 매번 객체를 복사해서 새로운 객체를 생성한 뒤 특정 값을 추가/변경 하는 번거로움이 있다.

    <br/>

## OAuth 
- Google OAuth & Firebase 사용
- Firebase Authentication을 통해 구글 계정으로 사용자 인증을 처리
  - 사용자 인증에 대한 부분을 Firebase가 처리해주기 때문에 구글 OAuth의 복잡한 설정과 통신을 직접 다룰 필요가 없다는 장점이 있지만, Firebase Authentication은 Google, Facebook, Twitter, GitHub 등과 같은 제휴 ID 공급업체를 통해 인증을 제공하기 때문에 데이터의 완전한 제어나 데이터 소유권을 중요시하는 경우에는 Firebase Authentication을 사용하는 것이 적합하지 않을 수 있다. 예를 들어, Google 로그인을 사용하고자 하지만 Google이 서비스를 중단하면 Firebase Authentication을 사용할 수 없게 된다.
- Firebase는 구글이 제공하는 개발 플랫폼으로, 인증, 데이터베이스, 스토리지, 클라우드 함수 등 다양한 기능을 제공
- 사용이유
  - 구글 OAuth와 Firebase를 통합하여 사용하면, 사용자 인증에 대한 부분을 Firebase가 처리해주기 때문에 구글 OAuth의 복잡한 설정과 통신을 직접 다룰 필요가 없음 

    <br/>
    
## FCM
- Firebase Cloud Messaging
- 앱 개발자가 서버 또는 사용자 장치에 알림을 보낼 수 있는 크로스 플랫폼 메시징 솔루션이다. FCM을 사용하면 클라우드 서버에서 간편하게 사용자에게 푸시 알림을 보낼 수 있으며, 사용자 장치에 알림을 표시하거나 데이터 메시지를 전송할 수 있다.

    <br/>

## Jira를 이용한 브랜치 전략
![Screenshot_1](https://github.com/ReadMeCorporation/app_ReadMe/assets/116797781/58bded76-4e62-4ba9-ad0a-613e213f0077)
- Jira를 이용해 작업 항목을 관리하고 이슈 생성
- 각 이슈에 대해 새로운 브랜치를 생성하고, 해당 브랜치에서 작업을 수행
- 작업이 완료되면 해당 브랜치에서 코드 리뷰 진행. 리뷰어는 변경 사항 확인 후 피드백. 리뷰 완료되면 MERGE.

    <br/>

# 유저 시나리오
## 회원가입 및 로그인 (OAuth)
<br/>

![image](https://github.com/ReadMeCorporation/app_ReadMe/assets/116797781/e9cd753c-ff3d-4e9e-b150-fa6a1cc88af6)
### Firebase 설정
1. Firebase 프로젝트 설정
   - Firebase 콘솔에 접속하여 프로젝트를 생성하고 설정한다.
   ![1  프로젝트 생성](https://github.com/ReadMeCorporation/app_ReadMe/assets/116797781/c944feac-ee42-47a3-81bb-c9ac3372aeb6)
 

2. Firebase Authentication 활성화
   - Firebase 콘솔에서 Authentication 서비스를 활성화하고, 로그인 제공 업체 목록에서 Google을 선택한다. 이를 통해 Firebase는 사용자 인증을 관리하고 구글 OAuth를 통해 로그인할 수 있는 기능을 제공한다.
      ![2  authentication](https://github.com/ReadMeCorporation/app_ReadMe/assets/116797781/bb28ed02-fcfe-4b86-97bd-a932a076b4e2)


3. 구글 OAuth 설정
   - 구글 개발자 콘솔에서 클라이언트 ID와 클라이언트 시크릿을 생성하고, Firebase에 등록한다.
      ![3-1](https://github.com/ReadMeCorporation/app_ReadMe/assets/116797781/3d099c68-ef09-4aad-8c1f-05853fa5d5f7)

4. firebase에 앱 등록
   - 프로젝트의 applicationId를 이용하여 Firebase 콘솔에서 앱을 등록한다.
      ![3-2  앱 등록](https://github.com/ReadMeCorporation/app_ReadMe/assets/116797781/3fd79b62-763c-47a9-a92a-2a4d400757a9)

5. 애플리케이션 설정
    1) 프로젝트에 json 파일 추가  
   
   ![3-3  json 파일 추가](https://github.com/ReadMeCorporation/app_ReadMe/assets/116797781/366b18cb-d7b4-495b-8755-16ede2dec260)
   
   2) build.gradle에 buildscript 추가  
   
   ![3-4 buildscript 추가](https://github.com/ReadMeCorporation/app_ReadMe/assets/116797781/00f14113-3124-4351-85aa-0020036d5b59)
   
   3) Gradle 추가
       - 애플리케이션에 Firebase SDK를 설치하고, Firebase 프로젝트의 구성 정보를 애플리케이션에 추가한다.
   ![image](https://github.com/ReadMeCorporation/app_ReadMe/assets/116797781/0ed62c1c-9bb9-4ed1-b75b-67a4ded87c45)
   

### 구현
1. 구글 로그인 인증
```dart
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

   // 1. 구글 로그인 
   final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return null;
      }
      
   // 2.구글 로그인 정보로 인증
   final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

   // 3.현재 사용자 가져오기
   final currentUser = _auth.currentUser;

   // 4.사용자 id토큰 가져오기
   final idToken = await currentUser?.getIdToken();
```

2. 유저의 ID토큰을 서버에 전달
```dart
  Response response = await MyHttp.get().post("/login",
          data: {
            'idToken': googleAuth.idToken,
            'osType:': Platform.isAndroid ? "ANDROID" : "IOS"
          }
      ); 
```
3. 유저의 ID토큰을 이용하여 서버에서 토큰을 검증하고 검증이 완료되면 JWT 토큰을 만들어 앱으로 전달 (SecureStorage)에 저장하여 사용
    - 이후 JWT 토큰으로 보안 통신(dio) header에 활용
```dart
 final jwtToken = response.headers.value('Authorization');
 
 if (jwtToken != null) {
    SecureStorage.setKey(SecureStorageEnum.jwtToken, jwtToken);
}
```
```dart
  static Future<Dio> getSecurity() async {
    String jwtToken = await SecureStorage.get(SecureStorageEnum.jwtToken) ?? "";
     return Dio(BaseOptions(
       headers: {
         "Authorization": jwtToken
       },
        baseUrl: _baseUrl,
        contentType: _contentType,
      ));
  }
```
## 메인 도서 목록
![image](https://github.com/ReadMeCorporation/app_ReadMe/assets/116797781/847f195f-364b-4e98-bea4-21498937fb06)
### metadata 통신
1. 앱 실행 시 최초 1회 metadata를 저장
    - sqflite를 이용해 DB 저장할 데이터
    - 거의 변하지 않는 데이터(ex: 사용자 기본 정보)를 매통신마다 전달받지 않고 최초 로드 시 전달 받은 후 로컬에 저장한 뒤 사용하기 위해 적용
    - 카테고리 (전체 / 베스트셀러 / 추천 / 신간) 종류
```dart
    Response response = await dio.get("/meta");
   
    if (response.statusCode == 200) {
      ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
      if (responseDTO.code == 1) {
        MetaDTO metaDTO = MetaDTO.fromJson(responseDTO.data);
        await MySqfliteInit.init(metaDTO);
        if (metaDTO.jwt != null && metaDTO.jwt != "") {
          SecureStorage.setKey(SecureStorageEnum.jwtToken, metaDTO.jwt!);
        }
        await MySqfliteInit.deleteUser();
        runApp(
          ProviderScope(
            child: MyApp(),
          ),
        );
      } else {
        runApp(
          failWidget,
        );
      }
```
2. sqflite를 이용해 DB 저장
```dart
  batch.execute('DROP TABLE IF EXISTS ${TableName.mainTab}');
  batch.execute('''eName.mainTab} (
            requestName text,
            name text not null)
          ''');
          
  await _db!.delete(TableName.mainTab);
  for (var mainTab in metaDTO.mainTabs) {
    _db!.insert(TableName.mainTab,
        {'requestName': mainTab.requestName, 'name': mainTab.name});
    }
```
3. Main Page - View Model
    - 카테고리마다 도서 목록 따로 관리
    - 페이징 처리 위해 카테고리별 현재 페이지와 마지막 페이지 여부 함께 관리
```dart
@unfreezed
class MainPageModel with _$MainPageModel {
   factory MainPageModel({
    required int totalPage,
    required int bestPage,
    required int recommendPage,
    required int latestPage,
    required bool isTotalLast,
    required bool isBestLast,
    required bool isRecommendLast,
    required bool isLatestLast,
    required List<FileListDTO> bookBanners,
    required List<Book> totalBooks,
    required List<Book> bestBooks,
    required List<Book> recommendBooks,
    required List<Book> latestBooks,
     required List<TableMainTab> mainTabs,
  }) = _MainPageModel;
}
```
### 페이징 처리
- 기본 size 10으로 고정 (유동적으로 변경 가능)
- 한 페이지가 끝나면 더보기 버튼으로 다음 페이지 요청하고, 해당 페이지가 마지막 페이지인 경우 더보기 버튼 생략
```dart
isLast != true && count - 1 == idx
  ? Padding(
      padding:
        const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
          child: UseButton(
          title: "더보기",
          buttonPressed: () {
            ref.read(bookControllerProvider).pageSearch(name, page, requestName);
           }),
          )
    : Container()
```
- 요청 페이지 넘버와 카테고리 이름 전달 후 해당 카테고리, 해당 페이지의 list 응답 받음(sqflite 활용)
```dart
 Future<void> pageSearch(
      String name,
      int page,
      String requestName
  ) async {
    if (!isDuplication) {
      isDuplication = true;
      ResponseDTO responseDTO =  await BookRepository().searchMainListPage(page, requestName);
      ref.read(mainPageProvider.notifier).pageSearch(name, responseDTO, page);
      isDuplication = false;
    }
  }
```
```dart
  Future<ResponseDTO> searchMainListPage(int page, String requestName, {int? bigCategory, int? smallCategory}) async {
    String endPoint = getEndPoint(requestName, bigCategory, smallCategory);
    try {
      Response response = await MyHttp.get()
          .get("/books$endPoint&page=$page&size=10");
           ...
  }
```
-  freezed의 copyWith를 이용한 페이지 상태 변화
   - copywith 메서드는 객체의 속성을 변경한 새로운 객체를 반환한다. 상태 변화를 위해서 state 값을 변경해야 하는 riverpod에서 특정 값만 변경하고 싶을 때 객체를 쉽게 업데이트 할 수 있다.
```dart
  if (name == "전체") {
        List<Book> newTotalBooks = [...state!.totalBooks];
        newTotalBooks.addAll(bookList);
        state = state!.copyWith(totalBooks: newTotalBooks, isTotalLast: responseDTO.data.last,  totalPage: page);
      }
```
## 도서 상세 조회
![image](https://github.com/ReadMeCorporation/app_ReadMe/assets/116797781/7238620f-8d8d-4d92-b41e-494e77f8838d)
1. 도서 구매 / 정기권 구매 여부로 노출 버튼 선택
    - 구매(소장) 시 장바구니로 이동 후 결제 
```dart
 (model.user?.isMembership ?? false) || (model.book.isPurchase ?? false)
   ?  Expanded(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
            ...
        ),
      )
      : Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...
        ]
      ),
```
2. 도서 구매/ 정기권 구독 여부 & 로그인 유무에 따라 review form 노출 선택
   - true일 시, 리뷰 내역과 리뷰 폼 노출 
   - false일 시, 리뷰 내역만 노출
```dart
 model?.user != null ? BookDetailReviewForm(bookId) : Container(),
```

## 뷰어
![image](https://github.com/ReadMeCorporation/app_ReadMe/assets/116797781/49704bab-b5a4-4321-9f06-3c0967c67c30)
- 배경색 변경
  ![bgcolor](https://github.com/ReadMeCorporation/app_ReadMe/assets/116797781/e0304cd9-169a-4c34-98bf-90d57dad8440)

- 폰트 사이즈 변경
  ![fontsizedown](https://github.com/ReadMeCorporation/app_ReadMe/assets/116797781/6b4b061b-831c-47d1-8b95-6d5d8cff5123)
  ![fontsizeup](https://github.com/ReadMeCorporation/app_ReadMe/assets/116797781/e2f40f31-2541-47df-a14b-f77273470972)

- 폰트 변경
  ![fontfamily](https://github.com/ReadMeCorporation/app_ReadMe/assets/116797781/45fa3c84-2024-4440-a8ef-13ff0622848b)


### 북마크
- 북마크 리스트 추가 후 해당 영역으로 이동 
```dart
 return Container(
     ...
      return InkWell(
        onTap: () => ref.read(bookViewerPageProvider(book).notifier).goBookMark(model?.bookmarks[index].link ?? ""),
        ...
      );
  );
```
```dart
void goBookMark(String link) async {
    state!.epubReaderController.gotoEpubCfi(link);
  }
```
```dart
  void gotoEpubCfi(
    String epubCfi, {
    double alignment = 0,
    Duration duration = const Duration(milliseconds: 250),
    Curve curve = Curves.linear,
  }) {
    _epubViewState?._gotoEpubCfi(
      epubCfi,
      alignment: alignment,
      duration: duration,
      curve: curve,
    );
  }
```

## 카테고리
![image](https://github.com/ReadMeCorporation/app_ReadMe/assets/116797781/f4cb2799-f8ea-4dbb-b937-67d2dfc65061)
### metadata 통신

1. sqflite 활용
   - 상위 카테고리(종합 포함 8개) & 하위 카테고리 (상위 카테고리별 종합 포함 6개) 
```dart
    // 테이블 생성
    batch.execute('DROP TABLE IF EXISTS ${TableName.bigCategory}');
    batch.execute('''
          create table ${TableName.bigCategory} (
            id integer primary key,
            name text not null)
          ''');

    batch.execute('DROP TABLE IF EXISTS ${TableName.smallCategory}');
    batch.execute('''
          create table ${TableName.smallCategory} (
            bigCategoryId integer,
            id integer primary key,
            name text not null,
            FOREIGN KEY (bigCategoryId) REFERENCES ${TableName.bigCategory}(id) ON DELETE CASCADE
            )
          ''');
          
    // insert   
    await _db!.delete(TableName.bigCategory);
    await _db!.delete(TableName.smallCategory);

    var bigCategory = metaDTO.bigCategory;
    for (var bigCategory in bigCategory) {
      _db!.insert(TableName.bigCategory,
          {'id': bigCategory.id, 'name': bigCategory.name});
          ...
    }
```
- view-model
```dart
@unfreezed
class CategoryPageModel with _$CategoryPageModel {
  factory CategoryPageModel({
    required int bigCategoryId,
    required int smallCategoryId,
    required List<BigCategory> categoryTabs,
    required List<Book> books,
    required int page,
     required bool isLast
  }) = _CategoryPageModel;
}
```
- sqflite에 저장된 카테고리 정보를 이용해 categoryTabs 구성
```dart
   List<BigCategory> sqlCategoryTabs =  await MySqfliteInit.getBigCategoryList();

    List<BigCategory> categoryTabs = [];
    for (var categoryTab in sqlCategoryTabs) {
      categoryTabs.add(categoryTab.copyWith (
        smallCategory: [ SmallCategory(id: 0, name: "종합"), ...?categoryTab.smallCategory, ]
      ));
    }
   categoryTabs.insert(0, const BigCategory(id: 0, name: "종합"));
```
- 페이지 최초 로드 시 종합(상위) 카테고리 노출 
```dart
ResponseDTO responseDTO = await BookRepository().mainList("all");
     MainDTO total = responseDTO.data;
     books =  books.copyWith(books: total.content , page: 0, isLast: total.last, categoryTabs: categoryTabs);
     state = books;
```
- 카테고리 선택 시 해당 카테고리의 하위 카테고리 노출
```dart
 onPressed: () {
   if (bigCategory.id == 0) {
      ref.read(categoryPageProvider.notifier).categorySearch(bigCategory.id);
   }
    ref.read(categoryPageProvider.notifier).bigCategoryIdSelect(bigCategory.id);
   }
```
```dart
  Future<void> bigCategoryIdSelect(int bigCategoryId) async {
    List<SmallCategory> smallCategory = await MySqfliteInit.getSmallCategoryList(bigCategoryId);
    state = state!.copyWith(smallCategory: smallCategory);
  }
```
```
 onPressed: () {
   ref.read(categoryPageProvider.notifier).categorySearch(bigCategoryId, smallCategory: smallCategory[index].id);
 },
```
- 페이지 서치
  - main 페이지와 동일
```
  Future<void> pageCategorySearch(
      int page, int bigCategory,
      {int? smallCategory}
  ) async {
    if (!isDuplication) {
      isDuplication = true;
      ResponseDTO responseDTO =  await BookRepository().searchMainListPage(page, "all", bigCategory: bigCategory, smallCategory: smallCategory);
      MainDTO mainDTO = responseDTO.data;
      ref.read(categoryPageProvider.notifier).pageSearch(mainDTO, page, bigCategory, smallCategory: smallCategory);
      isDuplication = false;
    }
  }
  ```
```
 Future<ResponseDTO> mainList(String requestName, {int? bigCategory, int? smallCategory}) async {
    String endPoint = getEndPoint(requestName, bigCategory, smallCategory);
    try {
      Response response = await MyHttp.get().get("/books$endPoint&page=0&size=10");
      ...
  }
  ```
- 페이지 상태 변화
```
 void pageSearch(MainDTO mainDTO, int page, int bigCategory, {int? smallCategory}) async {
    state = state!.copyWith(books: [...state!.books, ...mainDTO.content] , page: page, isLast: mainDTO.last, categoryTabs: state!.categoryTabs, bigCategoryId: bigCategory, smallCategoryId: smallCategory ?? 0);
  }
  ```

## 검색
![image](https://github.com/ReadMeCorporation/app_ReadMe/assets/116797781/f2297450-e74e-4382-a75e-8a0e061db05b)
### 최근 검색어 노출 - sqflite 활용
- 검색 시 DB 저장
```dart
  Future<void> search(ResponseDTO responseDTO, String keyword) async{
      await MySqfliteInit.insertSearchText(keyword);
      ...
  }
```
```dart
  static Future<void> insertSearchText (String searchText) async {
    List<Map> books = await _db!.query(TableName.search, where: 'searchText = ?', whereArgs: [searchText]);
    if (books.isEmpty) {
      await _db!.insert(TableName.search,
          {'searchText': searchText, 'createdAt': DateTime.now().millisecondsSinceEpoch}
      );
    } else {
      await _db!.delete(TableName.search, where: 'searchText = ?', whereArgs: [searchText]);
      await _db!.insert(TableName.search,
          {'searchText': searchText, 'createdAt': DateTime.now().millisecondsSinceEpoch}
      );
    }
  }
```
- 버튼 클릭 시 삭제 가능
```dart
  onPressed: () {
    provider.deleteSearchKeyword(model?.tableSearches[index].searchText ?? "");
  },
```
- 삭제 시 페이지 상태(화면) 변경
```dart
Future<void> deleteSearchKeyword (String keyword) async{
    await MySqfliteInit.deleteSearchText(keyword);
    var searchList = await MySqfliteInit.getSearchTextOrderByCreatedAtDesc();
    state = state!.copyWith (
      tableSearches: searchList,
    );
  }
```
- DB Delete
```dart
static Future<void> deleteSearchText (String searchText) async {
    await _db!.delete(TableName.search, where: 'searchText = ?', whereArgs: [searchText]);
  }
```

## 유저 정보
![image](https://github.com/ReadMeCorporation/app_ReadMe/assets/116797781/7021a183-7c70-4e56-9026-30c7d7cdc6d8)
- sqflite 활용 (정기권 구독 여부)
    - 비로그인 시 : 로그인 버튼 노출 - 로그인 페이지로 이동
    - 로그인 시 
      - 정기권 구독 시 : 정기권 구독 정보 노출 (최근 결제일, 만료일)
      - 정기권 미구독 시 : 정기권 구독 버튼 노출 - 결제 페이지로 이동
- 구매도서 : 보관함 - 구매 도서 목록으로 이동 
- 결제내역 : 정기권 구매 / 도서 구매 내역 확인 가능
- 리뷰관리 : 내가 작성한 리뷰 확인/삭제 가능

## 결제
![image](https://github.com/ReadMeCorporation/app_ReadMe/assets/116797781/844b28d2-0f53-4d92-b22a-3d3c9f26959f)
1. bootpay payload 호출 전 통신
   - 구매 도서 목록을 통해 결제 정보 생성
   - 이후 서버 검증을 위한 데이터(response)를 payload에 담아 bootpay 호출 
```dart
onPressed: () async {
  PaymentDTO paymentDTO = await paymentRequest(widget.cartBookList);
  bootpayDefault(context, paymentDTO, widget.cartBookList);
  }
```
2. bootpay payload 호출
- 구매 아이템 정보 입력
```dart
    List<Item> itemList = [];
    List.generate(widget.cartBookList.length, (index) {
      Item item = Item();
      item.name = widget.cartBookList[index].cartDTO.book.title;
      item.qty = 1;
      item.price = widget.cartBookList[index].cartDTO.book.price.toDouble();
      item.id = widget.cartBookList[index].cartDTO.book.id.toString();
      itemList.add(item);
    });
```
- AndroidApplicationId 입력
```dart
payload.androidApplicationId = androidApplicationId; 
```
- 유저 정보 입력
```dart
User user = User(); // 구매자 정보
TableUser? tableUser = await MySqfliteInit.getUser();

user.email= tableUser?.username ?? "";
user.id = tableUser?.id.toString() ?? "";
```
- 서버 검증을 위한 데이터 입력
    - 부트페이 결제창 호출 전 통신 후 응답 받은 데이터
```dart
payload.metadata = {
  "paymentId" : paymentDTO.id,
  "type" : paymentDTO.type,
};
```
- 서버 승인을 위한 설정 
```dart
Extra extra = Extra(); 
extra.separatelyConfirmed = true;
```
3. 결제 결과
- 결제 취소 시 메인 페이지로 이동
```dart
onCancel: (String data) {
    log('------- onCancel: $data');
    DialogUtil.dialogShow(context, "결제 취소");
    Navigator.pushNamedAndRemoveUntil(context, Move.mainPage, (route) => false);
  },
```
- 결제 완료 시 결제 내역 페이지로 이동
```dart
onDone: (String data) {
  log('------- onDone: $data');
  Navigator.popAndPushNamed(context, Move.paymentPage,);
}
```
## 장바구니
  ![image](https://github.com/ReadMeCorporation/app_ReadMe/assets/116797781/c9a01e04-be8a-4818-94d5-89d907fdead6)
1. 장바구니 추가
  - 추가 시 장바구니 페이지 이동 여부 묻기 (Dialog)
```dart
 BookCardView(book:books[index], addCart: () =>  ref.read(cartControllerProvider).insert(books[index].id),
```
```dart
  Future<void> insert (int bookId) async {
    ResponseDTO responseDTO = await BookRepository().addCart(bookId);
    if(responseDTO.code == 401) {
      Navigator.pushNamedAndRemoveUntil(mContext!, Move.loginPage, (route) => false);
    } else {
      ref.read(cartPageProvider.notifier).insert(responseDTO);
    }
  }
```
```dart
showDialog(
     context: context,
     builder: (context) {
       return   CustomDialog(
           title: "장바구니 담기 완료",
           content: "장바구니로 이동하시겠습니까?",
           callback: () => Navigator.pushNamed(context, Move.cartPage)
       );
     },
   );
```
2. 장바구니 페이지
- 체크 박스 widget 이용한 전체 / 개별 선택 
```dart
onChanged: (value) {
   isAllChecked = value!;
   ref.read(cartPageProvider.notifier).changeAllChecked(value);
}
```
```dart
onChanged: (value) {
   ref.read(cartPageProvider.notifier)
      .changedOneCheck(value, index);
}
```
- 선택된 도서 삭제
```dart
onPressed: () {
   ref.read(cartControllerProvider)
      .deleteCartBook(cartBooks[index].cartDTO.id);
}
```
- 삭제 시 state 변경
```dart
state!.cartBooks.where((e) => e.cartDTO.id != id).toList();
state = state!.copyWith(cartBooks: newCartList);
```
3. 결제 버튼 클릭 시 부트페이 결제창 호출

## 알림
![image](https://github.com/ReadMeCorporation/app_ReadMe/assets/116797781/fed83da0-fb42-4c24-aa50-bbae5de77f0c)
1. Firebase 앱 등록
2. FCM 플러그인 설치
   ![gradle 추가 2](https://github.com/ReadMeCorporation/app_ReadMe/assets/116797781/3cc5d38c-6f17-42f8-80bd-78f55909272c)
3. 등록 토큰 액세스
 - 특정 기기로 메시지를 보내려면 기기의 등록 토큰을 알아야 한다. FCM SDK는 앱을 처음 시작할 때 클라이언트 앱 인스턴스용 등록 토큰을 생성한다.
   - 알림 권한이 부여되지 않은 경우 아래 메서드는 사용자에게 알림 권한을 요청하고, 그렇지 않은 경우 토큰을 반환하거나 오류가 있으면 예정을 거부한다.
```dart
class NotificationController {
  FirebaseMessaging messaging = FirebaseMessaging.instance;
  ...
}
```
```dart
var token = await notificationController.messaging.getToken();
```
4. 토큰을 secure storage에 저장
```dart
SecureStorage.setKey(SecureStorageEnum.fcmToken, token ?? "");
```
5. Firebase console에서 알림 보내기
    1. 알림 유형 설정
    ![1  프로젝트 메시지 유형 설정](https://github.com/ReadMeCorporation/app_ReadMe/assets/116797781/f1996b2c-719d-4c62-8b1e-f0994bf8ba23)
    2. 알림 내용 설정
    ![2  알림 설정](https://github.com/ReadMeCorporation/app_ReadMe/assets/116797781/c82ed204-5b42-4477-9d62-a685190b0a76)
    3. 타겟 설정
    ![2-1  타겟 설정](https://github.com/ReadMeCorporation/app_ReadMe/assets/116797781/cf6d2995-d0bf-4020-8c30-a42d32842e77)
    4. 알림 전송
    ![3  메시지 전송](https://github.com/ReadMeCorporation/app_ReadMe/assets/116797781/6e7e6bf3-a1b0-4f29-b472-6364e91d02c1)
6. 푸시 알림이 오는 상황 
   - Foreground : 앱 실행 중일 때 알림
   - Background : 앱이 꺼져있거나 Background로 실행 중일 때 알림
   - Background의 경우 따로 핸들러 처리 해주지 않고 initializing 만으로 컨트롤 가능하지만, Foreground의 경우 별도의 핸들러 구현해주어야 한다. 또한  안드로이드의 경우 정책 상 Foreground 상태에서 알림을 보내지 않도록 되어있기 때문에 알림 중요도를 설정해주어야 한다. 
```dart
androidNotificationChannel = const AndroidNotificationChannel(
  'important_channel', // id
  'Important_Notifications', // name
  '중요도가 높은 알림을 위한 채널.',
  importance: Importance.high,
);
```
7. FlutterLocalNotificationsPlugin 설정
- Flutter 애플리케이션에서 로컬 알림을 생성하고 관리하기 위한 플러그인
- Flutter 앱에서 안드로이드와 iOS 플랫폼의 로컬 알림 기능에 접근할 수 있게 해준다.
- 사용 방법
  1. 인스턴스를 생성하고 초기화
    ```dart
    FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    ```
  2. 플러그인 설정 및 알림 채널 생성
        ```dart
          await flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()
          ?.createNotificationChannel(androidNotificationChannel);
        ```
      - Android 설정
        ```dart
        Future<void> fbMsgForegroundHandler(
           RemoteMessage message,
          FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin,
          AndroidNotificationChannel? channel) async {

          const AndroidInitializationSettings androidInitializationSettings = AndroidInitializationSettings('@mipmap/ic_launcher');
          final InitializationSettings initializationSettings =
          const InitializationSettings(
           android: androidInitializationSettings,
          );
          ...
        }
        ```
  3. 알림을 예약하거나 즉시 전송
     - FirebaseMessaging.onMessage.listen 이용
       - FCM을 사용하여 앱으로 수신된 메시지를 처리하는 데 사용되는 메소드
       - 앱이 활성 상태일 때 FCM으로부터 전송된 메시지를 수신하고 처리할 수 있다.
       ```dart
          FirebaseMessaging.onMessage.listen((message) {
          notificationController.fbMsgForegroundHandler(message, flutterLocalNotificationsPlugin, androidNotificationChannel);
          });
       ```     
       - 즉시 전송 
       ```dart
       flutterLocalNotificationsPlugin.show(
        message.hashCode,
        message.data['title'],
        message.data['body'],
        NotificationDetails(
          android: AndroidNotificationDetails(
            channel!.id,
            channel.name,
            channel.description,
            icon: '@mipmap/ic_launcher',
          )
        ),
        payload: message.data['notificationType']
       );
       ```
  4. 알람 종류별 페이지 이동
  ```dart
    await flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onSelectNotification: (playgroud) async {
        if (message.data['notificationType'] == 'ADVERTISEMENT') {
          Navigator.push(
              navigatorKey.currentContext!,
              MaterialPageRoute(
                builder: (context) =>
                    BookDetailPage(bookId: int.parse(message.data['notificationData'])),
              )
          );
        } else if (message.data['notificationType'] == 'NOTICE') {
          Navigator.push(
              navigatorKey.currentContext!,
              MaterialPageRoute(
                builder: (context) => NoticePageDetail(id: int.parse(message.data['notificationData'])),
              ));
        }
        print(playgroud);
      }
    );
    ``` 
