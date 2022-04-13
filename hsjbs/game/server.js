var http = require('http');
var fs = require('fs');
var url = require('url');
var path = require('path');
var suffixUtil = require('./utils/suffixUtil')

//创建连接一个http服务器
var server = http.createServer(function(req, res) {
    //声明变量存储获取到请求路径
    var filePath = '.' + url.parse(req.url).pathname;
    //当端口号后面没有跟东西时，跳转到index文件中
    if (filePath === './') {
        filePath = './views/index.html'
    }
    //判断当访问到已存在文件夹名或代码文件时，跳转到err
    if (filePath === './img' || filePath === './views' || filePath === './server.js') {
        filePath = './views/err.html'
    }
    //判断路径是否存在
    fs.exists(filePath, function(exists) {
        //如果存在
        if (exists) {
            //读取请求文件
            var readData = fs.readFileSync(filePath);
            //获取文件后缀
            var extname = path.extname(filePath);
            //通过自定义包根据文件后缀名获取到对应的类型
            var contentType = suffixUtil[extname];
            //设置响应头
            res.writeHead(200, {
                'Content-type': contentType
            });
            //设置响应内容
            res.write(readData);
            //设置响应尾
            res.end();
            //如果不存在    
        } else {
            //声明变量存储错误页面路径
            var data = fs.readFileSync('./views/err.html');
            //设置响应头
            res.writeHead(200, {
                'Content-type': 'text/html'
            });
            //设置响应内容
            res.write(data);
            //设置响应尾
            res.end();
        }
    })
});

server.listen(8848, function() {
    console.log('server runnig');
});