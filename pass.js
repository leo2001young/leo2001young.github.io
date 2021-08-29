//传递参数
//1:地址 2:参数
function pass(argu1,argu2,argu3)
{
    window.location.replace("about.html"+"?itemId="+argu1+"&itemId2="+argu2+"&itemId3="+argu3);

}

//接受参数
function get(){
     //获得传过来的login与在数据库中对应的表单
     var paras = location.search;			//search获得地址中的参数，内容为'?itemId=12'
     var result = paras.match(/[^\?&]*=[^&]*/g); 	//match是字符串中符合的字段一个一个取出来，result中的值为['login=xx','table=admin']
     paras = {};					//让paras变成没有内容的json对象
     for(i in result){
         var temp = result[i].split('=');	//split()将一个字符串分解成一个数组,两次遍历result中的值分别为['itemId','xx']
         paras[temp[0]] = temp[1];
     }
     var itemId = paras.itemId;     //根据参数名"itemId"，获取参数值
     var itemId2 = paras.itemId2
     var itemId3 = paras.itemId3

     let decodeStr = decodeURIComponent(itemId)
     let decodeStr2 = decodeURIComponent(itemId2)
     let decodeStr3 = decodeURIComponent(itemId3)

    var Arr =[]
    Arr.push(decodeStr);
    Arr.push(decodeStr2);
    Arr.push(decodeStr3);
    console.log(Arr[0],Arr[1],Arr[2]) 
    return Arr

}