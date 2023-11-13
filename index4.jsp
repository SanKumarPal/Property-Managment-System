

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style> 
body{<%--  --%>
    min-height: 100vh;
    background: purple;
}
.container{
width:100%;
height: 100vh;
display: flex;
align-items: center;
justify-content: center;
}
.btn{
padding: 10px 60px;
background: #fff;
border: 0;
outline: none;
cursor: pointer;
font-size: 22px;
font-weight: 500;
border-radius: 30px;
}
.popup{
width: 400px;
background: #fff;
border-radius: 6px;
position: absolute;
top: 50%;
left: 50%;
transform: translate(-50%, -50%) ;
text-align: center;
padding: 0 30px 30px;
color: #333;
}
 .popup button{
 width:100%;
 margin-top:50px;
 padding: 10px 0;
 background:#eee;
 border:0;
 outline:none;
 font-size:18px;
 border-radius : 4px;
 cursor: pointer;
 box-shadow:0 2px 5px rgba(0,0,0,0.2);
 }
</style>
<body>

<div class="container">
  <div class="popup" id="popup">
   <h1>Your email-id or password invalid ! </h1>
  <a href="./index2.html" ><button type="button">Close</button></a>
    </div>
 </div>
</body>
</html>



