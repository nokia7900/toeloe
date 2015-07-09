<div id="main">
	<h2>Quản lý thành viên <span id="add-post"><a href="<?php echo base_url().'admin/auth/add_auth'; ?>">Thêm thành viên mới</a></span></h2>

    <div id="posts">
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
        	<tr id="first-row">
            	<td width="5%">User ID</td>
                <td width="45%">User Name</td>
                <td width="25%">User Email</td>
                <td width="15%">User Status</td>
                <td width="5%">Edit</td>
                <td width="5%">Delete</td>
            </tr>
        <?php foreach ($auth as $key => $value) : ?>
            <tr class="post-item">
            	<td><?php echo $value['user_id']; ?></td>
                <td><a href="#"><?php echo $value['user_name'] ?></a></td>
                <td><?php echo $value['user_email']; ?></td>
                <td><?php echo $value['user_status']; ?></td>
                <td><a href="<?php echo base_url().'admin/auth/edit_auth/'.$value['user_id']; ?>">Edit</a></td>
                <td><a href="<?php echo base_url().'admin/auth/delete_auth/'.$value['user_id']; ?>">Delete</a></td>
            </tr>
        <?php endforeach; ?>
        </table>
    </div>

    <div id="pagination"><?php echo $pagination; ?></div>
</div>
