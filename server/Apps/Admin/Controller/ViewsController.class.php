<?php
// +----------------------------------------------------------------------
// | 用户控制器
// +----------------------------------------------------------------------
// | Copyright (c) 2014 All rights reserved.
// +----------------------------------------------------------------------
// | Author: 我才是二亮 <unstring@163.com>
// +----------------------------------------------------------------------
// | Time: 2015-05-05
// +----------------------------------------------------------------------
namespace Admin\Controller;
use Think\Controller;
class ViewsController extends BaseController {

	/**
	 * 获取用户信息
	 */
	public function getUser() {
		if($this->isLogin()) {
			$p = I('get.p');
			if(IS_POST) {
				$action = I('post.action');
				$user = M('User');
				switch ($action) {
					case 'status':	// 按照状态获取
						$status = I('post.status');
						if($status == 'enabled')
							$list = $user->where(array('group' => 'user', 'status' => 1,))->order('uid DESC')->limit(10000)->page($p)->field('uid, username, modify_time')->select();
						elseif($status == 'disable')
							$list = $user->where(array('group' => 'user', 'status' => 2,))->order('uid DESC')->limit(10000)->page($p)->field('uid, username, modify_time')->select();
						elseif($status == 'new')
							$list = $user->where(array('group' => 'user', 'status' => 0,))->order('uid DESC')->limit(10000)->page($p)->field('uid, username, modify_time')->select();

						break;
					default:
						$data = array(
							'code' => -1,
							'msg' => '操作失败',
						);
						$this->ajaxReturn($data);
						break;
				}
			} else {
				$user = M('User'); // 实例化User对象
				$list = $user->where(array('group' => 'user'))->order('uid DESC')->limit(10000)->field('uid, username, modify_time')->page($p)->select();
				$count = $user->count();// 查询满足要求的总记录数
			}
			foreach ($list as $temp) {
				$uid = $temp['uid'];
				$company = M('Company');
				$result = $company->where(array('uid' => $uid))->find();
				$temp['id'] = $result['id'];
				$temp['company_name'] = $result['name'];
				$temp['company_tel'] = $result['tel'];
				$temp['company_mail'] = $result['mail'];
				$temp['banner_url'] = $result['banner_url'];
				$list_t[] = $temp;
			}
			$data = array(
				'code' => 1,
				'count' => $count,
				'data' => $list_t,
			);
		} else {
			$data = array(
				'code' => 0,
				'msg' => '请登录后操作',
			);
		}
		$this->ajaxReturn($data);
		return;
	}

	/**
	 * 获取新闻动态
	 */
	public function getNews() {
		if($this->isLogin()) {
			$p = I('get.p');
			if(IS_POST) {
				$data = array(
					'code' => -1,
					'msg' => '操作失败',
				);
			} else {
				$news = M('News'); // 实例化User对象
				$list = $news->where('status = 1')->order('id DESC')->limit(100000)->page($p)->select();
				$count = $news->count();// 查询满足要求的总记录数
			}
			// 获取公司信息
			$list_t = array();
			foreach ($list as $temp) {
				$company = M('Company');
				$result = $company->where(array('uid' => $temp['uid']))->find();
				$temp['company_id'] = $result['id'];
				$temp['company_name'] = $result['name'];
				$list_t[] = $temp;
			}
			$data = array(
				'code' => 1,
				'count' => $count,
				'data' => $list_t,
			);
		} else {
			$data = array(
				'code' => 0,
				'msg' => '请登录后操作',
			);
		}
		$this->ajaxReturn($data);
		return;
	}

	/**
	 * 获取友情链接
	 */
	public function getLinks() {
		if($this->isLogin()) {
			$p = I('get.p');
			if(IS_POST) {
				$data = array(
					'code' => -1,
					'msg' => '操作失败',
				);
			} else {
				$links = M('Links'); // 实例化User对象
				$list = $links->where('status = 1')->order('id DESC')->limit(100000)->page($p)->select();
				$count = $links->count();// 查询满足要求的总记录数
			}
			// 获取公司信息
			$list_t = array();
			foreach ($list as $temp) {
				$company = M('Company');
				$result = $company->where(array('uid' => $temp['uid']))->find();
				$temp['company_id'] = $result['id'];
				$temp['company_name'] = $result['name'];
				$list_t[] = $temp;
			}
			$data = array(
				'code' => 1,
				'count' => $count,
				'data' => $list_t,
			);
		} else {
			$data = array(
				'code' => 0,
				'msg' => '请登录后操作',
			);
		}
		$this->ajaxReturn($data);
		return;
	}

	/**
	 * 获取影视信息
	 */
	public function getVideos() {
		if($this->isLogin()) {
			$p = I('get.p');
			if(IS_POST) {
				$data = array(
					'code' => -1,
					'msg' => '操作失败',
				);
			} else {
				$videos = M('Videos'); // 实例化User对象
				$list = $videos->where('status = 1')->order('id DESC')->limit(100000)->page($p)->select();
				$count = $videos->count();// 查询满足要求的总记录数
			}
			// 获取公司信息
			$list_t = array();
			foreach ($list as $temp) {
				$company = M('Company');
				$result = $company->where(array('uid' => $temp['uid']))->find();
				$temp['company_id'] = $result['id'];
				$temp['company_name'] = $result['name'];
				$list_t[] = $temp;
			}
			$data = array(
				'code' => 1,
				'count' => $count,
				'data' => $list_t,
			);
		} else {
			$data = array(
				'code' => 0,
				'msg' => '请登录后操作',
			);
		}
		$this->ajaxReturn($data);
		return;
	}
}
?>