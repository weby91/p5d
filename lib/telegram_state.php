<?php
class telegram_state {
	const ANY_STATE = "*";
	private $botname = null;
	private $chat = null;
	function __construct($b, $c) { $this->botname = $b; $this->chat = $c; }
	public function iscurrent($state) {
		global $STATES_ENABLED;
		$s = $this->getstate();
		if($STATES_ENABLED && ($state != $s && $state != self::ANY_STATE)) return false;
		return true;
	}
	public function movetostate($state, $p) {
		global $STATES_ENABLED;
		if(!$STATES_ENABLED) return;
		if($this->chat == null) return;
		require("lib/message_content.php");
		$q = "UPDATE States set state='$state', modified_date = NOW() WHERE bot='".$this->botname."' AND chat_id='".$this->chat."';";
		if($this->getstate() == null){
			$last_state_id = 0;
			$last_room_id = 0;
			
			$q = "INSERT INTO States(bot, chat_id, state, created_date) VALUES('".$this->botname."', '".$this->chat."', '$state', NOW());";
			$last_state_id = db_custom_nonquery($q);
			
			$q = "INSERT INTO Rooms(state_id, host_id, created_date) 
				   VALUES($last_state_id, '$from_id', NOW());";	
				   
		    $last_room_id = db_custom_nonquery($q);

			$q = "INSERT INTO RoomDetails(room_id, chat_id, first_name, last_name, join_date) 
				   VALUES($last_room_id, '$from_id', '$first_name', '$last_name', NOW());";
		}
		
		db_nonquery($q);
	}
	public function getstate() {
		global $STATES_ENABLED;
		if(!$STATES_ENABLED) return null;
		if($this->chat == null) return; // exception here
		$q = "SELECT state FROM States WHERE bot='".$this->botname."' AND chat_id='".$this->chat."' AND state NOT IN ('completed','canceled');";
		$s = db_query($q);
		if(count($s)<=0) return null;
		return $s[0]['state'];
	}
	public function check_room($player_id, $p) {
		global $STATES_ENABLED;
		if(!$STATES_ENABLED) return null;
		if($this->chat == null) return; // exception here
		require("lib/message_content.php");
		$bot_name = $this->botname;
		
		$q = "SELECT COUNT(*) as total, a.room_id FROM RoomDetails a
			  LEFT JOIN Rooms b ON b.id = a.room_id
			  LEFT JOIN States c ON c.id = b.state_id
			  WHERE c.bot='$bot_name' AND c.chat_id='$chatid';";
			  
		$s = db_query($q);
		$total_player = $s[0]['total'];
		$room_id = $s[0]['room_id'];
			
		$q = "SELECT a.chat_id FROM RoomDetails a
		  LEFT JOIN Rooms b ON b.id = a.room_id
		  LEFT JOIN States c ON c.id = b.state_id
		  WHERE c.bot='$bot_name' AND c.chat_id='$chatid' AND a.chat_id = $player_id;";
		$s = db_query($q);
		if(count($s)<=0) {
			$q = "INSERT INTO RoomDetails(room_id, chat_id, first_name, last_name, join_date) 
				  VALUES($room_id, '$from_id', '$first_name', '$last_name', NOW());";			
			
			if(db_nonquery($q)){			
				$total_player = $total_player + 1;
				return $total_player;			
			}
			else return "Save Failed";
		}else return null;
	}
	
	public function get_host($p) {
		global $STATES_ENABLED;
		if(!$STATES_ENABLED) return null;
		if($this->chat == null) return; // exception here
		require("lib/message_content.php");
		$bot_name = $this->botname;
		
		$q = "SELECT a.first_name, a.last_name, b.host_id FROM RoomDetails a
			  LEFT JOIN Rooms b ON b.host_id = a.chat_id
			  LEFT JOIN States c ON c.id = b.state_id
			  WHERE c.bot='$bot_name' AND c.chat_id='$chatid';";
			  
		$s = db_query($q);
		
		return $s;		
	}
}
?>
