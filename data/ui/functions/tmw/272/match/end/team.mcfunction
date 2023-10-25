#tellraw @a[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"selector":"@s"},{"text":"がマッチに勝利しました"}]

tellraw @a ["",{"selector":"@e[tag=ui_temp_players,tag=!tmw272_spectate]"},{"text": "が戦線に勝利しました"}]

execute at @e[tag=ui_temp_players,tag=!tmw272_spectate] run particle dust 0 1 0 2 ~ ~0.9 ~ 0.5 0.5 0.5 0 10 force
playsound entity.wither.spawn player @a ~ ~ ~ 1 2 0

execute as @e[tag=ui_temp_players] run function ui:tmw/272/common/player_remove

kill @s