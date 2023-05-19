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
[![IntelliJ IDEA](https://img.shields.io/badge/-IntelliJ%20IDEA-blue?logo=intellij-idea&logoColor=white)](https://www.jetbrains.com/idea/)
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

# @@@ 추가 @@@
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
- 사용이유
  - 추가하기!
- 


### FCM 
### epub viewer
### RiverPod
### Secure Storage
### Freezed 
### OAuth 
### 페이징 처리 

## Jira를 이용한 브랜치 전략
- Jira를 이용해 작업 항목을 관리하고 이슈 생성
- 각 이슈에 대해 새로운 브랜치를 생성하고, 해당 브랜치에서 작업을 수행
- 작업이 완료되면 해당 브랜치에서 코드 리뷰 진행. 리뷰어는 변경 사항 확인 후 피드백. 리뷰 완료되면 MERGE.

## 유저 시나리오
![image](https://github.com/ReadMeCorporation/app_ReadMe/assets/68271830/6ef610ff-c958-415a-ac21-cb409863666f)
![image](https://github.com/ReadMeCorporation/app_ReadMe/assets/68271830/9c2ada18-3b49-4ea2-adc7-4bb09f526ec3)
![image](https://github.com/ReadMeCorporation/app_ReadMe/assets/68271830/89f81900-cacd-4761-b565-b4afdad7bb24)
![image](https://github.com/ReadMeCorporation/app_ReadMe/assets/68271830/7cb39d8d-c7aa-4301-8b32-b8fb518c29f5)
![image](https://github.com/ReadMeCorporation/app_ReadMe/assets/68271830/ea54798f-048a-4d2a-9fa0-563596447c5d)
![image](https://github.com/ReadMeCorporation/app_ReadMe/assets/68271830/0ec6d7c3-ed76-4d22-b560-42c96bdb2101)
![image](https://github.com/ReadMeCorporation/app_ReadMe/assets/68271830/70d909b9-0024-4a06-b12a-f21d4e646179)
![image](https://github.com/ReadMeCorporation/app_ReadMe/assets/68271830/78f107ea-1309-4022-ba9e-d6573eb56a80)
![image](https://github.com/ReadMeCorporation/app_ReadMe/assets/68271830/150d0448-230d-4e4c-9fe1-0dde14a07689)
![image](https://github.com/ReadMeCorporation/app_ReadMe/assets/68271830/a949919d-1444-4b9e-a96e-0aafcb18a36d)
![image](https://github.com/ReadMeCorporation/app_ReadMe/assets/68271830/d943b57d-1b26-44ad-9c13-0ab84027e8ac)
