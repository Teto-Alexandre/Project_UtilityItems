# プレイヤー追加
tag @e[tag=ui_temp_game] add tmw272_unpower

scoreboard players operation @e[tag=ui_temp_target,limit=1] ui_tmw272_link_id = $link_id ui_temp

#data modify storage ui:temp player_template set value {id:-1,health:100,mana:100}
#execute store result storage ui:temp player_template.id int 1 run scoreboard players get $obj_id ui_temp
#execute as @e[tag=tmw272_unpower] run data modify entity @s item.tag.players append from storage ui:temp player_template

data modify storage ui:temp player_template set value {id:-1}
execute store result storage ui:temp player_template.id int 1 run scoreboard players get $obj_id ui_temp
execute as @e[tag=tmw272_unpower] run data modify entity @s item.tag.anti_rejoin append from storage ui:temp player_template

# デバッグメッセージ
tellraw @a[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"text":"追加プレイヤーをマッチへ追加しました"}]
#tellraw @a[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"entity":"@e[tag=tmw272_unpower]","nbt":"item.tag"}]

# タグ消し
tag @e[tag=tmw272_unpower] remove tmw272_unpower

# 初期ステータス設定
execute as @e[tag=ui_temp_target,limit=1] run function ui:tmw/272/id/-1/player