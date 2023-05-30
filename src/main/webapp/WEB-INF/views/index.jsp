<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 29/05/2023
  Time: 5:28 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Caculator</h1>
<form method="post">

  <input id="action" type="text" name="action" hidden>
    <table>
        <tr>
            <td colspan="2"><input  type="number" name="num1" value="0"></td>
            <td colspan="2"><input  type="number" name="num2" value="0" ></td>
        </tr>
        <tr>
            <td>
                <button class="button-submit" type="submit">Addition(+)</button>
            </td>
            <td>
                <button class="button-submit" type="submit">Subtraction(-)</button>
            </td>
            <td>
                <button class="button-submit" type="submit">Multiplication(X)</button>
            </td>
            <td>
                <button class="button-submit" type="submit">Division(/)</button>
            </td>
        </tr>
        <tr>
            <td>Result</td>
            <td colspan="3">${result}</td>
        </tr>

    </table>
</form>
<script>
    let btn = document.getElementsByClassName("button-submit");
    console.log(btn);
    for (let i = 0; i < btn.length; i++) {
      btn[i].addEventListener('click',()=>{
        let action = document.getElementById("action");
        console.log(i+"<---i")
        switch (i){
          case 0:
            action.value= "add";
            break;
          case 1:
            action.value ="sub";
            break;
          case 2:
            action.value= "mul";
            break;
          case 3:
            action.value = "div";
            break;
        }
      })
    }
</script>
</body>
</html>
