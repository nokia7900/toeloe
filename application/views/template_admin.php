<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Admin Control Panel</title>
<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>public/styles/admin.css" />
<?php echo $css; ?>
</head>
<body>

<div id="main-wrap">
	<div id="top-box">
    	<div id="logo"><a href="#"><img src="<?php echo base_url(); ?>public/images/admin-logo.png" /></a></div>
    	<div id="logined">
        	<p>Xin chào <span>Admin</span> đăng nhập thành công vào hệ thống website</p>
            <p><a href="<?php echo base_url().'admin/auth/logout'; ?>">Đăng xuất</a></p>
        </div>
    </div>
    <!-- Wrap -->
    <div id="wrap">
        <!-- Head -->
        <div id="head">
            <!-- Navbar -->
            <div id="navbar">
            	<ul>
                	<li><a href="<?php echo base_url(); ?>">Trang chủ</a></li>
                    <li><a href="<?php echo base_url().'admin/auth/index'; ?>">Quản lý thành viên</a></li>
                    <li><a href="<?php echo base_url().'admin/category/index'; ?>">Quản lý danh mục</a></li>
                    <li><a href="<?php echo base_url().'admin/articles/index'; ?>">Quản lý bài viết</a></li>
                    <li><a href="#">Cấu hình</a></li>
                    <li><a href="#">Trợ giúp</a></li>
                    <li><a href="#">Xem website</a></li>
                </ul>
            </div>
            <!-- End Navbar -->
        </div>
        <!-- End Head -->

        <!-- Body -->
        <div id="body">
            <!-- Main -->
                <?php $this->load->view($content); ?>
            <!-- End Main -->
        </div>
        <!-- End Body -->
    </div>
    <!-- End Wrap -->

	<!-- Foot -->
    <div id="foot">
        <p>Vietpro Blog - Bản quyền thuộc Trung tâm Tin học & Công nghệ Vietpro - Website: <a href="#">http://vietpro.edu.vn</a> - Email: <span>vietpro.edu.vn@gmail.com</span></p>
    </div>
    <!-- End Foot -->
</div>

</body>
</html>
