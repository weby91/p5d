<?php
function db_log($botname, $action, $chat_id, $type, $content, $date, $first_name, $last_name, $message_id, $chat_type) {
	global $LOGS_ENABLED;
	if(!$LOGS_ENABLED) return;
	if($content!=null) $content="'$content'"; else $content="NULL";
	$q = "INSERT INTO Logs(bot, action, chat_id, type, content, date, created_date, first_name, last_name, message_id, chat_type)
	VALUES('$botname', '$action', '$chat_id', '$type', $content, '$date', NOW(), '$first_name', '$last_name', $message_id, '$chat_type');";
	db_nonquery($q);
}

function db_getchatlist($botname) {
	global $LOGS_ENABLED;
	if(!$LOGS_ENABLED) return;
	$q = "SELECT chat FROM Logs WHERE bot='$botname';";
	$s = db_query($q);
	$r = array();
	foreach($s as $el) array_push($r, $el['chat']);
	return $r;
}

function logarray($type, $content) {
	return array('type'=>$type, 'content'=>addslashes($content));
}
?>
