#！警告：replit免费版中所有代码都是公开可见的，建议使用edu版部署
#！！初始管理员账号密码：
#！！username: shiori
#！！password: gopher
#！！添加新账号后此初始账号将自动无效

#下载1.5.2版shiori（高版本的shiori数据库无法自动初始化，故pass）
if [ ! -f "shiori" ];then
  curl -L https://github.com/go-shiori/shiori/releases/download/v1.5.2/shiori_1.5.2_Linux_x86_64.tar.gz -o shiori_1.5.2_Linux_x86_64.tar.gz
  tar -zxvf shiori_1.5.2_Linux_x86_64.tar.gz
  rm -f shiori_1.5.2_Linux_x86_64.tar.gz && rm -f LICENSE && rm -f README.md
  chmod +x shiori
fi

#启动shiori网页服务
./shiori serve --portable -p 3000
