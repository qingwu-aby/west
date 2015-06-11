<?php
// +----------------------------------------------------------------------
// | API
// +----------------------------------------------------------------------
// | Copyright (c) 2014 All rights reserved.
// +----------------------------------------------------------------------
// | Author: 我才是二亮 <unstring@163.com>
// +----------------------------------------------------------------------
// | Time: 2015-05-05
// +----------------------------------------------------------------------
namespace User\Controller;
use Think\Controller;
class ApiController extends BaseController {


	public function upload(){
	    $upload = new \Think\Upload();// 实例化上传类
	    $upload->maxSize = 3145728 ;// 设置附件上传大小
	    $upload->exts = array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
	    $upload->rootPath = APP_PATH;
	    $upload->savePath = '/../Public/Uploads/'; // 设置附件上传目录
	    $upload->saveName = date('YmdHis') . mt_rand(11111, 99999);
	    // 上传文件
	    $info   =   $upload->uploadOne($_FILES['filename']);
	    if(!$info) {
	    // 上传错误提示错误信息
	    	$data = array(
	    		'code' => -1,
	    		'msg' => '图片上传失败',
	    	);
	    } else {
	    // 上传成功
	    	/*$filename = $info['savepath'] . $info['savename'];

			// 内容类型
			//header('Content-Type: image/jpeg');

			// 获取新的尺寸
			list($width, $height) = getimagesize($filename);
			$new_width = 200;
			$new_height = 150;

			// 重新取样
			$image_p = imagecreatetruecolor($new_width, $new_height);
			$image = imagecreatefromjpeg($filename);
			imagecopyresampled($image_p, $image, 0, 0, 0, 0, $new_width, $new_height, $width, $height);

			// 输出
			imagejpeg($image_p, $info['savepath'] . 's_asdfasdf.jpg', 100);
			imagedestroy($image_p);  */
	    	$data = array(
	    		'code' => 1,
	    		'msg' => '图片上传成功',
	    		'data' => array(
	    			'img_url' => $info['savepath']. $info['savename'],
	    		),
	    	);
	    }
	    $this->ajaxReturn($data);
    	return;
	}

	/**
	   * 生成验证码
	   */
	public function verify() {
		ob_clean();
		$Verify = new \Think\Verify();
		$Verify->entry();
	}

	/**
	 * 获取本地影讯	 
	 */
	public function getMovie() {
		$name = I('get.name');
		$time = date('Y-m-d',time());
		$result = M('movies')->where(array('name' => $name, 'time' => $time))->find();
		if($result != null) {	// 表示已经请求过API
			// 查数据库
			$mid = $result['id'];
			// 获取影院
			$cinemas = M('cinemas');
			$result = $cinemas->where(array('mid' => $mid))->select();
			if(count($result) == 0) {
				$return = array(
					'code' => -1,
					'msg' => '找不到数据',
				);
			} else {
				$returnData = array();
				foreach ($result as $cinema) {
					$temp = array(
						'uid' => $cinema['uid'],
						'name' => $cinema['name'],
						'address' => $cinema['address'],
						'tel' => $cinema['tel'],
					);
					// 获取时间表
					$timeResult = M('movies_time')->where(array('mid' => $mid, 'cid' => $cinema['id']))->select();
					$time_table = array();
					foreach ($timeResult as $time) {
						$time_table[] = array(
							'date' => $time['date'],
							'type' => $time['type'],
							'price' => $time['price'],
							'time' => $time['time'],
						);
					}
					$temp['time_table'] = $time_table;
					$returnData[] = $temp;
				}
				$return = array(
					'code' => 1,
					'data' => $returnData,
				);
			}
		} else {
			$mid = M('movies')->data(array('name' => $name, 'time' => $time))->add();
			$location = '西安';
			$format = 'json';
			$url = "http://api.36wu.com/Movie/GetMovieInfo?movie=$name&location=$location&format=$format";
			$ch = curl_init();
			curl_setopt($ch, CURLOPT_URL, $url);
			curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
			curl_setopt($ch, CURLOPT_HEADER, 0);
			$output = curl_exec($ch);
			curl_close($ch);
			$output = json_decode($output);
			$returnData = array();
			if($output->status == 200 && $output->message == 'OK') {
				foreach ($output->data as $data) {
					$temp = array(
						'uid' => $data->uid,
						'name' => $data->name,
						'address' => $data->address,
						'tel' => $data->telephone,
					);

					// 添加影院库
					$cid = $data->uid;
					$cinemas = M('cinemas');
					$result = $cinemas->where(array('uid' => $cid, 'mid' => $mid))->find();
					if($result == null) {
						$cData = array(
							'mid' => $mid,
							'uid' => $cid,
							'name' => $data->name,
							'address' => $data->address,
							'tel' => $data->telephone,
						);
						$result = $cinemas->data($cData)->add();
						$cid = $result;
					}
					// 排片表
					$time_table = array();
					foreach ($data->time_table as $time) {
						if($time->date == date('Y-m-d', time())) {
							$time_table[] = array(
								'date' => $time->date,
								'time' => $time->time,
								'type' => $time->type,
								'price' => $time->price,
							);
							$movies_time = M('movies_time');
							$result = $movies_time->data(array(
								'mid' => $mid,
								'cid' => $cid,
								'date' => $time->date,
								'time' => $time->time,
								'type' => $time->type,
								'price' => $time->price,
							))->add();
						}
					}
					$temp['time_table'] = $time_table;
					$returnData[] = $temp;
				}
				$return = array(
					'code' => 1,
					'data' => $returnData,
				); 
			} else {
				$return = array(
					'code' => -1,
					'msg' => '获取不到数据',
				);
			}
		}
		$this->ajaxReturn($return);
	}

}

