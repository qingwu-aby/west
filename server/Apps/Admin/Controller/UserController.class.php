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
class UserController extends BaseController {

	/**
     * 用户登录
     */
    public function login() {
        if(IS_POST) {
            $code = I('post.code');
            $verify = new \Think\Verify();
        		if(!$verify->check($code, $id)) {
        			$data = array(
        				'code' => -1,
        				'msg' => '验证码错误',
        			);
        			$this->ajaxReturn($data);
                return;
        		}
            $username = I('post.username');
            $password = I('post.password');
            $user = D('User');
            $result = $user->login($username, $password);
            switch ($result) {
                case '1':
                    $data = array(
                        'code' => 1,
                        'msg' => '用户登录成功',
                        'data' => array(
                            'uid' => session('uid'),
                            'username' => session('username'),
                            'group' => session('group'),
                        ),
                    );
                    break;
                case '-1':
                    $data = array(
                        'code' => -1,
                        'msg' => '用户不存在',
                    );
                    break;
                case '-2':
                    $data = array(
                        'code' => -2,
                        'msg' => '用户状态异常',
                    );
                    break;
                case '-3':
                    $data = array(
                        'code' => -3,
                        'msg' => '请耐心等待管理员审核',
                    );
                    break;
                case '-4':
                    $data = array(
                        'code' => -4,
                        'msg' => '您的账户被禁用，请联系管理员',
                    );
                    break;
                case '-5':
                    $data = array(
                        'code' => -5,
                        'msg' => '账号密码错误',
                    );
                    break;
                default:
                    $data = array(
                        'code' => 0,
                        'msg' => '操作失败',
                    );
                    break;
            }
        } else {
            $data = array(
                'code' => 0,
                'msg' => '操作失败',
            );
        }
        $this->ajaxReturn($data);
        return;
    }
}
?>