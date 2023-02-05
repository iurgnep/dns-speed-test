# dns-speed-test

**测试dns服务器的响应时间**

一、相关文件  
dns_speed_test.sh：执行测试功能的shell脚本  
dns_servers.txt：包含dns服务器列表的配置文件
  
二、使用方法  
（一）指定DNS服务器地址  
dns_servers.txt文件中已经包含了国内外的知名DNS服务器IP：  
#google  
8.8.8.8  
#Norton Connectsafe  
199.85.126.30  
#OpenDNS  
208.67.222.222  
#Level3  
209.244.0.3  
#DNS Advantage  
156.154.70.1  
#OpenNIC  
46.151.208.154  
#Dyn  
216.146.35.35  
#SafeDNS  
195.46.39.39  
#DNS.Watch  
84.200.69.80  
#cloudflare  
1.1.1.1  
#AdGuard DNS  
94.140.14.14  
#Quad9 DNS  
9.9.9.9  
#114DNS  
114.114.114.114  
#阿里AliDNS  
223.5.5.5  
#百度BaiduDNS  
180.76.76.76  
#DNSPod DNS+  
119.29.29.29  
#CNNIC SDNS  
1.2.4.8  
#oneDNS  
117.50.11.11  
#DNS派（电信/移动/铁通）  
101.226.4.6  
#DNS派（联通）  
123.125.81.6  
  
可将文件内容替换为需要测试的任意DNS服务器地址，注意，DNS服务器IP地址以外的内容一定要注释掉。  
  
（二）执行测试  
./dns_speed_test.sh  
<img width="497" alt="image" src="https://user-images.githubusercontent.com/63601413/216840881-d42d40d0-cb70-42ac-8b32-e2929b5688ab.png">  
输出中的average query time是针对指定dns服务器进行10次查询后计算出的平均值。
