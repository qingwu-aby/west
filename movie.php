<?php
$data = array(
	'code' => 1,
	'data' => array(
		array(
			'uid' => '641aa23c0f417cdbe115f902',
			'name' => '卢米埃影城(西安凯德广场店)',
			'address' => '西安市雁塔区南2环西段凯德广场5层(朱雀花卉市场对面)',
			'time_table' => array(
				array(
					'date' => '2015-06-11',
					'price' => '37.9',
					'time' => '10:00',
					'type' => '3D',
				),
				array(
					'date' => '2015-06-11',
					'price' => '37.9',
					'time' => '11:05',
					'type' => '3D',
				),
				array(
					'date' => '2015-06-11',
					'price' => '37.9',
					'time' => '12:30',
					'type' => '3D',
				),
				array(
					'date' => '2015-06-11',
					'price' => '37.9',
					'time' => '10:00',
					'type' => '3D',
				),
			),
		),
		array(
			'uid' => '641aa23c0f417cdbe115f902',
			'name' => '西安万达国际影城(东新街店)',
			'address' => '西安市解放路63号民乐精品服饰广场四层',
			'time_table' => array(
				array(
					'date' => '2015-06-11',
					'price' => '80',
					'time' => '10:00',
					'type' => '数字3D',
				),
				array(
					'date' => '2015-06-11',
					'price' => '32.9',
					'time' => '11:05',
					'type' => '数字3D',
				),
				array(
					'date' => '2015-06-11',
					'price' => '37.9',
					'time' => '12:30',
					'type' => '3D',
				),
				array(
					'date' => '2015-06-11',
					'price' => '37.9',
					'time' => '10:00',
					'type' => '3D',
				),
			),
		),
	),
);
echo json_encode($data);