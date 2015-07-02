<?php
// +----------------------------------------------------------------------
// | 影视管理模型
// +----------------------------------------------------------------------
// | Copyright (c) 2014  All rights reserved.
// +----------------------------------------------------------------------
// | Author: 我才是二亮 <unstring@163.com>
// +----------------------------------------------------------------------
// | Time: 2015-05-06
// +----------------------------------------------------------------------
namespace User\Controller;
use Think\Controller;
class VideosController extends BaseController {
    
    /**
     * 增加新闻
     */
    public function add() {

    	if($this->isLogin()) {
    		if(IS_POST) {
    			$uid = session('uid');
    			// 获取POST数据
    			$data = array(
    				'uid' => $uid,
    				'title' => I('post.title'),
                    'url' => I('post.url'),
                    'pic' => I('post.pic'),
                    'detail' => I('post.detail'),
                    'status' => 1,
                    'recommend' => 0,
                    'top' => 0,
    				'modify_time' => time(),
    			);

    			$videos = M('Videos');
    			$result = $videos->data($data)->add();
    			if($result) {
					_log($uid, 'add', 'video', $result, $data['title']);
    				$data = array(
    					'code' => 1,
    					'msg' => '动态添加成功',
    				);
    			} else {
    				$data = array(
    					'code' => -1,
    					'msg' => '动态添加失败，请重试',
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
     * 编辑新闻
     */
    public function edit() {

    	if($this->isLogin()) {
    		if(IS_POST) {
    			$id = I('post.id');
    			$uid = session('uid');
    			$data = array(
    				'title' => I('post.title'),
    				'url' => I('post.url'),
                    'pic' => I('post.pic'),
                    'detail' => I('post.detail'),
    				'modify_time' => time(),
    			);
    			$videos = M('Videos');
    			$result = $videos->where("id = $id")->find();
    			if($result != null && $result['uid'] == $uid) {
    				$result = $videos->where("id = $id")->data($data)->save();
    				if($result != false) {
    					_log($uid, 'edit', 'video', $id, $data['title']);
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
     * 删除新闻
     */
    public function del() {

    	if($this->isLogin()) {
    		if(IS_POST) {
    			$uid = session('uid');
    			$id = I('post.id');
    			$videos = M('Videos');
    			$result = $videos->where("id = $id")->find();
    			if($result != null && $result['uid'] == $uid) {
                    $title = $result['title'];
    				//$result = $videos->where("id = $id")->delete();
    				$result = $videos->where("id = $id")->data(array("status" => 0))->save();
                    if($result != false) {
    					_log($uid, 'del', 'video', $id, $title);
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