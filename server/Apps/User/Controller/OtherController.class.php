<?php
// +----------------------------------------------------------------------
// | 其他控制器
// +----------------------------------------------------------------------
// | Copyright (c) 2015 All rights reserved.
// +----------------------------------------------------------------------
// | Author: 我才是二亮 <unstring@163.com>
// +----------------------------------------------------------------------
// | Time: 2015-07-01
// +----------------------------------------------------------------------
namespace User\Controller;
use Think\Controller;
class OtherController extends BaseController {

	/**
	 * 推荐
	 */
	public function recommend() {

		if($this->isLogin()) {
			if(IS_POST) {
				$action = I('post.action');
				$status = (int)I('post.status');
				$uid = session('uid');
				$id = I('post.id');
				switch ($action) {
					case 'news':	// 新闻
						$news = M('news');
						$result = $news->data(array('recommend' => $status ,'modify_time' => time()))->where(array('uid' => $uid, 'id' => $id))->save();
						break;
					case 'video':	// 影视
						$news = M('videos');
						$result = $news->data(array('recommend' => $status , 'modify_time' => time()))->where(array('uid' => $uid, 'id' => $id))->save();
						break;
					case 'episode':	// 剧集
						$news = M('episodes');
						$result = $news->data(array('recommend' => $status , 'modify_time' => time()))->where(array('uid' => $uid, 'id' => $id))->save();
						break;
					default:
						$result = false;
						break;
				}
				if($result != false) {	// 成功
					$data = array(
						'code' => 1,
						'msg' => '推荐成功',
					);
				} else {
					$data = array(
						'code' => -1,
						'msg' => '推荐失败',
					);
				}
			} else {
				$data = array(
					'code' => -1,
					'msg' => '操作失败',
				);
			}
		} else {
			$data = array(
				'code' => -4001,
				'msg' => '请登录后操作',
			);
		}
		$this->ajaxReturn($data);
		return;
	}

	/**
	 * 置顶
	 */
	public function top() {
		if($this->isLogin()) {
			if(IS_POST) {
				$action = I('post.action');
				$status = (int)I('post.status');
				$uid = session('uid');
				$id = I('post.id');
				switch ($action) {
					case 'news':	// 新闻
						$news = M('news');
						$result = $news->data(array('top' => $status, 'modify_time' => time()))->where(array('uid' => $uid, 'id' => $id))->save();
						break;
					case 'video':	// 影视
						$news = M('videos');
						$result = $news->data(array('top' => $status, 'modify_time' => time()))->where(array('uid' => $uid, 'id' => $id))->save();
						break;
					case 'episode':	// 剧集
						$news = M('episodes');
						$result = $news->data(array('top' => $status, 'modify_time' => time()))->where(array('uid' => $uid, 'id' => $id))->save();
						break;
					default:
						$result = false;
						break;
				}
				if($result != false) {	// 成功
					$data = array(
						'code' => 1,
						'msg' => '置顶成功',
					);
				} else {
					$data = array(
						'code' => -1,
						'msg' => '置顶成功',
					);
				}
			} else {
				$data = array(
					'code' => -1,
					'msg' => '操作失败',
				);
			}
		} else {
			$data = array(
				'code' => -4001,
				'msg' => '请登录后操作',
			);
		}
		$this->ajaxReturn($data);
		return;
	}
}
?>