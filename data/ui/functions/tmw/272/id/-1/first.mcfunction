# 初回だけ
#summon item_display ~ ~ ~ {Tags:["tmw272","tmw272_unpower"],item:{Count:1b,id:"minecraft:command_block",tag:{host_id:-1,players:[],anti_rejoin:[]}}}
summon item_display ~ ~ ~ {Tags:["tmw272","tmw272_unpower"],item:{Count:1b,id:"minecraft:command_block",tag:{host_id:-1,anti_rejoin:[]}}}
##↑アンチリジョインを追記すること

execute as @e[tag=tmw272_unpower] run execute store result entity @s item.tag.host_id int 1 run scoreboard players get $host_id ui_temp
execute as @e[tag=tmw272_unpower] run scoreboard players operation @s ui_is = $host_id ui_temp

scoreboard players operation $link_id ui_temp = $base ui_obj_id
scoreboard players operation @s ui_tmw272_link_id = $link_id ui_temp
scoreboard players operation @e[tag=ui_temp_target,limit=1] ui_tmw272_link_id = $link_id ui_temp
execute as @e[tag=tmw272_unpower] run function ui:misc/act/make_obj_id

execute as @e[tag=tmw272_unpower] run scoreboard players set @s ui_is2 200
scoreboard objectives add ui_tmw272_match_round dummy
execute as @e[tag=tmw272_unpower] run scoreboard players set @s ui_tmw272_match_round 0

#data modify storage ui:temp player_template set value {id:-1,health:100,mana:100}
#execute store result storage ui:temp player_template.id int 1 run scoreboard players get $host_id ui_temp
#execute as @e[tag=tmw272_unpower] run data modify entity @s item.tag.players append from storage ui:temp player_template
#execute store result storage ui:temp player_template.id int 1 run scoreboard players get $obj_id ui_temp
#execute as @e[tag=tmw272_unpower] run data modify entity @s item.tag.players append from storage ui:temp player_template

data modify storage ui:temp player_template set value {id:-1}
execute store result storage ui:temp player_template.id int 1 run scoreboard players get $host_id ui_temp
execute as @e[tag=tmw272_unpower] run data modify entity @s item.tag.anti_rejoin append from storage ui:temp player_template
execute store result storage ui:temp player_template.id int 1 run scoreboard players get $obj_id ui_temp
execute as @e[tag=tmw272_unpower] run data modify entity @s item.tag.anti_rejoin append from storage ui:temp player_template

# デバッグメッセージ
tellraw @a[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"text":"初期マッチメイクと生成を行いました"}]
tellraw @a[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"text":"マッチNBTの内容を開示します"}]
#tellraw @a[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"entity":"@e[tag=tmw272_unpower]","nbt":"item.tag"}]

# タグ消し
tag @e[tag=tmw272_unpower] remove tmw272_unpower

# 次のプレイヤー認証用のスコアを作成
scoreboard objectives add ui_tmw272_health dummy
scoreboard objectives add ui_tmw272_mana_max dummy
scoreboard objectives add ui_tmw272_mana dummy
scoreboard objectives add ui_tmw272_match_time dummy

# 初期ステータス設定
execute as @s run function ui:tmw/272/id/-1/player
execute as @e[tag=ui_temp_target,limit=1] run function ui:tmw/272/id/-1/player

# SSロジック起動
schedule function ui:tmw/272/match/ 1t append
