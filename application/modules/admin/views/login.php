<form method="post" action="<?php echo base_url('admin/auth/login'); ?>">
    <div id="login">
        <h2>Đăng nhập hệ thống quản trị</h2>
        <ul id="login-form">
            <li class="inp"><label>Tài khoản</label><input class="left_1" type="text" name="user" value="<?php set_value('user'); ?>" /> <span><?php echo form_error('user'); ?></span></li>
            <li class="inp"><label>Mật khẩu</label><input  class="left_1" type="password" name="pass" value="<?php set_value('pass'); ?>" /> <span><?php echo form_error('pass'); ?></span></li>
            <li><label>Ghi nhớ</label><input checked="checked" type="checkbox" name="check" value="<?php set_value('check'); ?>" /></li>
            <li><input type="submit" name="submit" value="Đăng nhập" /> <input type="reset" name="reset" value="Làm mới" /></li>
        </ul>
    </div>
</form>