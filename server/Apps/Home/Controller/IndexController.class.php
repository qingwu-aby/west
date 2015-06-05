<?php
namespace Home\Controller;
use Think\Controller;
class IndexController extends Controller {
    
    /**
	 * 获取轮播图
	 * 获取新闻最近三条
	 */
	public function getMedia() {

		$uid = I('get.uid');
		$news = M('News');
		$result = $news->where(array('status' => 1, 'hot' => 1))->order('id DESC')->limit(3)->select();
		if(count($result) <= 0) {
			$data = array(
				'code' => -1,
				'msg' => '公司ID有误',
			);
		} else {
			$data = array(
				'code' => 1,
				'data' => $result,
			);
		}
		$this->ajaxReturn($data);
		return;
	}

	/**
	 * 获取新闻列表
	 */
	public function getNewsList() {

		$limit = 10;
		$uid = I('get.uid');
		$p = I('get.p');
		if($p == null)
			$p = 1;
		$news = M('News'); // 实例化User对象
		$list = $news->where(array('uid' => $uid, 'status' => 1, 'hot' => 0))->order('id DESC')->limit($limit)->page($p)->select();
		$count = $news->count();// 查询满足要求的总记录数
		if(count($list) == 0) {
			$data = array(
				'code' => -1,
				'msg' => '数据为空',
			);
		} else {
			$data = array(
				'code' => 1,
				'count' => $count,
				'data' => $list,
			);
		}
		$this->ajaxReturn($data);
		return;
	}

	/**
	 * 获取公司信息
	 */
	public function getCompany() {

		$uid = I('get.uid');
		$company = M('Company');
		$result = $company->where(array('uid' => $uid))->find();
		if($result == null) {
			$data = array(
				'code' => -1,
				'msg' => '数据不存在',
			);
		} else {
			$data = array(
				'code' => 1,
				'data' => $result,
			);
		}
		$this->ajaxReturn($data);
		return ;
	}

	/**
	 * 获取影视作品
	 */
	public function getVideo() {
		$uid = I('get.uid');
		$videos = M('Videos');
		$result = $videos->where(array('uid' => $uid))->order('id DESC')->limit(6)->select();
		if(count($result) == 0) {
			$data = array(
				'code' => -1,
				'msg' => '数据为空',
			);
		} else {
			$data = array(
				'code' => 1,
				'data' => $result,
			);
		}
		$this->ajaxReturn($data);
		return ;
	}
}