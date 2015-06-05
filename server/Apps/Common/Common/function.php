<?php
// +----------------------------------------------------------------------
// | 公共函数库
// +----------------------------------------------------------------------
// | Author: 我才是二亮 <unstring@163.com>
// +----------------------------------------------------------------------

/**
 * 日志记录函数
 * @param integer $uid 操作用户ID
 * @param string $type 操作类型
 * @param string $target 操作对象
 * @param integer $target_id 操作对象ID
 * @return integer 0-写日志失败，1-写日志成功
 */
function _log($uid = '', $type = '', $target = '', $target_id = '', $target_name = '') {

	$data = array(
		'uid' => $uid,
		'type' => $type,
		'target' => $target,
		'target_id' => $target_id,
		'target_name' => $target_name,
		'modify_time' => time(),
	);

	$log = M('Log');
	$result = $log->data($data)->add();
	if($result) {
		return 1;
	} else {
		return 0;
	}
}
?>