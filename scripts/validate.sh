
#!/bin/bash
set -e
# 로컬 헬스체크 (8080)

for i in $(seq 1 "24"); do
  if curl -fsS --connect-timeout "2" --max-time "5" "http://127.0.0.1:8080/hello" -o /dev/null; then
    echo "[Validate] OK at attempt ${i}"
    exit 0
  fi
  echo "[Validate] not ready yet... attempt ${i}/24"
  sleep "5"
done

echo "[Validate] FAILED: service not ready"
# 연결 실패 의미를 맞추고 싶다면 7로 종료
exit 7
