<?php

$message = $p->message();
$date = $message->date;
$chatid = $message->chat->id;
$from_id = $message->from->id;
$text = $message->text;
$first_name = $message->from->first_name;
$last_name = $message->from->last_name;
$message_id = $message->message_id;
$chat_type = $message->chat->type;

?>