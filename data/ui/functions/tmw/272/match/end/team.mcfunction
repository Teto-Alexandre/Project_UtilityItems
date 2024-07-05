tellraw @a ["",{"selector":"@e[tag=ui_temp_players,tag=!tmw272_spectate]"},{"text": "が戦線に勝利しました"}]

execute as @e[tag=ui_temp_players,tag=summoned_delete] run function ui:tmw/272/match/player/death.entity

scoreboard players add @a[tag=ui_temp_players,tag=!tmw272_spectate] ui_tmw272_battlefront_wins 1
execute as @a[tag=ui_temp_players,tag=!tmw272_spectate] run tellraw @s ["",{"text": "あなたの勝利数は "},{"score":{"name":"@s","objective":"ui_tmw272_battlefront_wins"},"color": "gold"},{"text":"/"},{"score":{"name":"@s","objective":"ui_tmw272_battlefront_joins"},"color": "gold"},{"text": " です"}]

execute at @e[tag=ui_temp_players,tag=!tmw272_spectate] run particle dust 0 1 0 2 ~ ~0.9 ~ 0.5 0.5 0.5 0 10 force
playsound entity.wither.spawn player @a ~ ~ ~ 1 2 0

execute as @e[tag=ui_temp_players] run function ui:tmw/272/common/player_remove

kill @s