
#!/bin/bash
set -e
# appspec의 files 섹션이 ROOT.war 덮어쓰기 하므로 여기선 권한/정리만
chown tomcat:tomcat /opt/tomcat/webapps/myapp.war
# (선택) 이전 exploded 디렉터리 제거
rm -rf /opt/tomcat/webapps/myapp
