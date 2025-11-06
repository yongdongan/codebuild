
#!/bin/bash
set -e
# 로컬 헬스체크 (8080)
curl -sf http://127.0.0.1:8080/myapp/hello -o /dev/null
