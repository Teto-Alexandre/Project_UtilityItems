#tellraw @a[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"selector":"@s"},{"text":"がマッチに勝利しました"}]

tellraw @a ["",{"selector":"@s"},{"text": "が戦線に勝利しました"}]

particle dust 0 1 0 2 ~ ~0.9 ~ 0.5 0.5 0.5 0 10 force
playsound entity.wither.spawn player @a ~ ~ ~ 1 2 0

scoreboard players add @s ui_tmw272_battlefront_joins 1
tellraw @s ["",{"text": "あなたの勝利数は "},{"score":{"name":"@s","objective":"ui_tmw272_battlefront_joins"},"color": "gold"},{"text":"/"},{"score":{"name":"@s","objective":"ui_tmw272_battlefront_wins"},"color": "gold"},{"text": " です"}]

function ui:tmw/272/common/player_remove
execute as @e[tag=ui_temp_players,tag=tmw272_spectate] run function ui:tmw/272/common/player_remove