<?php
// +----------------------------------------------------------------------
// | 前台展示模块
// +----------------------------------------------------------------------
// | Copyright (c) 2014 All rights reserved.
// +----------------------------------------------------------------------
// | Author: 我才是二亮 <unstring@163.com>
// +----------------------------------------------------------------------
// | Time: 2015-05-05
// +----------------------------------------------------------------------
namespace Home\Controller;
use Think\Controller;
class ViewsController extends Controller {

	/**
	 * 获取新闻列表
	 */
	public function getNewsList() {

		$limit = 10000;
		$p = I('get.p');
		//if(IS_POST) {
			$uid = I('get.uid');
			$news = M('News'); // 实例化User对象
			$list = $news->where(array('status' => 1))->where(array('uid' => $uid))->order('id DESC')->limit($limit)->page($p)->select();
			$count = $news->count();// 查询满足要求的总记录数
			$data = array(
				'code' => 1,
				'count' => $count,
				'data' => $list,
			);
		// } else {
		// 	$data = array(
		// 		'code' => -1,
		// 		'msg' => '操作失败',
		// 	);
		// }
		
		$this->ajaxReturn($data);
		return;
	}

	/**
	 * 获取单条新闻内容
	 */
	public function getNewsContent() {
		
		$uid = I('get.uid');
		$id = I('get.id');
		$news = M('News');
		$result = $news->where(array('uid' => $uid, 'id' => $id))->find();
		if($result == null) {
			$data = array(
				'code' => -1,
				'msg' => '该数据不存在',
			);
		} else {
			// 增加访问量
			$update = $news->where(array('uid' => $uid, 'id' => $id))->data(array('views' => $result['views'] + 1))->save();

			$data = array(
				'code' => 1,
				'data' => $result,
			);
		}
		$this->ajaxReturn($data);
		return;
	}

	/**
	 * 获取影视作品列表
	 */
	public function getVideo() {
		$uid = I('get.uid');
		$p = I('get.p');
		$limit = 10000;
		$videos = M('Videos');
		$result = $videos->where('status = 1')->where(array('uid' => $uid))->order('id DESC')->limit($limit)->page($p)->select();
		$count = $videos->count();// 查询满足要求的总记录数
		if(count($result) == 0) {
			$data = array(
				'code' => -1,
				'msg' => '数据为空',
			);
		} else {
			$data = array(
				'code' => 1,
				'count' => $count,
				'data' => $result,
			);
		}
		$this->ajaxReturn($data);
		return ;
	}
	public function getVideosContent() {
		$uid = I('get.uid');
		$id = I('get.id');
		$videos = M('videos');
		$result = $videos->where(array('uid' => $uid, 'id' => $id))->find();
		if($result == null) {
			$data = array(
				'code' => -1,
				'msg' => '该数据不存在',
			);
		} else {
			// 增加访问量
			$update = $videos->where(array('uid' => $uid, 'id' => $id))->data(array('views' => $result['views'] + 1))->save();

			$data = array(
				'code' => 1,
				'data' => $result,
			);
		}
		$this->ajaxReturn($data);
		return;
	}

	/**
	 * 获取友情链接列表
	 */
	public function getLinks() {
		$uid = I('get.uid');
		$p = I('get.p');
		$limit = 10000;
		$links = M('links');
		$result = $links->where('status = 1')->where(array('uid' => $uid))->order('id DESC')->limit($limit)->page($p)->select();
		$count = $links->count();// 查询满足要求的总记录数
		if(count($result) == 0) {
			$data = array(
				'code' => -1,
				'msg' => '数据为空',
			);
		} else {
			$data = array(
				'code' => 1,
				'count' => $count,
				'data' => $result,
			);
		}
		$this->ajaxReturn($data);
		return ;
	}
}