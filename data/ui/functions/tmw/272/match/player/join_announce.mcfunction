tellraw @a[tag=ui_temp_players] [{"text":" > "},{"selector":"@e[tag=ui_temp_players,tag=!tmw272_join_announce]"},{"text":"が戦線に参加しました"}]
execute if entity @a[tag=ui_temp_players,tag=!tmw272_join_announce] as @a[tag=ui_temp_players] run function ui:tmw/272/match/player/join_announce_deck
execute if entity @a[tag=ui_temp_players,tag=!tmw272_join_announce] as @e[tag=tmw272_unique_enemy,tag=ui_temp_players] at @s run function ui:tmw/272/match/player/join_announce_enemy
tag @e[tag=ui_temp_players,tag=!tmw272_join_announce] add tmw272_join_announce
