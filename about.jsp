<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=640px, user-scalable=no">
    <title>学校通行证</title>
    <link rel="stylesheet" href="style_2.css">
    
</head>
<body>
<%
String studentname =request.getParameter("studentname");
String studentnumber = request.getParameter("studentnumber");
String acadme = request.getParameter("academe");
%>
        <div class="back">
            <div class="logo">
    
            </div>
            <div class="basic">
                <div class="img">
                    <img id="preview" />
                    <br />
                    <input type="file" name="file" onchange="imgPreview(this)" >
                </div>
                <div class="info">
                    <div class="info_1">
                            姓名：<input type="text" placeholder="姓名" value="<%=studentname%>" >
                    </div>
                    <div class="info_2">
                            学院：<input type="text" placeholder="班级" value="<%=acadme%>" >
                    </div>
                    <div class="info_3">
                            学号：<input type="text" placeholder="学号" value="<%=studentnumber%>" >
                    </div>
                    
                    <div class="clock">
                        <span id="t_1">现在时刻：</span>
                        <span id="now"></span>
                        
                        <p id="time">
                            12:12:12 AM
                        </p>

                </div>
                    <div class="forbid_1">
                        
                    </div>
                    <div class="forbid_2">
                        <div class="text">
                            暂无出校权限
                        </div>
                    </div>
                    <div class="list">
                        <div class="list_1">
                            1.请您去学生外出报备申请中进行出校申请。
                        </div>
                        <div class="list_2">
                            2.使用过程中如出现误点请联系辅导员进行沟通。
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
        
        <script src="index.js" type="text/javascript"></script>
<script>
     var myDate = new Date();
            var year = myDate.getFullYear();
            function getM(){
                var month = myDate.getMonth()
                if(month<10)
                {
                    return("0"+month)
                }
                else{
                    return(month)
                }
            }
            function getD(){
                var date = myDate.getDate()
                if(date<10)
                {
                    return("0"+date)
                }
                else{
                    return(date)
                }
            }
            function getMin(){
                var min = myDate.getMinutes()
                if(min<10)
                {
                    return("0"+min)
                }
                else{
                    return(min)
                }
            }
            function getH(){
                var hours = myDate.getHours();
                if(hours>12)
                {
                    hours = hours - 12;
                    return("0"+hours);
                }
                if(hours<10)
                {
                    return("0"+hours);
                }
                else{
                    return(hours)
                }
            }
            

            //获取now现在时刻
            var Now = document.getElementById("now");
            Now.innerHTML = year+"-"+getM()+"-"+(getD())+" "
</script>
</body>
</html>