
从staffcenter导出用户的sql：
SELECT name as `Name`,concat(mobile,"@cgws.com") as `Email`,"cgws1234" as `Password`,"user" as `Role` FROM `se_staff` where deleted = 0 and state_code = 0;

http://127.0.0.1:8080?email=18813863231@cgws.com&password=cgws1234&model=ai-assistant
http://127.0.0.1:8080?email=18813863231@cgws.com&password=cgws1234&model=research

http://127.0.0.1:8080/?email=test@cgws.com&password=123&model=deepseek-r1-distill-llama-70b