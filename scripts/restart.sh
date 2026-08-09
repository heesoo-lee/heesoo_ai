#!/usr/bin/env bash
set -euo pipefail
# 재기동 자동화: 서비스 이름을 인수로 받아 안전하게 재시작
# 사용법: ./restart.sh <service-name>

SERVICE=${1:-}
if [ -z "$SERVICE" ]; then
  echo "사용법: $0 <service-name>" >&2
  exit 2
fi

echo "서비스 재기동: $SERVICE"
ssh localhost "sudo systemctl restart ${SERVICE} && sudo systemctl status ${SERVICE} --no-pager"
echo "재기동 명령 전송 완료"
