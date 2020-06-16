<html>
<body>


<h3>Email form</h3>
<form method="post" action="path">
    <input hidden type="text" name="strategy" value="sendEmail"/>
    <label>
        Your email: <input type="email" name="email" value="smal_david@mail.ru" required style="margin: 5px"/> <br/>
    </label>
    <label>
        Password: <input type="password" name="password" value="5472935zarina" required style="margin: 5px"/><br/>
    </label>
    <label>
        Send to: <input type="email" name="email2" value="smal_david@mail.ru" required style="margin: 5px"/> <br/>
    </label>


    <label>
        Text: <br/> <textarea name="text" style="height: 100px; width: 220px; margin: 5px" required></textarea><br/>
    </label>

    <p><%=(request.getAttribute("isEmailSend") == null) ? "" :
            ((Boolean) request.getAttribute("isEmailSend")) ? "Email is sent" : "Email was not sent"%>
    </p>
    <button type="submit">Send Email</button>
</form>
</body>
</html>
