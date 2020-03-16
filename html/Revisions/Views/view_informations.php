<?php require "view_begin.php"; ?>

<ul>
    <li>
        Year : <?= e($year) ?>
    </li>

    <li>
        Category : <?= e($category) ?>
    </li>

    <li>
        Name : <?= e($name) ?>
    </li>

    <li>
        Birthdate : <?= e($birthdate) ?>
    </li>

    <li>
        Birthplace : <?= e($birthplace) ?>
    </li>

    <li>
        County : <?= e($county) ?>
    </li>

    <li>
        Motivation : <?= e($motivation) ?>
    </li>
</ul>

<?php require "view_end.php"; ?>