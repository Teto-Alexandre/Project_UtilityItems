tag @e[tag=tmw272_visual_input] remove tmw272_visual_input

execute if score @s ui_tmw272_surehit matches 1.. if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.UsedItems[0].tag.tmw.cg.npc_use_for_allies at @s run tag @e[tag=ui_temp_players,tag=!tmw272_spectate,tag=!ui_temp_player,tag=ui_temp_team,sort=random,limit=1] add tmw272_visual_input
execute if score @s ui_tmw272_surehit matches 1.. unless entity @e[tag=tmw272_visual_input] run tag @e[tag=ui_temp_players,tag=!tmw272_spectate,tag=!ui_temp_player,tag=!ui_temp_team,sort=random,limit=1] add tmw272_visual_input
execute if score @s ui_tmw272_surehit matches ..0 if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.UsedItems[0].tag.tmw.cg.npc_use_for_allies at @s run tag @e[tag=ui_temp_players,tag=!tmw272_spectate,tag=!ui_temp_player,tag=ui_temp_team,sort=random,limit=1,scores={ui_tmw272_glowing=1..}] add tmw272_visual_input
execute if score @s ui_tmw272_surehit matches ..0 unless entity @e[tag=tmw272_visual_input] if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.UsedItems[0].tag.tmw.cg.npc_use_for_allies run tag @e[tag=ui_temp_players,tag=!tmw272_spectate,tag=!ui_temp_player,tag=ui_temp_team,sort=random,limit=1,scores={ui_tmw272_invisible=0}] add tmw272_visual_input
execute if score @s ui_tmw272_surehit matches ..0 unless entity @e[tag=tmw272_visual_input] run tag @e[tag=ui_temp_players,tag=!tmw272_spectate,tag=!ui_temp_player,tag=!ui_temp_team,sort=random,limit=1,scores={ui_tmw272_glowing=1..}] add tmw272_visual_input
execute if score @s ui_tmw272_surehit matches ..0 unless entity @e[tag=tmw272_visual_input] run tag @e[tag=ui_temp_players,tag=!tmw272_spectate,tag=!ui_temp_player,tag=!ui_temp_team,sort=random,limit=1,scores={ui_tmw272_invisible=0}] add tmw272_visual_input