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
class UserController extends BaseController {

	/**
	 * 用户注册
	 */
	public function regist() {

		if(!IS_POST) {
			$return = array(
				'code' => 0,
				'msg' => '操作失败',
			);
			$this->ajaxReturn($return);
			return -1;
		}
		$data = array(
			'username' => I('post.username'),
			'password' => md5(I('post.password')),
			'company_name' => I('post.company_name'),
			'company_mail' => I('post.company_mail'),
			'company_tel' => I('post.company_tel'),
		);
		$user = D('User');
		$result = $user->regist($data);
		switch ($result) {
			case '1':
				$data = array(
					'code' => 1,
					'msg' => "注册成功，请等待管理员审核",
				);
				break;
			case '-1':
				$data = array(
					'code' => -1,
					'msg' => "用户名已被注册",
				);
				break;
			case '-2':
				$data = array(
					'code' => -2,
					'msg' => "添加用户信息失败，请重试",
				);
				break;
			case '-3':
				$data = array(
					'code' => -3,
					'msg' => "公司名称已被注册",
				);
				break;
			case '-4':
				$data = array(
					'code' => -4,
					'msg' => "公司信息添加失败，请重试",
				);
				break;
			default:
				$data = array(
					'code' => 0,
					'msg' => "操作失败",
				);
				break;
		}
		$this->ajaxReturn($data);
		return;
	}

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

	/**
	 * 用户注销
	 */
	public function logout() {
		session(null);
		$result = array(
			'code' => 1,
			'msg' => '用户注销成功',
		);
		$this->ajaxReturn($result);
	}

	/**
	 * 密码修改
	 */
	public function editPass() {

		if($this->isLogin()) {
			if(IS_POST) {
				$username = session('username');
				$oldPass = md5(I('post.oldPass'));
				$newPass = md5(I('post.newPass'));
				$user = D('User');
				$result = $user->editPass($username, $oldPass, $newPass);
				switch ($result) {
					case '1':
						$data = array(
							'code' => 1,
							'msg' => '密码重置成功，请重新登陆',
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
							'msg' => '原始密码错误'
						);
						break;
					case '-3':
						$data = array(
							'code' => -3,
							'msg' => '密码重置失败'
						);
						break;
					default:
						$data = array(
							'code' => 0,
							'msg' => '操作失败'
						);
						break;
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
	}

	/**
	 * 信息修改
	 */
	public function editInfo() {
		if($this->isLogin()) {
			if (IS_POST) {
				$data = array(
					'uid' => session('uid'),
					'mail' => I('post.company_mail'),
					'tel' => I('post.company_tel'),
					'wechat_url' => I('post.wechat_url'),
					'introduction' => I('post.introduction'),
					'detail' => I('post.detail'),
					'banner_url' => I('post.banner_url'),
					'modify_time' => time(),
				);
				$user = D('User');
				$result = $user->editInfo($data);
				switch ($result) {
					case '1':
						$data = array(
							'code' => 1,
							'msg' => '公司信息更新成功'
						);
						break;
					case '-1':
						$data = array(
							'code' => -1,
							'msg' => '公司信息更新失败'
						);
						break;
					default:
						$data = array(
							'code' => 0,
							'msg' => '操作失败'
						);
						break;
				}
			} else {
				$data = array(
					'code' => 0,
					'msg' => '请登录后操作'
				);
			}
		} else {
			$data = array(
				'code' => -4011,
				'msg' => '请登录后操作'
			);
		}
		$this->ajaxReturn($data);
		return;
	}

}
?>