<div id="main">
    <h2>Quản lý bài viết <span id="add-post"><a href="<?php echo base_url().'admin/articles/add_articles/' ?>">Viết bài mới</a></span></h2>

    <div id="posts">
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr id="first-row">
                <td width="5%">ID</td>
                <td width="45%">Title</td>
                <td width="25%">Category</td>
                <td width="15%">Date</td>
                <td width="5%">Edit</td>
                <td width="5%">Delete</td>
            </tr>
            <?php foreach ($articles as $key => $value) : ?>
                <tr class="post-item">
                    <td><?php echo $value['news_id']; ?></td>
                    <td><a href="<?php echo base_url().'admin/articles/edit_articles/'.$value['news_id']; ?>"><?php echo $value['news_title']; ?></a></td>
                    <td><?php echo $value['cat_name']; ?></td>
                    <td><?php echo date('d/m/Y h:i:s', $value['news_date']); ?></td>
                    <td><a href="<?php echo base_url().'admin/articles/edit_articles/'.$value['news_id']; ?>">Edit</a></td>
                    <td><a href="<?php echo base_url().'admin/articles/delete_articles/'.$value['news_id']; ?>">Delete</a></td>
                </tr>
            <?php endforeach; ?>
        </table>
    </div>
    <div id="pagination"><?php echo $pagination; ?></div>
</div>