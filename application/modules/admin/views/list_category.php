<div id="main">
	<h2>Quản lý Danh Mục <span id="add-post"><a href="<?php echo base_url().'admin/category/add_category'; ?>">Thêm danh mục mới</a></span></h2>

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
            <?php foreach ($category as $key => $value) : ?>
            <tr class="post-item">
                    <td><?php echo $value['cat_id'] ?></td>
                    <td><a href="#"><?php echo $value['cat_name']; ?></a></td>
                    <td><?php echo $value['cat_status']; ?></td>
                    <td><?php echo date('d/m/Y h:i:s', $value['cat_date']); ?></td>
                    <td><a href="<?php echo base_url().'admin/category/edit_category/'.$value['cat_id']; ?>">Edit</a></td>
                    <td><a href="<?php echo base_url().'admin/category/delete_category/'.$value['cat_id']; ?>">Delete</a></td>
            </tr>
            <?php endforeach; ?>
        </table>
    </div>

    <div id="pagination"><?php echo $pagination; ?></div>
</div>
<!-- End Main -->