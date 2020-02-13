<?php require "view_begin.php"; ?>

<table>
    <tbody>
        <tr>
            <th>Name</th>
            <th>Category</th>
            <th>Year</th>
        </tr>

        <?php foreach ($last as $v) : ?>
            <tr>
                <td>
                    <a href='?controller=list&action=informations&id=<?= e($v['id']) ?>'> <?= e($v['name']) ?></a>
                </td>
                <td>
                    <?= e($v['category']) ?>
                </td>
                <td>
                    <?= e($v['year']) ?>
                </td>
            </tr>
        <?php endforeach ?>

    </tbody>
</table>
<?php require "view_end.php"; ?>