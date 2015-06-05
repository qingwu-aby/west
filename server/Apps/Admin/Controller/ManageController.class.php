<?php
// +----------------------------------------------------------------------
// | 管理控制器
// +----------------------------------------------------------------------
// | Copyright (c) 2014 All rights reserved.
// +----------------------------------------------------------------------
// | Author: 我才是二亮 <unstring@163.com>
// +----------------------------------------------------------------------
// | Time: 2015-05-05
// +----------------------------------------------------------------------
namespace Admin\Controller;
use Think\Controller;
class ManageController extends BaseController {

	public function test(){
		echo "hello world";
	}

	/**
	 * 处理用户
	 */
	public function dealUser() {
		if($this->isLogin()) {
			if(IS_POST) {
				$uid = I('post.uid');
				$action = I('post.action');
				if($action == 'disable') {	// 禁用用户
					$status = 2;
				} elseif($action == 'enabled') {	//启用用户
					$status = 1;
				} elseif($action == 'del') {
					/*$tranDb = new Model();
					$tranDb->startTrans();	//开启事务
					// 删除用户信息
					$result = $tranDb->table('west_user')->where("uid = $uid")->delete();
					if(!$result) {
						// 删除公司信息
						$result = $tranDb->table('west_company')->where("uid = $uid")->delete();
						if(!$result) {
							$result = $tranDb->table('west_news')->where("uid = $uid")->delete();
							if(!$result) {
								$tranDb->commit();
								$data = array(
									'code' => 1,
									'msg' => '删除用户成功',
								);
							} else {
								$tranDb->rollback();
								$data = array(
									'code' => -3,
									'msg' => '删除用户失败',
								);
							}
						} else {
							$tranDb->rollback();
							$data = array(
								'code' => -3,
								'msg' => '删除用户失败',
							);
						}
					} else {
						$tranDb->rollback();
						$data = array(
							'code' => -2,
							'msg' => '删除用户失败',
						);
					}
					$this->ajaxReturn($data);
					return;*/
					$status = 3;
				} else {
					$data = array(
						'code' => -1,
						'msg' => '操作失败',
					);
				}
				$user = M('User');
				$data = array(
					'status' => $status,
				);
				$result = $user->where("uid = $uid")->data($data)->save();
				if($result != false) {
					$data = array(
						'code' => 1,
						'msg' => '更新用户状态成功',
					);
				} else {
					$data = array(
						'code' => -2,
						'msg' => '更新用户状态失败',
					);
				}
			} else {
				$data = array(
					'code' => 0,
					'msg' => '操作失败',
				);
			}
		} else {
			$data = array(
				'code' => -4011,
				'msg' => '请登录后操作',
			);
		}
		$this->ajaxReturn($data);
		return;
	}

	/**
	 * 处理新闻
	 */
	public function dealNews() {

		if($this->isLogin()) {
			if(IS_POST) {
				$uid = session('uid');
				$id = I('post.id');
				$action = I('post.action');
				$news = M('news');
				$result = $news->where("id = $id")->find();
				if($result != null) {
					if($action == 'del') {
						$title = $result['title'];
						//$result = $news->where("id = $id")->delete();
						$result = $news->where("id = $id")->data(array('status' => 0))->save();
						if($result != false) {
							_log($uid, 'del', 'news', $id, $title);
							$data = array(
								'code' => 1,
								'msg' => '处理成功',
							);
						} else {
							$data = array(
								'code' => -2,
								'msg' => '处理失败',
							);
						}
					} else {
						$data = array(
							'code' => -1,
							'msg' => '处理失败',
						);
					}
				} else {
					$data = array(
						'code' => 0,
						'msg' => '操作失败',
					);
				}
				
			} else {
				$data = array(
					'code' => 0,
					'msg' => '操作失败',
				);
			}
		} else {
			$data = array(
				'code' => -4011,
				'msg' => '请登录后操作',
			);
		}
		$this->ajaxReturn($data);
		return;
	}

	/**
	 * 处理友情链接
	 */
	public function dealLinks() {
		if($this->isLogin()) {
			if(IS_POST) {
				$uid = session('uid');
				$id = I('post.id');
				$action = I('post.action');
				$links = M('links');
				$result = $links->where("id = $id")->find();
				if($result != null) {
					if($action == 'del') {
						//$result = $links->where("id = $id")->delete();
						$result = $links->where("id = $id")->data(array('status' => 0))->save();
						
						if($result != false) {
							_log($uid, 'del', 'links', $id);
							$data = array(
								'code' => 1,
								'msg' => '处理成功',
							);
						} else {
							$data = array(
								'code' => -2,
								'msg' => '处理失败',
							);
						}
					} else {
						$data = array(
							'code' => -1,
							'msg' => '处理失败',
						);
					}
				} else {
					$data = array(
						'code' => 0,
						'msg' => '操作失败',
					);
				}
				
			} else {
				$data = array(
					'code' => 0,
					'msg' => '操作失败',
				);
			}
		} else {
			$data = array(
				'code' => -4011,
				'msg' => '请登录后操作',
			);
		}
		$this->ajaxReturn($data);
		return;
	}

	/**
	 * 处理影视信息
	 */
	public function dealVideos() {
		if($this->isLogin()) {
			if(IS_POST) {
				$uid = session('uid');
				$id = I('post.id');
				$action = I('post.action');
				$videos = M('Videos');
				//$result = $videos->where("id = $id")->find();
				$result = $videos->where("id = $id")->data(array('status' => 0))->save();
				
				if($result != null) {
					if($action == 'del') {
						$result = $videos->where("id = $id")->delete();
						if($result != false) {
							_log($uid, 'del', 'video', $id);
							$data = array(
								'code' => 1,
								'msg' => '处理成功',
							);
						} else {
							$data = array(
								'code' => -2,
								'msg' => '处理失败',
							);
						}
					} else {
						$data = array(
							'code' => -1,
							'msg' => '处理失败',
						);
					}
				} else {
					$data = array(
						'code' => 0,
						'msg' => '操作失败',
					);
				}
				
			} else {
				$data = array(
					'code' => 0,
					'msg' => '操作失败',
				);
			}
		} else {
			$data = array(
				'code' => -4011,
				'msg' => '请登录后操作',
			);
		}
		$this->ajaxReturn($data);
		return;
	}

}
?>