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
namespace User\Controller;
use Think\Controller;
class LinksController extends BaseController {

	/**
	 * 添加友情链接
	 */
	public function add() {
		if($this->isLogin()) {

			if(IS_POST) {
				$uid = session('uid');
				$post = array(
					'uid' => $uid,
					'name' => I('post.name'),
					'logo' => I('post.logo'),
					'info' => I('post.info'),
                    'status' => 1,
					'modify_time' => time(),
				);

				$links = M('Links');
				$result = $links->data($post)->add();
				if($result) {
					_log($uid, 'add', 'links', $result, $post['name']);
					$data = array(
						'code' => 1,
						'msg' => '添加友情链接成功',
					);
				} else {
					$data = array(
						'code' => -1,
						'msg' => '添加友情链接失败',
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
	 * 编辑友情链接
	 */
	public function edit() {

		if($this->isLogin()) {
    		if(IS_POST) {
    			$id = I('post.id');
    			$uid = session('uid');
    			$data = array(
    				'id' => $id,
					'uid' => $uid,
					'name' => I('post.name'),
					'logo' => I('post.logo'),
					'info' => I('post.info'),
					'modify_time' => time(),
				);
    			$links = M('Links');
    			$result = $links->where("id = $id")->find();
    			if($result != null && $result['uid'] == $uid) {
    				$result = $links->where("id = $id")->data($data)->save();
    				if($result != false) {
    					_log($uid, 'edit', 'links', $id, $data['name']);
    					$data = array(
    						'code' => 1,
    						'msg' => '更新成功',
    					);
    				} else {
    					$data = array(
    						'code' => -2,
    						'msg' => '更新失败，请重试',
    					);
    				}
    			} else {
    				$data = array(
    					'code' => -1,
    					'msg' => 'ID对应失败，请重试',
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
	 * 删除友情链接
	 */
	public function del() {

		if($this->isLogin()) {
    		if(IS_POST) {
    			$uid = session('uid');
    			$id = I('post.id');
    			$links = M('Links');
    			$result = $links->where("id = $id")->find();
    			if($result != null && $result['uid'] == $uid) {
                    $name = $result['name'];
    				//$result = $links->where("id = $id")->delete();
    				$result = $links->where("id = $id")->data(array('status' => 0))->save();
                    if($result != false) {
    					_log($uid, 'del', 'links', $id, $name);
    					$data = array(
    						'code' => 1,
    						'msg' => '删除成功',
    					);
    				} else {
    					$data = array(
    						'code' => -2,
    						'msg' => '删除失败',
    					);
    				}
    			} else {
    				$data = array(
    					'code' => -1,
    					'msg' => 'ID对应失败，请重试',
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