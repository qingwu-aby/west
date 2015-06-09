<?php
// +----------------------------------------------------------------------
// | 基础控制器
// +----------------------------------------------------------------------
// | Copyright (c) 2014 All rights reserved.
// +----------------------------------------------------------------------
// | Author: 我才是二亮 <unstring@163.com>
// +----------------------------------------------------------------------
// | Time: 2015-05-05
// +----------------------------------------------------------------------
namespace User\Controller;
use Think\Controller;
class BaseController extends Controller {

/*
public function _initialize() {
		if(session('?username') && session('?uid')) {
			return ture;
		} else {
			echo "<script>window.location.href='../../../../login.php'</script>";
		}
	}
	*/
	/**
	 * 是否登陆
	 */
	public function isLogin() {
		if(session('?username') && session('?uid')) {
			return ture;
		} else {
			return false;
		}
	}

	

}
?>