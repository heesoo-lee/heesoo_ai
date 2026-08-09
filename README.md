# TP 업무 소개 (샘플 웹사이트)

이 저장소는 'TP 업무 소개' 샘플 홈페이지와 운영 자동화 스크립트를 포함합니다.

파일 목록
- [index.html](index.html) : 메인 웹페이지
- [styles.css](styles.css) : 스타일 시트
- [scripts/](scripts/) : 배포/백업/로그정리/상태점검/재기동 샘플 스크립트

빠른 시작
1. 웹브라우저로 [index.html](index.html) 열기 (로컬 파일로 바로 열어도 동작합니다).

2. 스크립트 실행 예시
```bash
cd /workspaces/heesoo_ai
chmod +x scripts/*.sh
# 상태 점검
./scripts/check_status.sh
# 백업 예시
./scripts/backup.sh /etc ./backups
# 로그 정리
./scripts/log_cleanup.sh ./logs 30
```

주의사항
- 제공된 스크립트는 샘플입니다. 실제 운영환경에 적용하기 전에 반드시 검토하고 환경에 맞게 수정하세요.

무료 웹호스팅 (GitHub Pages)
---------------------------

이 저장소는 정적 사이트(`index.html`, `styles.css`)로 구성되어 있어 GitHub Pages를 통해 무료로 호스팅할 수 있습니다. 아래 절차를 따르면 자동 배포가 설정됩니다.

1. 이 저장소를 GitHub에 푸시합니다 (원격 repo가 없는 경우 `gh repo create` 또는 GitHub에서 새 리포지토리를 생성).
2. 브랜치는 `master`를 사용합니다. `master` 브랜치에 푸시할 때마다 GitHub Actions가 실행되어 사이트를 Pages로 배포합니다.
3. GitHub 리포지토리의 `Settings > Pages`에서 도메인/퍼블리시 소스가 자동으로 설정되었는지 확인합니다.

참고: Actions 워크플로 파일은 `.github/workflows/deploy-pages.yml`에 추가되어 있습니다. 권한 설정은 기본적으로 필요 없지만, 조직 정책이나 브랜치 보호 설정이 있는 경우 추가 구성이 필요할 수 있습니다.

