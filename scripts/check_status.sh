#!/usr/bin/env bash
set -euo pipefail
# 시스템 상태 점검 샘플

echo "=== CPU 사용률 (top 1줄) ==="
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6

echo "\n=== 메모리 요약 ==="
free -h

echo "\n=== 디스크 사용량 ==="
df -h --output=source,fstype,size,used,avail,pcent,target | sed -n '1,6p'

echo "\n=== 주요 프로세스 상태 (예: myservice) ==="
pgrep -a myservice || echo "myservice 미실행"

echo "\n=== 종료 ==="
