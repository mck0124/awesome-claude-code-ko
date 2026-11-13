# 프로젝트 이름

한 줄 설명: 이 프로젝트가 무엇인지 (예: 사내 주문 관리 API 서버)

## 명령어
- 설치: `npm install`
- 개발 서버: `npm run dev`
- 테스트: `npm test` (단일 파일: `npm test -- path/to/file.test.ts`)
- 린트/타입체크: `npm run lint && npm run typecheck`

## 구조
- `src/api/` — 라우터와 컨트롤러
- `src/services/` — 비즈니스 로직 (DB 직접 접근 금지, `repositories/` 통해서만)
- `src/repositories/` — DB 쿼리
- `tests/` — `src/`와 같은 구조로 미러링

## 코드 규칙
- TypeScript strict, `any` 금지 (불가피하면 이유를 주석으로)
- 에러는 삼키지 말고 `AppError`로 감싸서 던진다
- 새 기능에는 테스트를 같이 추가한다

## 작업 방식
- 변경 후 반드시 `npm run lint && npm test`를 돌리고 결과를 알려 준다
- 커밋·push는 요청받았을 때만 한다
- 요청 범위를 벗어난 리팩터링은 제안만 하고 하지 않는다

## 알려진 함정
- (여기에 "처음 보면 헷갈리는 것"을 적는다. 예: `orders` 테이블의 `status`는 문자열이지만 enum처럼 쓰인다)
