<?php include "view_begin.php"; ?>
<h2>Search</h2>
<form action="?controller=search&action=pagination" method="POST">
    <p>
        Name contains: <input type="text" name="name">
    </p>
    <p>
        Year :
        <select name="Sign">
            <option value="<=">
                <=</option> <option value=">=">>=
            </option>
            <option value="==">==</option>
        </select>
        <input type="text" name="year">
    </p>
    <p>
        Category
        <?php foreach ($data as $value) : ?>
            <label>
                <input type='checkbox' name='categories[]' value="<?= $value ?>"><?= $value ?>
            </label>
        <?php endforeach ?>
    </p>
    <p>
        <input type="submit" value="Search">
    </p>
    <input type="hidden" name="form" value="1">
</form>
<?php include "view_end.php"; ?>