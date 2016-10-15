<?php
// Acknowledgments: thanks Daniele for your support and study of Telegram inline mode

// including the library
require("lib/telegram.php");

// basic configuration
$botname = "pancasila5dbot";
$token = "230102744:AAF446Qr-lVdMPY5h_XburwAPldKTheFE2A";
$singletrigger = true; // if true, it tells the library to trigger at most a single callback function for each received message

// custom inline results configuration related to this particular bot
$results_count = 5;
$inline_thumbs_colors = ["faa","afa","aaf"];

// callbacks definition

function trigger_welcome($p) {
    try {
        $answer = "Welcome...";
        $p->bot()->send_message($p->chatid(), $answer);
        return logarray('text', $answer);
    }
    catch(Exception $e) { return false; } // you can also return what you prefer
}

function trigger_help($p) {
    try {
        $answer = "Try to use inline mode...";
        $p->bot()->send_message($p->chatid(), $answer);
        return logarray('text', $answer);
    }
    catch(Exception $e) { return false; }
}

// callback to use if anything goes wrong
function trigger_err($p) {
	$response;
    // if($p->chatid() < 0) { // if message has been sent from a member of a Telegram group
        // // ignore it and do not reply (to avoid not necessary messages on the group)
        // $response = logarray('ignore', null);
    // }
	//Uncomment this line to add reply message for reguler text
    // else {
	// // reply with an error message
	// $answer = "Error...";
	// $answer = "".print_r($p->message(), true);
        // $p->bot()->send_message($p->chatid(), $answer);
        // $response = logarray('WEDEWW', $answer);
    // }
    return $response;
}

function trigger_play($p) {
	try {
		// $answer = "Write your message and press enter...";
		require("lib/message_content.php");
		$state = $p->state()->getstate();
		
			$answer = "<b>" . $first_name . ' ' . $last_name . "</b> ingin yes permainan. Dibutuhkan 2 orang lagi untuk dapat memulai permainan.";
			$p->state()->movetostate("waiting_for_input"); // moving to state "waiting_for_input"
			$p->bot()->send_message($p->chatid(), $answer);
		
		return logarray('text', $answer);
	}
	catch(Exception $e) { return false; } // you can also return what you prefer
}

function trigger_input($p) {
	try {
		// $chatid = $p->first_name;
		require("lib/message_content.php");
		
		$state = $p->state()->getstate();
		if($state == "waiting_for_input")
		{	
			if(strtolower($text) === "/play@pancasila5dbot")
			{		
				$answer = "Silahkan masukkan <b>minimum huruf</b> yang diinginkan dalam bentuk angka";
				$p->state()->movetostate("waiting_for_number"); // moving to state "in_chat"
			}else if(strtolower($text) === "/cancel@pancasila5dbot"){
				$answer = "Permainan telah dibatalkan.";
				$p->state()->movetostate("in_chat"); // moving to state "in_chat"
			}
		}
		else if($state == "waiting_for_number")
		{
			if(is_numeric($text)){
				if($text < 3) $answer = "Angka minimum adalah <b>2</b>. Silahkan masukkan angka lebih besar dari 2";
				else {
					$answer = "Minimum angka yang telah dipilih yaitu " . $text . PHP_EOL . "<b>Permainan dimulai!</b>";
					$p->state()->movetostate("playing");
				}
			}else{
				$answer = "Silahkan masukkan dalam bentuk angka";
			}
		}
		// file_put_contents("/tmp/writetodev.txt", $p->chatid().": ".$p->parameters()."\n", FILE_APPEND | LOCK_EX); // storing message to local disk
		
		// $p->state()->movetostate("in_chat"); // moving to state "in_chat"
		$p->bot()->send_message($p->chatid(), $answer);
		return logarray('text', $answer);
		
		
		
	}
	catch(Exception $e) { return false; } // you can also return what you prefer
}

// instantiating a new bot
$bot = new telegram_bot($token);

// receiving data sent from the user
$data = $bot->read_post_message();

// reading standard message data
$message = $data->message;
$date = $message->date;
$chatid = @$message->chat->id;
$text = @$message->text;
$first_name = @$message->chat->first_name;
$last_name = @$message->chat->last_name;
$message_id = $message->message_id;
$chat_type = @$message->chat->type;
$arrContent = array();

// reading inline query basic data
$inline_query = $data->inline_query;
$inline_query_id = $inline_query->id;

