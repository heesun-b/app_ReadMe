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
[![Postman](https://img.shields.io/badge/-Postman-orange?logo=postman&logoColor=white)](https://www.postman.com)
[![Git](https://img.shields.io/badge/-Git-red?logo=git&logoColor=white)](https://git-scm.com)
[![GitHub](https://img.shields.io/badge/-GitHub-black?logo=github&logoColor=white)](https://github.com)
[![JIRA](https://img.shields.io/badge/-JIRA-blue?logo=jira&logoColor=white)](https://www.atlassian.com/software/jira)
[![Slack](https://img.shields.io/badge/-Slack-purple?logo=slack&logoColor=white)](https://slack.com)


## sqflite 
- Flutter 용 SQLite 플러그인
- SQLite란 경량의 관계형 데이터베이스 관리 시스템(RDBMS)으로 표준 SQL 쿼리 언어를 사용하여 데이터를 저장, 검색, 수정, 삭제할 수 있다. 내장형 데이터베이스로서 별도의 서버 프로세스가 필요하지 않으며, 단일 파일 형태(.db)로 데이터를 저장한다. 따라서 메모리와 디스크 공간을 적게 차지하며, 빠르고 효율적인 데이터 액세스를 제공한다. 또한 트랜잭션/배치를 지원하기 때문에 데이터 무결성에 탁월하다.  
  - 트랜잭션은 여러 개의 데이터베이스 작업을 하나의 논리적인 작업 단위로 묶어서 원자성(Atomicity), 일관성(Consistency), 격리성(Isolation), 지속성(Durability)을 보장하는데 사용한다.
  - 배치 작업은 여러 개의 쿼리를 한 번에 실행하여 데이터베이스 작업을 효율적으로 처리하는 기능이다. sqflite에서 batch 메서드는 트랜잭션을 자동으로 관리한다.
- 사용이유
  - 거의 변하지 않는 데이터(ex: 사용자 기본 정보)를 매통신마다 전달받지 않고 최초 로드 시 전달 받은 후 로컬에 저장한 뒤 사용하기 위해 적용
  - 프로젝트에서 카테고리 정보, 유저정보, 검색이로 활용해서 사용함

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

## epub viewer
- Flutter 애플리케이션에 전자책 리더기를 추가하는 데 사용할 수 있는 라이브러리
  - EPUB(electronic publication)은 국제 디지털 출판 포럼(IDPF, International Digital Publishing Forum)에서 제정한 개방형 자유 전자서적 표준이다. HTML과 CSS의 일부분을 차용한 오픈된 파일포맷 표준으로, 기본적으로 인터넷 연결이 끊어진 상태에서 PDA 또는 노트북 등에서 전자책 열람이 자유롭도록 제정된 전자책 포맷이다. 기본적으로는 HTML 로 이뤄진 문서가 ZIP 으로 압축된 모양새이다.
## RiverPod
## Secure Storage
## Freezed 
## OAuth 
- Google OAuth & Firebase 사용
- Firebase Authentication을 통해 구글 계정으로 사용자 인증을 처리
- Firebase는 구글이 제공하는 개발 플랫폼으로, 인증, 데이터베이스, 스토리지, 클라우드 함수 등 다양한 기능을 제공
- 사용이유
  - 구글 OAuth와 Firebase를 통합하여 사용하면, 사용자 인증에 대한 부분을 Firebase가 처리해주기 때문에 구글 OAuth의 복잡한 설정과 통신을 직접 다룰 필요가 없음
## 페이징 처리 
## FCM
## Jira를 이용한 브랜치 전략
- Jira를 이용해 작업 항목을 관리하고 이슈 생성
- 각 이슈에 대해 새로운 브랜치를 생성하고, 해당 브랜치에서 작업을 수행
- 작업이 완료되면 해당 브랜치에서 코드 리뷰 진행. 리뷰어는 변경 사항 확인 후 피드백. 리뷰 완료되면 MERGE.

# 유저 시나리오
## 회원가입 및 로그인 (OAuth)
![image](https://github.com/ReadMeCorporation/app_ReadMe/assets/116797781/e9cd753c-ff3d-4e9e-b150-fa6a1cc88af6)
### Firebase 설정
1. Firebase 프로젝트 설정
![1  프로젝트 생성](https://github.com/ReadMeCorporation/app_ReadMe/assets/116797781/c944feac-ee42-47a3-81bb-c9ac3372aeb6)
   - Firebase 콘솔에 접속하여 프로젝트를 생성하고 설정한다.
   

2. Firebase Authentication 활성화
   ![2  authentication](https://github.com/ReadMeCorporation/app_ReadMe/assets/116797781/bb28ed02-fcfe-4b86-97bd-a932a076b4e2)
   - Firebase 콘솔에서 Authentication 서비스를 활성화하고, 로그인 제공 업체 목록에서 Google을 선택한다. 이를 통해 Firebase는 사용자 인증을 관리하고 구글 OAuth를 통해 로그인할 수 있는 기능을 제공한다.
   

3. 구글 OAuth 설정
   ![3-1](https://github.com/ReadMeCorporation/app_ReadMe/assets/116797781/3d099c68-ef09-4aad-8c1f-05853fa5d5f7)
   - 구글 개발자 콘솔에서 클라이언트 ID와 클라이언트 시크릿을 생성하고, Firebase에 등록한다.

   
4. firebase에 앱 등록
   ![3-2  앱 등록](https://github.com/ReadMeCorporation/app_ReadMe/assets/116797781/3fd79b62-763c-47a9-a92a-2a4d400757a9)
    - 프로젝트의 applicationId를 이용하여 Firebase 콘솔에서 앱을 등록한다.
   

5. 애플리케이션 설정
    1) 프로젝트에 json 파일 추가
   ![3-3  json 파일 추가](https://github.com/ReadMeCorporation/app_ReadMe/assets/116797781/366b18cb-d7b4-495b-8755-16ede2dec260)
    2) build.gradle에 buildscript 추가
    ![3-4 buildscript 추가](https://github.com/ReadMeCorporation/app_ReadMe/assets/116797781/00f14113-3124-4351-85aa-0020036d5b59)
    3) Gradle 추가 
    ![image](https://github.com/ReadMeCorporation/app_ReadMe/assets/116797781/0ed62c1c-9bb9-4ed1-b75b-67a4ded87c45)
    - 애플리케이션에 Firebase SDK를 설치하고, Firebase 프로젝트의 구성 정보를 애플리케이션에 추가한다.

### 구현
1. 구글 로그인 인증
```
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
```agsl
  Response response = await MyHttp.get().post("/login",
          data: {
            'idToken': googleAuth.idToken,
            'osType:': Platform.isAndroid ? "ANDROID" : "IOS"
          }
      ); 
```
3. 유저의 ID토큰을 이용하여 서버에서 토큰을 검증하고 검증이 완료되면 JWT 토큰을 만들어 앱으로 전달 (SecureStorage)에 저장하여 사용
    - 이후 JWT 토큰으로 보안 통신(dio) header에 활용
```agsl
 final jwtToken = response.headers.value('Authorization');
 
 if (jwtToken != null) {
    SecureStorage.setKey(SecureStorageEnum.jwtToken, jwtToken);
}
```
```agsl
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
```agsl
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
```agsl
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
```agsl
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
```agsl
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
```agsl
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
```agsl
  Future<ResponseDTO> searchMainListPage(int page, String requestName, {int? bigCategory, int? smallCategory}) async {
    String endPoint = getEndPoint(requestName, bigCategory, smallCategory);
    try {
      Response response = await MyHttp.get()
          .get("/books$endPoint&page=$page&size=10");
           ...
  }
```
- 페이지 상태 변화
```agsl
  if (name == "전체") {
        List<Book> newTotalBooks = [...state!.totalBooks];
        newTotalBooks.addAll(bookList);
        state = state!.copyWith(totalBooks: newTotalBooks, isTotalLast: responseDTO.data.last,  totalPage: page);
      }
```
## 도서 상세 조회
![image](https://github.com/ReadMeCorporation/app_ReadMe/assets/116797781/7238620f-8d8d-4d92-b41e-494e77f8838d)
1. PK로 Book Detail 조회 
```agsl
  Future<ResponseDTO> getBookDetail (int bookId) async {
    try{
      Dio dio = await MyHttp.getCommon();
      Response response = await dio.get("/books/$bookId/detail?size=3");
      ...
    }
  }
```
2. 도서 구매 / 정기권 구매 여부로 노출 버튼 선택
    - 구매(소장) 시 장바구니로 이동 후 결제 
```agsl
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
3. 도서 구매/ 정기권 구독 여부 & 로그인 유무에 따라 review form 노출 선택
   - true일 시, 리뷰 내역과 리뷰 폼 노출 
   - false일 시, 리뷰 내역만 노출
```agsl
 model?.user != null ? BookDetailReviewForm(bookId) : Container(),
```

## 뷰어
![image](https://github.com/ReadMeCorporation/app_ReadMe/assets/116797781/49704bab-b5a4-4321-9f06-3c0967c67c30)
### epub viewer
- 도서 상세 페이지에서 도서 정보 전달 
- 뷰어 페이지 최초 로드 시, 전달 받은 도서 정보에 포함된 파일 url을 이용해 epub 파일을 열람 
```agsl
var epubController = EpubController(document: EpubDocument.openUrl(book.epubFile.fileUrl));
```
```agsl
  static Future<EpubBook> openUrl(String url) async {
    final dio = Dio();
    final response = await dio.get(
      url,
      options: Options(responseType: ResponseType.bytes),
    );
    final bytes = response.data as Uint8List;

    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/book.epub');
    await file.writeAsBytes(bytes);

    return EpubReader.readBook(bytes);
  }
```
- view-model
  - isShowAppBarAndBottomSheet : 상단바와 하단바 노출 여부
  - fontSize, fontColor, fontFamily, bgColor : 뷰어 페이지에서 설정한 폰트 사이즈, 폰트 색상, 폰트, 배경색
  - isBookMark : 북마크 여부
```
@unfreezed
class BookViewerPageModel with _$BookViewerPageModel {
  factory BookViewerPageModel(
      {
        required String title,
        required String epubFilePath,
        required String coverFilePath,
        required int price,
        required bool isHeart,
        required bool isBookMark,
        required bool isShowAppBarAndBottomSheet,
        required double currentSliderValue,
        required double fontSize,
        required Color fontColor,
        required String fontFamily,
        required Color bgColor,
        TableUser? user,
        required EpubController epubReaderController,
        required List<BookMark> bookmarks,
      }) = _BookViewerPageModel;
}
```
- 폰트 사이즈 변경
```agsl
 void fontSizeUp() async {
    state = state!.copyWith(fontSize: state!.fontSize + 2.0);
  }
  
 void fontSizeDown() async {
    state = state!.copyWith(fontSize: state!.fontSize - 2.0);
  }
```
- 배경색 변경
```agsl
  void bgColor(Color value) async {
    state = state!.copyWith(bgColor: value);
  }

  void bgColorWhite() async {
    state = state!.copyWith(bgColor: Colors.white, fontColor: Colours.app_sub_black);
  }

  void bgColorBlack() async {
    state = state!.copyWith(bgColor: Colours.app_sub_black, fontColor: Colors.white);
  }

  void bgColorMain() async {
    state = state!.copyWith(bgColor: Colours.app_main, fontColor: Colours.app_sub_black);
  }

  void bgColorGrey() async {
    state = state!.copyWith(bgColor: Colours.app_sub_grey, fontColor: Colours.app_sub_black);
  }
```
- FontFamily 변경
```agsl
 void changeFontFamily(String value) async {
    state = state!.copyWith(fontFamily: value);
  }
```
- GestureDetector를 통해 Appbar & BottomSheet 노출 결정
```agsl
 GestureDetector(
     onTap: () {
       ref.read(bookViewerPageProvider(book).notifier).changeIsShowAppBarAndBottomSheet(model?.isShowAppBarAndBottomSheet ?? false ? false : true);
     },
      ...
   ),

```
```agsl
 void changeIsShowAppBarAndBottomSheet(value) async {
    state = state!.copyWith(isShowAppBarAndBottomSheet: value);
  }
```
### 북마크
- 버튼 클릭 시 북마크 추가
  - _epubViewState의 paragraphIndex, positionIndex로 구분
```agsl
  onTap: () {
     ref.read(bookViewerPageProvider(book).notifier).addBookMark("북마크 ${(model?.bookmarks.length)}", model?.epubReaderController.generateEpubCfi() ?? "");
  },
```
```agsl
  void addBookMark(String title, String link) async {
    state = state!.copyWith(bookmarks: [...state!.bookmarks, BookMark(title: title, link: link)]);
  }
```
```agsl
  String? generateEpubCfi() => _epubViewState?._epubCfiReader?.generateCfi(
        book: _document,
        chapter: _epubViewState?._currentValue?.chapter,
        paragraphIndex: _epubViewState?._getAbsParagraphIndexBy(
          positionIndex: _epubViewState?._currentValue?.position.index ?? 0,
          trailingEdge:
              _epubViewState?._currentValue?.position.itemTrailingEdge,
          leadingEdge: _epubViewState?._currentValue?.position.itemLeadingEdge,
        ),
      );
```
- 북마크 리스트 추가 후 해당 영역으로 이동 
```agsl
 return Container(
     ...
      return InkWell(
        onTap: () => ref.read(bookViewerPageProvider(book).notifier).goBookMark(model?.bookmarks[index].link ?? ""),
        ...
      );
  );
```
```agsl
void goBookMark(String link) async {
    state!.epubReaderController.gotoEpubCfi(link);
  }
```
```agsl
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

1. 앱 실행 시 최초 1회 metadata를 저장
   - sqflite를 이용해 DB 저장할 데이터
   - 거의 변하지 않는 데이터(ex: 사용자 기본 정보)를 매통신마다 전달받지 않고 최초 로드 시 전달 받은 후 로컬에 저장한 뒤 사용하기 위해 적용
   - 상위 카테고리(종합 포함 8개) & 하위 카테고리 (상위 카테고리별 종합 포함 6개) 
```agsl
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
```agsl
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
```agsl
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
```agsl
ResponseDTO responseDTO = await BookRepository().mainList("all");
     MainDTO total = responseDTO.data;
     books =  books.copyWith(books: total.content , page: 0, isLast: total.last, categoryTabs: categoryTabs);
     state = books;
```
- 카테고리 선택 시 해당 카테고리의 하위 카테고리 노출
```agsl
 onPressed: () {
   if (bigCategory.id == 0) {
      ref.read(categoryPageProvider.notifier).categorySearch(bigCategory.id);
   }
    ref.read(categoryPageProvider.notifier).bigCategoryIdSelect(bigCategory.id);
   }
```
```agsl
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
## 알림
![image](https://github.com/ReadMeCorporation/app_ReadMe/assets/116797781/fed83da0-fb42-4c24-aa50-bbae5de77f0c)

## 검색
![image](https://github.com/ReadMeCorporation/app_ReadMe/assets/116797781/f2297450-e74e-4382-a75e-8a0e061db05b)
### 최근 검색어 노출 - sqflite 사용
- 검색 시 DB 저장
```agsl
  Future<void> search(ResponseDTO responseDTO, String keyword) async{
      await MySqfliteInit.insertSearchText(keyword);
      ...
  }
```
```agsl
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
```agsl
  onPressed: () {
    provider.deleteSearchKeyword(model?.tableSearches[index].searchText ?? "");
  },
```
- 삭제 시 페이지 상태(화면) 변경
```agsl
Future<void> deleteSearchKeyword (String keyword) async{
    await MySqfliteInit.deleteSearchText(keyword);
    var searchList = await MySqfliteInit.getSearchTextOrderByCreatedAtDesc();
    state = state!.copyWith (
      tableSearches: searchList,
    );
  }
```
- DB Delete
```agsl
static Future<void> deleteSearchText (String searchText) async {
    await _db!.delete(TableName.search, where: 'searchText = ?', whereArgs: [searchText]);
  }
```
### 검색
- 서버에 검색 키워드 전달
```agsl
  Future<void> search(
      String searchKeyword
  ) async {
      ResponseDTO responseDTO =  await BookRepository().searchKeyword(searchKeyword);
      ref.read(searchListPageProvider.notifier).search(responseDTO, searchKeyword);
      isDuplication = false;
  }
```
```agsl
Future<ResponseDTO> searchKeyword(String keyword) async {
    try {
      var dio = await MyHttp.getCommon();
      Response response = await dio.get("/search?keyword=$keyword");
      ...
  }
```
![image](https://github.com/ReadMeCorporation/app_ReadMe/assets/68271830/78f107ea-1309-4022-ba9e-d6573eb56a80)
![image](https://github.com/ReadMeCorporation/app_ReadMe/assets/68271830/150d0448-230d-4e4c-9fe1-0dde14a07689)
![image](https://github.com/ReadMeCorporation/app_ReadMe/assets/68271830/a949919d-1444-4b9e-a96e-0aafcb18a36d)
![image](https://github.com/ReadMeCorporation/app_ReadMe/assets/68271830/d943b57d-1b26-44ad-9c13-0ab84027e8ac)
