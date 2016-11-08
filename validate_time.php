<?php

$worker= new GearmanWorker();
$worker->addServer('127.0.0.1');
$worker->addFunction("reverse", "my_reverse_function");
while ($worker->work());

function my_reverse_function($job)
{
  return strrev($job->workload());
}

// $url = 'https://api.telegram.org/bot230102744:AAF446Qr-lVdMPY5h_XburwAPldKTheFE2A/sendMessage';

// $data = array(
   // 'chat_id' => -169138549,
   // 'text' => 'wo'
// );

// $postvars = http_build_query($data);

// // open connection
// $ch = curl_init();

// // set the url, number of POST vars, POST data
// curl_setopt($ch, CURLOPT_URL, $url);
// curl_setopt($ch, CURLOPT_POST, count($data));
// curl_setopt($ch, CURLOPT_POSTFIELDS, $postvars);

// // execute post
// $result = curl_exec($ch);

// // close connection
// curl_close($ch);


// // if (isset($_POST['action'])) {
	// // echo 'BERHASIL VALIDATE';
// // }
?>