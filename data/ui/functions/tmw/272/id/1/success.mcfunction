# 使用成功した場合
data modify storage ui:temp temp.card set from storage ui:temp card
execute store result score $count ui_temp run data get storage ui:temp temp.card.effects

#
tellraw @s[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"text":">@s ","color":"green"},{"text":"CHECK_COST が承認しました EFFECT解決数:"},{"score":{"name": "$count","objective": "ui_temp"}}]

execute if score $count ui_temp matches 1.. run function ui:tmw/272/id/1/burn

# 一連のターゲットを削除
tag @e[tag=tmw272_temp_card_effect_target_old] remove tmw272_temp_card_effect_target_old

# 汎用変数を削除
scoreboard players reset $target_type ui_temp
scoreboard players reset $effect_type ui_temp
scoreboard players reset $var ui_temp

# カードの一時データも削除
data remove storage ui:temp temp
scoreboard players reset $count ui_temp