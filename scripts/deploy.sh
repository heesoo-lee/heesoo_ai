#!/usr/bin/env bash
set -euo pipefail
# 배포 자동화 샘플
# 사용법: ./deploy.sh <service-name> <build-dir> [remote-host]

SERVICE=${1:-myservice}
BUILD_DIR=${2:-./build}
REMOTE=${3:-localhost}
REMOTE_DIR=/opt/${SERVICE}

echo "배포: 서비스=${SERVICE}, 빌드=${BUILD_DIR}, 대상=${REMOTE}"
# 예: rsync로 바이너리 전송(환경에 맞게 수정)
rsync -avz --delete "$BUILD_DIR/" "${REMOTE}:${REMOTE_DIR}/"

echo "원격에서 서비스 재시작 요청: ${SERVICE}"
ssh "$REMOTE" "sudo systemctl restart ${SERVICE} || sudo systemctl restart ${SERVICE}.service"

echo "배포 완료"
