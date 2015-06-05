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
namespace Admin\Controller;
use Think\Controller;
class BaseController extends Controller {

	/**
	 * 是否登陆
	 */
	public function isLogin() {
		if(session('?username') && session('?uid') && session('group') == 'manage' ) {
			return ture;
		} else {
			return false;
		}
	}
}
?>