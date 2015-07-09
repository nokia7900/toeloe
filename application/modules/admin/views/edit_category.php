<div id="main">
    <h2>Sửa danh mục</h2>

    <div id="new-post">
        <form method="post" action="<?php echo base_url('admin/category/edit_category/'.$category['cat_id']); ?>">
        <table border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td id="post-title"><label>Tên Danh mục</label><br /><input type="text" name="post_title" value="<?php echo set_value('post-title', $category['cat_name']); ?>" /> <?php echo form_error('post_title'); ?><?php if (isset($category_err)) {echo '<span>'.$category_err.'</span>';}; ?></td>
            </tr>
            <tr>
                <td><label>Chuyên mục cha</label><br />
                    <select name="category">
                        <?php foreach ($all_category as $key => $value) : ?>
                           <option value=<?php echo $value['cat_id'] ?> <?php if ($value['cat_id'] == $category['parent']) {echo set_select('category', $value['cat_id'], TRUE);} else {echo set_select('category', $value['cat_id']);} ?>><?php echo $value['cat_name']; ?></option>
                        <?php endforeach; ?>
                    </select> <?php echo form_error('category', '<span>', '</span>'); ?>
                </td>
            </tr>
            <tr>
                <td><label>Danh mục đặc biệt</label><br />Có <input <?php if ($category['cat_status'] == 1) {echo 'checked = checked';} ?> type="radio" name="post_featured" value=1 /> Không <input <?php if ($category['cat_status'] == 0) {echo 'checked = checked';} ?> type="radio" name="post_featured" value=0 /></td>
            </tr>
            <tr>
                <td><input type="submit" name="submit" value="Gửi bài" /> <input type="reset" name="reset" value="Làm mới" /></td>
            </tr>
        </table>
        </form>
    </div>
</div>