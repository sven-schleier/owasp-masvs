# 변경이력

## V1.3 - 13 May 2021

We are proud to announce the introduction of a new document build pipeline, which is a major milestone for our project. The build pipeline is based on [Pandocker](https://github.com/dalibo/pandocker) and [Github Actions](https://github.com/OWASP/owasp-masvs/tree/master/.github/workflows).
This significantly reduces the time spent on creating new releases and will also be the foundation for the OWASP MSTG and will be made available for the OWASP ASVS project.

### Changes

- 4 more translations are available, which are Hindi, Farsi, Portuguese and Brazilian Portuguese
- Added requirement MSTG-PLATFORM-11

### Special Thanks

- Jeroen Willemsen for kick-starting this initiative last year!
- Damien Clochard and Dalibo for supporting and professionalizing the build pipeline.
- All our Hindi, Farsi, Portuguese and Brazilian Portuguese collaborators for the excellent translation work.

## V1.2 - 2020년 3월 7일 - 국제 릴리스

다음 변경 사항은 릴리스 1.2의 일부입니다:

- MASVS의 중국어 간체 번역.
- MASVS 책 표지에서 제목 변경.
- MSTG에서 Mobile Top 10 및 CWE를 제거하고 MASVS의 기존 참조와 병합.

## V1.2-RC - 2019년 10월 5일 - 시험판

다음 변경 사항은 시험판 1.2의 일부입니다:

- 플래그십 상태로 승격됨.
- 요구사항 변경: MSTG-STORAGE-1 "사용 필요".
- 데이터 보호에 중점을 두기 위해 요구사항 MSTG-STORAGE-13, MSTG-STORAGE-14 및 MSTG-STORAGE-15 요구사항 추가.
- 요구사항 MSTG-AUTH-11은 상황별 정보를 보존하도록 업데이트.
- 요구 사항 MSTG-CODE-4는 단순한 디버깅 이상을 포함하도록 업데이트.
- WebView의 더 안전하게 사용하기 위해 MSTG-PLATFORM-10 요구사항 추가.
- 개발자에게 특히 다중 사용자 앱의 경우 개발자에게 인증 구현을 상기시키기 위해 MSTG-AUTH-12 요구사항 추가.
- 위험 평가 시에 MASVS를 사용하는 방법에 대한 설명 추가.
- 유료 컨텐츠에 대한 설명 추가.
- L2 애플리케이션에 대한 책임 있는 공개 정책을 포함하기 위해 MSTG-ARCH-11 요구사항 추가.
- 애플리케이션 개발자에게 관련 국제 개인정보보호법을 준수해야 함을 보여주기 위해 MSTG-ARCH-12 요구사항 추가.
- 영어 버전의 모든 참조에 대해 일관된 스타일을 만듦.
- MSTG-PLATFORM-11 요구 사항이 타사 키보드를 통한 스파이 감시에 추가.
- 요구사항 MSTG-MSTG-RESILIENCE-13이 추가되어 애플리케이션에서 도청을 막을 수 있음.
- MASVS를 중국어(ZHTW:번체), 영어, 독일어, 프랑스어, 일본어, 한국어, 러시아어 및 스페인어로 업데이트했습니다.

## V1.1.4 - 2019년 7월 4일 - 서밋 에디션

다음 변경 사항은 릴리스 1.1.4의 일부입니다:

- 모든 마크다운 문제 해결.
- 프랑스어 및 스페인어 번역 업데이트.
- 변경이력을 중국어(ZHTW:번체) 및 일본어로 번역.
- 마크다운 구문 및 URL의 접근성에 대한 자동 검증.
- 권장 사항과 테스트 사례를 쉽게 찾을 수 있도록 요구사항에 식별 코드를 추가했으며, 향후 버전의 MSTG에 포함.
- repo 크기를 줄이고 .gitignore에 생성 추가.
- 행동 강령 및 기여 가이드라인 추가.
- 풀 요청(Pull-Request) 템플릿 추가.
- 깃북 웹 사이트 호스팅에 사용 중인 리포지토리와 동기화 업데이트.
- 모든 번역에 대해 XML/JSON/CSV를 생성하도록 스크립트 업데이트.
- 서문을 중국어(ZHTW:번체)로 번역.

## V1.1.3 - 2019년 1월 9일 - 작은 수정

- 스페인어 버전에서 요구사항 7.1의 번역 문제 수정
- 감사의 글에 새로운 번역자 추가

## V1.1.2 - 2019년 1월 3일 - 후원 및 국제화

다음 변경 사항은 릴리스 1.1.2의 일부입니다:

- 전자책 구매자에게 감사의 말 추가.
- V4에서 누락 된 인증 링크 및 업데이트 된 인증 링크 추가.
- 영어 버전 4.7과 4.8가 바뀌어 있던 문제 수정.
- 국제 버전 초판 출시!
  - 스페인어 번역 수정. 번역은 현재 영어(1.1.2)와 일치.
  - 러시아어 번역 수정. 번역은 현재 영어(1.1.2)와 일치.
  - 중국어(ZHTW:번체), 프랑스어, 독일어, 일본어를 처음 추가!
- 번역이 용이하도록 문서 간소화.
- 자동 릴리스에 대한 지침 추가.

## V1.1.0 - 2018년 7월 14일

다음 변경 사항은 릴리스 1.1.0의 일부입니다:

- 요구사항 2.6 "민감한 데이터를 포함할 수 있는 텍스트 필드에서 클립보드를 비활성화하여야 한다." 제거.
- 요구사항 2.2 "민감한 데이터는 앱 컨테이너 또는 시스템 자격 증명 저장 시설 외부에 저장하지 않아야 한다." 추가.
- 요구사항 2.1 "개인 식별 정보(PII), 사용자 자격 증명 암호화 키 같은 중요한 데이터를 저장하기 위해 시스템 자격 증명 저장 기능을 적절하게 사용하여야 한다."로 수정.

## V1.0 - 2018년 1월 12일

다음 변경 사항은 릴리스 1.0의 일부입니다:

- 8.12와 동일하게 8.9 삭제
- 4.6 일반적인 표현으로 변경
- 사소한 수정 (오타 등)
