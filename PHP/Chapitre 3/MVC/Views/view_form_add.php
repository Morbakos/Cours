<?php require "view_begin.php"; ?>

<form action="?controller=set&action=add" method="POST">
    <p>
        <label>
            Name
            <input type="text" name="name">
        </label>
    </p>

    <p>
        <label>
            Year
            <input type="text" name="year">
        </label>
    </p>

    <p>
        <label>
            Birth date
            <input type="text" name="birthdate">
        </label>
    </p>

    <p>
        <label>
            Birth place
            <input type="text" name="birthplace">
        </label>
    </p>

    <p>
        <label>
            Country
            <input type="text" name="county">
        </label>
    </p>

    <p>
        Category
        <?php foreach ($data as $value): ?>
            <label>
                <input type='radio' name='category' value="<?=$value?>"><?=$value?>
            </label>
        <?php endforeach ?>
    </p>

    <textarea name="Motivation" cols="70" rows="10"></textarea>

    <p>
        <label>
            <input type="submit" value="add to database">
        </label>
    </p>

</form>

<?php require "view_end.php"; ?>