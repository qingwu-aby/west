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
}