#!/usr/bin/env bash
set -euo pipefail
# 로그 정리 샘플: 기본은 ./logs 폴더, 30일 이전 로그 gzip 혹은 삭제

LOG_DIR=${1:-./logs}
RETENTION_DAYS=${2:-30}

echo "로그 정리: 디렉터리=$LOG_DIR, 보관일수=$RETENTION_DAYS"
mkdir -p "$LOG_DIR"
# 압축되지 않은 오래된 로그는 gzip
find "$LOG_DIR" -type f -mtime +$RETENTION_DAYS -name "*.log" -exec gzip -9 {} \;
# 365일 이상된 gzip 파일은 삭제
find "$LOG_DIR" -type f -mtime +365 -name "*.gz" -print -delete

echo "로그 정리 완료"
