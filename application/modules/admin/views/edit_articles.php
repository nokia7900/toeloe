<div id="main">
	<h2>Sửa bài viết</h2>

	<div id="new-post">
		<form method="post" action="<?php echo base_url().'admin/articles/edit_articles/'.$articles['news_id']; ?>" enctype="multipart/form-data">
		<table border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td id="post-title"><label>Tiêu đề bài viết</label><br /><input type="text" name="post_title" value="<?php echo set_value('post_title', $articles['news_title']); ?>" /> <?php echo form_error('post_title', '<span>', '</span>'); ?></td>
			</tr>
			<tr>
				<td><label>Chuyên mục</label><br />
					<select name="category">
						<?php foreach ($category as $key => $value) : ?>
						   <option value=<?php echo $value['cat_id'] ?> <?php if ($value['cat_id'] == $articles['news_category']) {echo set_select('category', $value['cat_id'], TRUE);} else {echo set_select('category', $value['cat_id']);} ?>><?php echo $value['cat_name']; ?></option>
						<?php endforeach; ?>
					</select> <?php echo form_error('category', '<span>', '</span>'); ?>
				</td>
			</tr>
			<tr>
				<td><label>Ảnh mô tả</label><br /><input type="file" name="post_thumb" /><input type="hidden" name="post_thumb" value="<?php echo $articles['news_image']; ?>" /> <span><?php if (isset($upload_err)) {echo $upload_err;} ?></span></td>
			</tr>
			<tr>
				<td><label>Bài viết đặc biệt</label><br />Có <input type="radio" <?php if ($articles['news_status'] == 1) {echo 'checked = checked';} ?> name="post_featured" value=1 /> Không <input <?php if ($articles['news_status'] == 0) {echo 'checked = checked';} ?> type="radio" name="post_featured" value=0 /></td>
			</tr>
			<tr>
				<td><label>Nội dung chi tiết</label><br /><textarea name="post_details"><?php echo set_value('post_details', $articles['news_detail']); ?></textarea> <?php echo form_error('post_details', '<span>', '</span>'); ?></td>
			</tr>
			<tr>
				<td><input type="submit" name="submit" value="Gửi bài" /> <input type="reset" name="reset" value="Làm mới" /></td>
			</tr>
		</table>
		</form>
	</div>
</div>