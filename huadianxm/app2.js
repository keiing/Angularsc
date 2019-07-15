const http=require("http");
const url=require("url");
http.createServer(
//每当客户端发来请求时
//自动调用一下回调函数
(req,res)=>{
var Url=url.parse(req.url,true);
var callback=Url.query.callback;
console.log(callback);
var weather="背景 晴"
//解决跨域 //返回的普通结果
res.writeHead(200,{"Content-Type":"text/plain;charset=utf-8"})
res.write(`${callback}("${weather}")`);//返回数据
res.end();
}
).listen(3000);

//