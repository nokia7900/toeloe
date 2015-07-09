
<div id="main">
	<h2>Bài mới</h2>

    <div id="new-post">
        <form method="post" action="<?php echo base_url('admin/auth/edit_auth/'.$auth['user_id']); ?>">
        <table border="0" cellpadding="0" cellspacing="0">
        	<tr>
            	<td id="post-title"><label>User Name</label><br /><input type="text" name="post_user" value="<?php echo set_value('post_user', $auth['user_name']); ?>" /> <?php echo form_error('post_user', '<span>', '</span>'); ?><?php if (isset($user_err)) {echo '<span>'.$user_err.'</span>';}; ?></td>
            </tr>
            <tr>
                <td id="post-title"><label>Password</label><br /><input type="password" name="post_password" /> <?php echo form_error('post_password', '<span>', '</span>'); ?></td>
            </tr>
            <tr>
                <td id="post-title"><label>Password Confirm</label><br /><input type="password" name="post_passwordcf" /> <?php echo form_error('post_passwordcf', '<span>', '</span>'); ?></td>
            </tr>
            <tr>
                <td id="post-title"><label>User Email</label><br /><input type="email" name="post_email" value="<?php echo set_value('post_email', $auth['user_email']); ?>" /> <?php echo form_error('post_email', '<span>', '</span>'); ?></td>
            </tr>
            <tr>
                <td><label>Thành viên đặc biệt</label><br />Có
                <input type="radio" name="post_featured" value=1 <?php echo set_radio('post_featured', '1'); ?>/> Không
                <input type="radio" name="post_featured" value=0 <?php echo set_radio('post_featured', '0', TRUE); ?> /></td>
            </tr>
            <tr>
            	<td><input type="submit" name="submit" value="Gửi bài" /> <input type="reset" name="reset" value="Làm mới" /></td>
            </tr>
        </table>
        </form>
    </div>
</div>