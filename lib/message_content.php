<?php

$message = $p->message();
$date = $message->date;
$chatid = @$message->chat->id;
$text = @$message->text;
$first_name = @$message->chat->first_name;
$last_name = @$message->chat->last_name;
$message_id = $message->message_id;
$chat_type = @$message->chat->type;

?>