#!/usr/bin/env bash
set -euo pipefail
# 간단한 백업 샘플
# 사용법: ./backup.sh <source-path> [backup-dir]

SOURCE=${1:-/etc}
DEST=${2:-./backups}
mkdir -p "$DEST"
TIMESTAMP=$(date +"%Y%m%dT%H%M%S")
ARCHIVE="$DEST/backup-$(basename "$SOURCE")-$TIMESTAMP.tar.gz"

echo "백업 시작: $SOURCE -> $ARCHIVE"
tar -czf "$ARCHIVE" -C "$(dirname "$SOURCE")" "$(basename "$SOURCE")"
echo "백업 완료: $ARCHIVE"
