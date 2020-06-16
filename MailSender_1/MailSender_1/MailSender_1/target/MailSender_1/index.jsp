<html>
<body>


<p>Email form</p>
<form method="post" action="path">
    <input hidden type="text" name="strategy" value="sendEmail"/>
    <label>
        Your email: <input type="email" name="email" value=""  style="border-radius: 6px; height: 25px; margin: 8px" required /> <br/>
    </label>
    <label>
        Password: <input type="password" name="password" value="" required style="border-radius: 6px; height: 25px; margin: 10px" /><br/>
    </label>
    <label>
        Send to: <input   type="email" name="email2" value="" required style="border-radius: 6px; height: 25px; margin: 20px" /> <br/>
    </label>


    <label>
        Text: <br/> <textarea style="border-radius: 10px" name="text" style="height: 50px; width: 220px; margin: 50px" required></textarea><br/>
    </label>


    <button style="border-radius: 6px;  margin-top: 20px;  font-family: Arial ;  background: bisque  "  type="submit">Send Email</button>
</form>
</body>
</html>
