scoreboard players reset @s ui_tmw272_link_id
tag @s remove tmw272_active
tellraw @a[tag=ui_temp_players] ["",{"selector":"@s"},{"text": "が戦線離脱しました"}]