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
                <?php if (autorisation("can_update")) : ?>
                    <td class="sansBordure">
                        <a href="?controller=set&action=form_update&id=<?= $v['id'] ?>"><img src="Content/img/edit-icon.png" class="icone" /></a>
                    </td>
                <?php
                    endif;
                    if (autorisation("can_delete")) :
                        ?>
                    <td class="sansBordure">
                        <a href="?controller=set&action=remove&id=<?= $v['id'] ?>"><img src="Content/img/remove-icon.png" class="icone" /></a>
                    </td>
                <?php endif; ?>
            </tr>
        <?php endforeach ?>
</table>

<p class="listePages">
    <a href="?controller=list&action=pagination&start=<?= $start - 1 ?>"><img class="icone" src="Content/img/previous-icon.png"></a>
    <?php for ($i = 1; $i <= $nbPage; $i++) : ?>

        <?php if ($i == $start) : ?>
            <a href="?controller=list&action=pagination&start=<?= $i ?>" class="lienStart active"> <?= $i ?> </a>
        <?php else : ?>
            <a href="?controller=list&action=pagination&start=<?= $i ?>" class="lienStart"> <?= $i ?> </a>
        <?php endif ?>

    <?php endfor ?>
    <a href="?controller=list&action=pagination&start=<?= $start + 1 ?>"><img class="icone" src="Content/img/next-icon.png"></a>
</p>

<?php include "view_end.php"; ?>