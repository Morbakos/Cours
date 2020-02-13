<table>
    <tbody>
        <tr>
            <th>Name</th>
            <th>Category</th>
            <th>Year</th>
        </tr>
        <?php foreach ($last25 as $v) : ?>
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