function fnLogin() {
    var oUname = document.getElementById("userNname").value
    var oUpass = document.getElementById("password").value
    var oError = document.getElementById("error_box")
    var isError = true;
    if (oUname == "admin" && oUpass =="admin") {
        window.alert("登录成功")
        window.open("../index.html");
    }
    else 
    {
        window.alert('账号或密码错误')
    }
    
    var sql=c=request('mysql')

    var conn = mysql.createConnection({
        host: 'localhost',
        user: 'root',
        password: '123456',
        port:'3306',
        database: ''
    })
    conn.connect();
    var sql = 'select * from t_stu';
    conn.query(sql,function(err,res)
    {
        if(err){
            console.log('连接失败');
        }
        console.log(res);
    })
}
function reg(){
    window.open("register.html");
}
   
   