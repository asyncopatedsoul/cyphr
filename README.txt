//CYPHR

//NXT
//LVL
//SHT
/*
for casual, real-world gamers
*/
/*
NOTIFICATIONS

Michael is training for : Ping Pong
Drills
	 
*/

player {
	id
	first_name
	last_name
	nickname
	email
	password
	game_types [
		{
			id
			name
			type_id
		}
	]
}

rails generate scaffold Player first_name:string last_name:string nickname:string email:string password:string location_id:integer latitude:float longitude:float avatar_url:string

//NICKNAMES
name
player_id
creator_id
pivacy
game_id
group_id
location_id



//FAVORITES
// - players
// - games
// - groups

rails generate scaffold Favorite owner_id:integer object_id:integer type_id:integer
// 0 = player
// 1 = group
// 2 = game

game {
	name
	rules
}
// and variants



rails generate scaffold Game name:string rules:text parent_id:integer creator_id:integer description:text

//NOTES
text:text 
author_id:integer
privacy:integer
turn_id:integer
match_id:integer
game_id:integer

rails generate scaffold Note author_id:integer type_id:integer text:text turn_id:integer match_id:integer game_id:integer

//0 = only author
//1 = only author's team
//2 = only playing teams

//RATINGS

rails generate scaffold Rating player_id:integer group_id:integer game_id:integer match_count:integer win_count:integer loss_count:integer ratio:integer

//ratio to 5 decimal points

//NOTIFICATIONS
// - game report 'Mike beat Gao: 21:12'
// - game broadcast invitation ''
// - game direct invitation 'Mike wants to play Ping Pong with you'
// - game alert 'Match has started: Mike VS Gao'
// - rank alert 'Mike has gained rank: 51 to 37'

rails generate scaffold Notification type_id:integer text:text is_read:boolean

//RULES
JSON blob

rules {
	minPlayers
	maxPlayers
	scoring: [
		{
			name: 'field goal',
			points: '2'
		},
		{
			name: 'field goal',
			points: 3
		}
	]
}


//TURNS
rails generate scaffold Turn game_id:integer match_id:integer player_id:integer group_id:integer running_time:time date_finished:timestamp score:integer is_active_boolean

//GROUPS
rank relative to group
// - TEAM
// - LEAGUE
// - ORGANIZATION
name:string
type_id:integer
parent_id:integer 
member_count:integer
location_id:integer
privacy:integer

rails generate scaffold Group name:string type_id:integer parent_id:integer member_count:integer location_id:integer privacy:integer


//0 = hidden


//RANKS


//LOCATIONS
rails generate scaffold Location name:string nickname:string latitude:integer longitude:integer radius:integer address:text parent_id:integer kml_url:string;


//set latitude, longitude, radius to 5-digit precision = 1.1m-0.74m
//http://stackoverflow.com/questions/11041818/rails-3-float-or-decimal-for-gps-coordinates



rails generate scaffold Match game_id:integer date_finished:timestamp is_active:boolean running_time:time turns:integer location_id:integer winner_player_id:integer winner_group_id:integer




match {
	type_id
	config {
		scoring { 2, 3 }
	}
	date_started
	date_finished
	is_active
	teams [
		{
			uid
			name
			players [
				{ 
					id
					first_name
					last_name
					nickname
				}
			]
			score
			hasTurn
		}
	]
	turns [
		{
			team 1
			scored 2
		}
		{
			team 2
			scored 3
		}
	]
	notes [
		id
		by	player.id
		text	
		for { player.id, player.id }

	]
}