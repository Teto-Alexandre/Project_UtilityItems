#tellraw @a[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"selector":"@s"},{"text":"がマッチに勝利しました"}]

tellraw @a[tag=ui_temp_players] ["",{"selector":"@s"},{"text": "が戦線に勝利しました"}]

particle dust 0 1 0 2 ~ ~0.9 ~ 0.5 0.5 0.5 0 10 force
playsound entity.wither.spawn player @a ~ ~ ~ 1 2 0

scoreboard players reset @s ui_tmw272_link_id
tag @s remove tmw272_active

execute at @s run kill @e[type=item,tag=tmw272_dropitem_card,distance=..5]
function ui:template/inventory/pull