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
namespace User\Model;
use Think\Model;

/**
 * 用户管理模型
 */
class UserModel extends Model{


	/**
	 * 注册
	 * @param array $data 注册数据
	 */
	public function regist($data) {
		// 将用户信息添加到User表中
		$tranDb = new Model();
		$tranDb->startTrans();
		$username = $data['username'];
		$result = $tranDb->table('west_user')->where("username = '$username'")->find();
		if($result == null) {
			$user_info = array(
				'username' => $username,
				'password' => $data['password'],
				'group' => 'user',
				'status' => 0,
				'modify_time' => time(),
			);
			$uid = $tranDb->table('west_user')->data($user_info)->add();
			if($uid) {
				// 判断公司是否存在
				$company_name = $data['company_name'];
				$result = $tranDb->table('west_company')->where("name = '$company_name'")->find();
				if($result == null) {
					$company_info = array(
						'uid' => $uid,
						'name' => $data['company_name'],
						'mail' => $data['company_mail'],
						'tel' => $data['company_tel'],
						'modify_time' => time(),
					);
					$result = $tranDb->table('west_company')->data($company_info)->add();
					if($result) {
						$tranDb->commit();
						return 1;	// 注册用户成功
					} else {
						$tranDb->rollback();
						return -4;	// 添加公司信息失败
					}
				} else {
					$tranDb->rollback();
					return -3;	// 公司名称已存在
				}
			} else {
				$tranDb->rollback();
				return -2;	// 添加用户信息失败
			}
		} else {
			return -1; 	// 用户名已存在
		}
	}

	/**
	 * 登陆
	 * @param string $username 用户名
	 * @param string $password 用户密码
	 */
	public function login($username, $password){
		$map = array();
		$map['username'] = $username;
		/* 获取用户数据 */
		$user = $this->where($map)->find();
		if(is_array($user)){
			if($user['status']) {
				if(md5($password) == $user['password']) {
					session('uid', $user['uid']);
					session('username', $user['username']);
					session('group', $user['group']);
					return 1;	// 登陆成功
				} else {
					return -5; //密码错误
				}
			} elseif($user['status'] == -1) {
				return -4;	// 用户被禁用
			} elseif ($user['status'] == 0) {
				return -3;	//等待管理员审核中
			} else {
				return -2; // 用户异常
			}
		} else {
			return -1; //用户不存在
		}
	}

	/**
	 * 修改密码
	 * @param string $username 用户名
	 * @param string $oldPass 原始密码
	 * @param string $newPass 新密码
	 */
	public function editPass($username, $oldPass, $newPass) {

		$user = M('User');
		$result = $user->where("username = '$username'")->find();
		if($result != null) {
			if($result['password'] == $oldPass) {
				$result = $user->where("username = '$username'")->data(array('password' => $newPass))->save();
				if($result) {
					session(null);
					return 1; 	//密码重置成功
				} else {
					return -3;	//密码重置失败
				}
			} else {
				return -2;	//原始密码错误
			}
		} else {
			return -1;	//用户不存在
		}
	}

	/**
	 * 公司信息修改
	 */
	public function editInfo($data) {

		$uid = $data['uid'];
		$company = M('Company');
		$result = $company->where("uid = '$uid'")->data($data)->save();
		if($result) {
			return 1;
		} else {
			return -1;
		}
	}


}