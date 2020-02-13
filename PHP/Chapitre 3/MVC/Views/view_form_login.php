<?php include "view_begin.php"; ?>
<h2>Login</h2>
<form action="?controller=user&action=login" method="post">
    <p>
        Login
        <input type="text" name="login">
    </p>

    <p>
        Password
        <input type="password" name="password">
    </p>
    <input type="submit">
</form>
<?php include "view_end.php"; ?>