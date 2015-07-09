<div id="main">
	<h2>Bài mới</h2>

    <div id="new-post">
        <form method="post" enctype="multipart/form-data" action="<?php echo base_url().'admin/articles/add_articles/'; ?>">
        <table border="0" cellpadding="0" cellspacing="0">
        	<tr>
            	<td id="post-title"><label>Tiêu đề bài viết</label><br /><input type="text" name="post_title" value="<?php set_value('post_title') ?>" /> <?php echo form_error('post_title', '<span>', '</span>'); ?></td>
            </tr>
            <tr>
            	<td><label>Chuyên mục</label><br />
                	<select name="category">
                    	<option value="0">Lựa chọn Chuyên mục</option>
                        <?php
                        foreach ($category as $key => $value) {
                            if ($value['cat_id'] == set_value('category')) {
                        ?>
                    	       <option selected value=<?php echo $value['cat_id']; ?>><?php echo $value['cat_name']; ?></option>
                        <?php
                            } else {
                        ?>
                                <option value=<?php echo $value['cat_id']; ?>><?php echo $value['cat_name']; ?></option>
                        <?php
                            }
                        }
                        ?>
                    </select> <?php echo form_error('category', '<span>', '</span>'); ?>
                </td>
            </tr>
            <tr>
            	<td><label>Ảnh mô tả</label><br /><input type="file" name="post_thumb" /> <span><?php if (isset($upload_err)) {echo $upload_err;} ?></span></td>
            </tr>
            <tr>
            	<td><label>Bài viết đặc biệt</label><br />Có <input type="radio" name="post_featured" value=1 /> Không <input checked="checked" type="radio" name="post_featured" value=0 /></td>
            </tr>
            <tr>
            	<td><label>Nội dung chi tiết</label><br /><textarea name="post_details"  ></textarea> <?php echo form_error('post_details', '<span>', '</span>'); ?></td>
            </tr>
            <tr>
            	<td><input type="submit" name="submit" value="Gửi bài" /> <input type="reset" name="reset" value="Làm mới" /></td>
            </tr>
        </table>
        </form>
    </div>
</div>