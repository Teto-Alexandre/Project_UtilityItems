#tellraw @a[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"text":"マッチが勝者なしで終了しました"}]

tellraw @a ["",{"text": "戦線が終結しました"}]

execute as @e[tag=ui_temp_players,tag=tmw272_spectate] run function ui:tmw/272/common/player_remove