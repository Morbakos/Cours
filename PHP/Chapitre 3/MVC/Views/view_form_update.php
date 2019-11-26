<?php require "view_begin.php";?>

<form action="?controller=set&action=update" method="POST">
    <p>
        <label>
            Name
            <input type="text" name="name" value="<?=$data['name']?>">
        </label>
    </p>

    <p>
        <label>
            Year
            <input type="text" name="year" value="<?=$data['year']?>">
        </label>
    </p>

    <p>
        <label>
            Birth date
            <input type="text" name="birthdate" value="<?=$data['birthdate']?>">
        </label>
    </p>

    <p>
        <label>
            Birth place
            <input type="text" name="birthplace" value="<?=$data['birthplace']?>">
        </label>
    </p>

    <p>
        <label>
            Country
            <input type="text" name="county" value="<?=$data['county']?>">
        </label>
    </p>

    <p>
        Category
        <?php foreach ($categories as $value): ?>
            <label>
                <?php if($value == $data['category']): ?>
                    <input type='radio' name='category' value="<?=$value?>" checked><?=$value?>
                <?php else: ?>
                    <input type='radio' name='category' value="<?=$value?>"><?=$value?>
                <?php endif ?>
            </label>
        <?php endforeach ?>
    </p>

    <textarea name="Motivation" cols="70" rows="10" value="<?=$data['motivation']?>"></textarea>

    <input type="hidden" name="id" value="<?=$data['id']?>">

    <p>
        <label>
            <input type="submit" value="Update">
        </label>
    </p>

</form>

<?php require "view_end.php"; ?>