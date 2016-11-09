<?php

$client= new GearmanClient();

$client->addServer('127.0.0.1');

$client->setCreatedCallback("create_change");

$client->setDataCallback("data_change");

$client->setStatusCallback("status_change");

$client->setCompleteCallback("complete_change");

$client->setFailCallback("fail_change");

$data_array =array('mydata'=>’task’);

$task= $client->addTask("reverse", "mydata", $data_array);

$task2= $client->addTaskLow("reverse", "task", NULL);

echo "DONE\n";

function create_change($task)
{
    echo "CREATED: " . $task->jobHandle() . "\n";
}

function status_change($task)
{
    echo "STATUS: " . $task->jobHandle() . " - " . $task->taskNumerator() . 
         "/" . $task->taskDenominator() . "\n";
}

function complete_change($task)
{
    echo "COMPLETE: " . $task->jobHandle() . ", " . $task->data() . "\n";
}

function fail_change($task)
{
    echo "FAILED: " . $task->jobHandle() . "\n";
}

function data_change($task)
{
    echo "DATA: " . $task->data() . "\n";
}
Function Client_error()
{
if (! $client->runTasks())
    return $client->error() ;
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