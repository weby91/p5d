<?php

print gearman_version() . "\n";

# Create our worker object.
$gmworker= new GearmanWorker();

# Add default server (localhost).
$gmworker->addServer();

# Register function "reverse" with the server.
$gmworker->addFunction("reverse", "reverse_fn");

# Set the timeout to 5 seconds
$gmworker->setTimeout(5000);

echo "Waiting for job...\n";
while(@$gmworker->work() || $gmworker->returnCode() == GEARMAN_TIMEOUT)
{
  if ($gmworker->returnCode() == GEARMAN_TIMEOUT)
  {
    # Normally one would want to do something useful here ...
    echo "Timeout. Waiting for next job...\n";
    continue;
  }

  if ($gmworker->returnCode() != GEARMAN_SUCCESS)
  {
    echo "return_code: " . $gmworker->returnCode() . "\n";
    break;
  }
}

echo "Done\n";

function reverse_fn($job)
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