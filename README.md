# Desktop Pet

Godot 4.5로 만든 데스크톱 펫 애플리케이션입니다.

## 기능

- 투명 배경으로 바탕화면 위에서 동작
- 펫이 화면을 자유롭게 돌아다님
- 화면 가장자리에서 튕기며 이동

## 실행 환경

- Godot 4.5
- macOS

## 빌드

1. Godot 4.5에서 프로젝트 열기
2. Project > Export에서 macOS 선택
3. Export Project 실행

## 파일 구조

```
├── main.gd          # 메인 씬 스크립트 (펫 생성, 윈도우 설정)
├── main.tscn        # 메인 씬
├── pet.gd           # 펫 동작 스크립트 (이동, 충돌)
├── pet.tscn         # 펫 씬
├── pet_1.png        # 펫 이미지
└── project.godot    # 프로젝트 설정
```
