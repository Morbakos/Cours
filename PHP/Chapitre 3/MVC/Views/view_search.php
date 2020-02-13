<?php include "view_begin.php"; ?>

<table>
    <tbody>
        <tr>
            <th>Name</th>
            <th>Category</th>
            <th>Year</th>
        </tr>
        <?php foreach ($nobels as $v) : ?>
            <tr>
                <td>
                    <a href='?controller=list&action=informations&id=<?= e($v['id']) ?>'> <?= e($v['name']) ?> </a>
                </td>
                <td>
                    <?= e($v['category']) ?>
                </td>
                <td>
                    <?= e($v['year']) ?>
                </td>
                <td class="sansBordure">
                    <a href="?controller=set&action=form_update&id=<?= $v['id'] ?>"><img src="Content/img/edit-icon.png" class="icone" /></a>
                </td>
                <td class="sansBordure">
                    <a href="?controller=set&action=remove&id=<?= $v['id'] ?>"><img src="Content/img/remove-icon.png" class="icone" /></a>
                </td>
            </tr>
        <?php endforeach ?>
</table>

<?php if ($nbPage > 1) : ?>

    <p class="listePages">
        <a href="?controller=search&action=pagination&start=<?= $start - 1 ?>"><img class="icone" src="Content/img/previous-icon.png"></a>
        <?php for ($i = 1; $i <= $nbPage; $i++) : ?>

            <?php if ($i == $start) : ?>
                <a href="?controller=search&action=pagination&start=<?= $i ?>" class="lienStart active"> <?= $i ?> </a>
            <?php else : ?>
                <a href="?controller=search&action=pagination&start=<?= $i ?>" class="lienStart"> <?= $i ?> </a>
            <?php endif ?>

        <?php endfor ?>
        <a href="?controller=search&action=pagination&start=<?= $start + 1 ?>"><img class="icone" src="Content/img/next-icon.png"></a>
    </p>


<?php endif;
include "view_end.php"; ?>