if(!is_null($text) && !is_null($chatid)){
	// instantiating a new triggers set
	$ts = new telegram_trigger_set($botname, $chatid, $singletrigger);
	
	array_push($arrContent, Array("first_name" => "$first_name", "last_name" => "$last_name"));
	// registering the triggers
	$ts->register_trigger_text_command("trigger_welcome", ["/start","/welcome","/hi"], 0); // state parameter is ignored
	$ts->register_trigger_text_command("trigger_help", ["/help"], 0); // state parameter is ignored
	// $ts->register_trigger_text_command("trigger_play", ["/play"], 0); // state parameter is ignored
	
	$ts->register_trigger_text_command("trigger_play", ["/play"], "in_chat"); // /write command is accepted only when state is "in_chat"
	$ts->register_trigger_any("trigger_input", "waiting_for_input"); // each input retrieved will trigger the trigger_input function when state is "waiting_for_input"
	$ts->register_trigger_any("trigger_input", "waiting_for_number"); // each input retrieved will trigger the trigger_input function when state is "waiting_for_input"
	// // error trigger
	$ts->register_trigger_error("trigger_err"); // state parameter is ignored

	// running triggers management
	$response = $ts->run($bot, $message); // returns an array of triggered events
	// log messages exchange on the database
	@db_log($botname, 'recv', $chatid, 'text', $text, $date, $first_name, $last_name, $message_id, $chat_type);
	if(count($response)>0) foreach($response as $r) @db_log($botname, 'sent', $chatid, $r['type'], $r['content'], $date, $first_name, $last_name, $message_id, $chat_type);
	else @db_log($botname, 'error', $chatid, 'Error', $date, $first_name, $last_name, $message_id, $chat_type);
}

// managing inline query results
if($inline_query_id != "") {
	// getting additional inline data
	$inline_query_msg = $inline_query->query;
	$inline_chatid = $inline_query->from->id;
	$inline_username = $inline_query->from->username;
	// building a list of results (of type 'article'); for further information, see https://core.telegram.org/bots/api#inlinequeryresult
	$results = array();
	for($i=1;$i<=$results_count;$i++) {
		$id = "id_$i"; // unique identifier of the content
		$title = "Title of result #$i"; // inline title
		$description = "Description of inline results #$i"; // inline description
		$message_text = "Thanks for your query '$inline_query_msg'. You have selected results #$i."; // returned message, if this result is chosen by the user
		$url = "http://dummyimage.com/100x100/".($inline_thumbs_colors[$i%count($inline_thumbs_colors)])."/000.png&text=$i"; // thumbnail url; using the external dummyimage.com service
		array_push($results, Array("type" => "article", "id" => "$id", "title" => $title, "description" => $description, "message_text" => $message_text, "parse_mode" => "HTML", "thumb_url" => $url)); // for other content types, see https://core.telegram.org/bots/api#inlinequeryresult
	}
	// sending the results
	$results = json_encode($results);
	$cache_time = 300; // indicates how many seconds the content has to be kept in Telegram's servers cache (useful if many users require a content with the same identifier); use 0 or null for dynamic (never cached) elements
	$bot->send_inline($inline_query_id, $results, $cache_time); // for further information, see https://core.telegram.org/bots/api#inline-mode
	// logging sent results into database
	@db_log($botname, 'inline', $inline_query_id, 'inline', $date, $first_name);
	// terminating the program
	exit();
}

// managing standard/not inline messages

// // instantiating a new triggers set
// $ts = new telegram_trigger_set($botname, $chatid, $singletrigger);

// // registering the triggers
// $ts->register_trigger_text_command("trigger_welcome", ["/start","/welcome","/hi"], 0); // state parameter is ignored
// $ts->register_trigger_text_command("trigger_help", ["/help"], 0); // state parameter is ignored
// // error trigger
// $ts->register_trigger_error("trigger_err"); // state parameter is ignored

// // running triggers management
// $response = $ts->run($bot, $message); // returns an array of triggered events
// // log messages exchange on the database
// @db_log($botname, 'recv', $chatid, 'text', $text, $date);
// if(count($response)>0) foreach($response as $r) @db_log($botname, 'sent', $chatid, $r['type'], $r['content'], $date);
// else @db_log($botname, 'error', $chatid, 'Error', $date);
?>
