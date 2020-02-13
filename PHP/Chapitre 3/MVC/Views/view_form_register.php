<?php include "view_begin.php"; ?>
<h2>Register</h2>
<form action="?controller=user&action=register" method="post">
    <p>
        Login
        <input type="text" name="login">
    </p>

    <p>
        Password
        <input type="password" name="password"><br>
        Retype password
        <input type="password" name="passwordverify">
    </p>
    <input type="submit">
</form>
<?php include "view_end.php"; ?>