<?php
// +----------------------------------------------------------------------
// | 用户管理模型
// +----------------------------------------------------------------------
// | Copyright (c) 2014  All rights reserved.
// +----------------------------------------------------------------------
// | Author: 我才是二亮 <unstring@163.com>
// +----------------------------------------------------------------------
// | Time: 2015-05-06
// +----------------------------------------------------------------------
namespace User\Controller;
use Think\Controller;
class EpisodesController extends BaseController {
    
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
    				'big_img' => 'no',
    				'thumbnail' => I('post.thumbnail'),
    				'summary' => I('post.summary'),
                    'source' => I('post.source'),
                    'author' => I('post.author'),
    				'content' => I('post.content'),
    				'release_time' => time(),
                    'status' => 1,
                    'recommend' => 0,
                    'top' => 0,
    				'modify_time' => time(),
    			);

    			$Episodes = M('Episodes');
    			$result = $Episodes->data($data)->add();
    			if($result) {
					_log($uid, 'add', 'episodes', $result, $data['title']);
    				$data = array(
    					'code' => 1,
    					'msg' => '剧集添加成功',
    				);
    			} else {
    				$data = array(
    					'code' => -1,
    					'msg' => '剧集添加失败，请重试',
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
    				'big_img' => 'no',
    				'thumbnail' => I('post.thumbnail'),
    				'summary' => I('post.summary'),
                    'source' => I('post.source'),
                    'author' => I('post.author'),
    				'content' => I('post.content'),
    				'modify_time' => time(),
    			);
    			$Episodes = M('Episodes');
    			$result = $Episodes->where("id = $id")->find();
    			if($result != null && $result['uid'] == $uid) {
    				$result = $Episodes->where("id = $id")->data($data)->save();
    				if($result != false) {
    					_log($uid, 'edit', 'episodes', $id, $data['title']);
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
    			$Episodes = M('Episodes');
    			$result = $Episodes->where("id = $id")->find();
    			if($result != null) {
                    $title = $result['title'];
    				//$result = $Episodes->where("id = $id")->delete();
    				$result = $Episodes->where("id = $id")->data(array('status' => 0))->save();
                    if($result != false) {
    					_log($uid, 'del', 'episodes', $id, $title);
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