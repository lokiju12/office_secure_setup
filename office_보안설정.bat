
@echo off

echo 네트워크상의 신뢰할 수 있는 위치 허용
reg add "HKEY_CURRENT_USER\software\policies\microsoft\office\16.0\excel\security\trusted locations" /v allownetworklocations /t REG_DWORD /d 1 /f > nul 2>&1
reg add "HKEY_CURRENT_USER\software\policies\microsoft\office\16.0\powerpoint\security\trusted locations" /v allownetworklocations /t REG_DWORD /d 1 /f > nul 2>&1
reg add "HKEY_CURRENT_USER\software\policies\microsoft\office\16.0\word\security\trusted locations" /v allownetworklocations /t REG_DWORD /d 1 /f > nul 2>&1

echo outlook에서 연 첨부 파일에 대해 제한된 보기 해제
reg add "HKEY_CURRENT_USER\software\policies\microsoft\office\16.0\excel\security\protectedview" /v disableattachmentsinpv /t REG_DWORD /d 1 /f > nul 2>&1
reg add "HKEY_CURRENT_USER\software\policies\microsoft\office\16.0\powerpoint\security\protectedview" /v disableattachmentsinpv /t REG_DWORD /d 1 /f > nul 2>&1
reg add "HKEY_CURRENT_USER\software\policies\microsoft\office\16.0\word\security\protectedview" /v disableattachmentsinpv /t REG_DWORD /d 1 /f > nul 2>&1

echo 신뢰할 수 없는 텍스트 기반 파일 제한된 보기 해제
reg add "HKEY_CURRENT_USER\software\policies\microsoft\office\16.0\excel\security\protectedview" /v enableforeigntextfileprotectedview /t REG_DWORD /d 0 /f > nul 2>&1
reg add "HKEY_CURRENT_USER\software\policies\microsoft\office\16.0\powerpoint\security\protectedview" /v enableforeigntextfileprotectedview /t REG_DWORD /d 0 /f > nul 2>&1
reg add "HKEY_CURRENT_USER\software\policies\microsoft\office\16.0\word\security\protectedview" /v enableforeigntextfileprotectedview /t REG_DWORD /d 0 /f > nul 2>&1

echo 안전하지 않은 위치에 있는 파일을 제한된 보기에서 열지 않음
reg add "HKEY_CURRENT_USER\software\policies\microsoft\office\16.0\excel\security\protectedview" /v disableunsafelocationsinpv /t REG_DWORD /d 1 /f > nul 2>&1
reg add "HKEY_CURRENT_USER\software\policies\microsoft\office\16.0\powerpoint\security\protectedview" /v disableunsafelocationsinpv /t REG_DWORD /d 1 /f > nul 2>&1
reg add "HKEY_CURRENT_USER\software\policies\microsoft\office\16.0\word\security\protectedview" /v disableunsafelocationsinpv /t REG_DWORD /d 1 /f > nul 2>&1

echo 인터넷 영역에서 가져온 파일을 제한된 보기에서 열지 않음
reg add "HKEY_CURRENT_USER\software\policies\microsoft\office\16.0\excel\security\protectedview" /v disableinternetfilesinpv /t REG_DWORD /d 1 /f > nul 2>&1
reg add "HKEY_CURRENT_USER\software\policies\microsoft\office\16.0\powerpoint\security\protectedview" /v disableinternetfilesinpv /t REG_DWORD /d 1 /f > nul 2>&1
reg add "HKEY_CURRENT_USER\software\policies\microsoft\office\16.0\word\security\protectedview" /v disableinternetfilesinpv /t REG_DWORD /d 1 /f > nul 2>&1

echo 제한된 보기에서 로컬 인트라넷 UNC에 있는 파일 열기
reg add "HKEY_CURRENT_USER\software\policies\microsoft\office\16.0\excel\security\protectedview" /v disableintranetcheck /t REG_DWORD /d 1 /f > nul 2>&1
reg add "HKEY_CURRENT_USER\software\policies\microsoft\office\16.0\powerpoint\security\protectedview" /v disableintranetcheck /t REG_DWORD /d 1 /f > nul 2>&1
reg add "HKEY_CURRENT_USER\software\policies\microsoft\office\16.0\word\security\protectedview" /v disableintranetcheck /t REG_DWORD /d 1 /f > nul 2>&1

echo 항상 제한된 보기에서 신뢰할 수 없는 데이터베이스 파일 열기
reg add "HKEY_CURRENT_USER\software\policies\microsoft\office\16.0\excel\security\protectedview" /v enabledatabasefileprotectedview /t REG_DWORD /d 0 /f > nul 2>&1
reg add "HKEY_CURRENT_USER\software\policies\microsoft\office\16.0\powerpoint\security\protectedview" /v enabledatabasefileprotectedview /t REG_DWORD /d 0 /f > nul 2>&1
reg add "HKEY_CURRENT_USER\software\policies\microsoft\office\16.0\word\security\protectedview" /v enabledatabasefileprotectedview /t REG_DWORD /d 0 /f > nul 2>&1

echo 차단된 파일이 제한된 보기에서 열리며 편집할 수 있음
reg add "HKEY_CURRENT_USER\software\policies\microsoft\office\16.0\excel\security\fileblock" /v openinprotectedview /t REG_DWORD /d 2 /f > nul 2>&1
reg add "HKEY_CURRENT_USER\software\policies\microsoft\office\16.0\powerpoint\security\fileblock" /v openinprotectedview /t REG_DWORD /d 2 /f > nul 2>&1
reg add "HKEY_CURRENT_USER\software\policies\microsoft\office\16.0\word\security\fileblock" /v openinprotectedview /t REG_DWORD /d 2 /f > nul 2>&1

echo 최근 문서 수 0개로 설정
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Office\16.0\Excel\File MRU" /v "Max Display" /t REG_DWORD /d "0" /f > nul 2>&1
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Office\16.0\Excel\Place MRU" /v "Max Display" /t REG_DWORD /d "0" /f > nul 2>&1
reg add "HKEY_CURRENT_USER\Software\Microsoft\Office\16.0\Word\File MRU" /v "Max Display" /t REG_DWORD /d "0" /f > nul 2>&1
reg add "HKEY_CURRENT_USER\Software\Microsoft\Office\16.0\Word\Place MRU" /v "Max Display" /t REG_DWORD /d "0" /f > nul 2>&1
reg add "HKEY_CURRENT_USER\Software\Microsoft\Office\16.0\PowerPoint\File MRU" /v "Max Display" /t REG_DWORD /d "0" /f > nul 2>&1
reg add "HKEY_CURRENT_USER\Software\Microsoft\Office\16.0\PowerPoint\Place MRU" /v "Max Display" /t REG_DWORD /d "0" /f > nul 2>&1

echo 오피스 업데이트 알림 숨기기
reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Office\16.0\Common\OfficeUpdate" /v "HideUpdateNotifications" /t REG_DWORD /d "1" /f > nul 2>&1
reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\policies\Microsoft\Office\16.0\Common\OfficeUpdate" /v "HideUpdateNotifications" /t REG_DWORD /d "1" /f > nul 2>&1

echo 오피스 365 해제
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Office\16.0\Outlook\AutoDiscover" /v "ExcludeExplicitO365Endpoint" /t REG_DWORD /d "1" /f > nul 2>&1
reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Office\16.0\Outlook\AutoDiscover" /v "ExcludeHttpsRootDomain" /t REG_DWORD /d "1" /f > nul 2>&1









