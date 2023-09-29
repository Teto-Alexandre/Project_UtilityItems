# 切削する
data modify storage ui:temp temp.effect set from storage ui:temp temp.card.effects[0]

# デバッグメッセ
tellraw @s[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"text":">@s ","color":"green"},{"text":"解決"},{"score":{"name": "$count","objective": "ui_temp"}},{"text":" : "},{"storage":"ui:temp","nbt":"temp.effect"}]

#
scoreboard players set $condition ui_temp 0
execute store result score $condition_type ui_temp run data get storage ui:temp temp.effect.condition_type 1

#
execute if score $condition_type ui_temp matches 0 run scoreboard players set $condition ui_temp 1
execute if score $condition_type ui_temp matches 1 run function ui:tmw/272/id/1/condition_type/1

#
execute if score $condition ui_temp matches 1 run function ui:tmw/272/id/1/burn.act

# まだあるなら - 次のエフェクトに移動
data remove storage ui:temp temp.card.effects[0]
scoreboard players remove $count ui_temp 1
execute if score $count ui_temp matches 1.. run function ui:tmw/272/id/1/burn.check