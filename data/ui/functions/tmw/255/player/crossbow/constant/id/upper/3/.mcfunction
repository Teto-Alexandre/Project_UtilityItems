# 魔弾ADS

scoreboard players set $success ui_temp 0

# モデルデータ抽出
execute store result score $Model ui_temp run data get entity @s SelectedItem.tag.CustomModelData

#
execute if entity @s[tag=tmw_oh_n] if score $Model ui_temp matches 180077 run function ui:tmw/255/player/crossbow/constant/id/upper/3/1

#
execute if entity @s[tag=tmw_oh_n] if score $success ui_temp matches 0 if score $Model ui_temp matches 180078 run function ui:tmw/255/player/crossbow/constant/id/upper/3/2

# 書き込み
execute if score $success ui_temp matches 1 store result storage ui:temp CustomModelData int 1 run scoreboard players get $Model ui_temp
execute if score $success ui_temp matches 1 run item modify entity @s weapon.mainhand ui:gun/each/model
execute if score $success ui_temp matches 1 run scoreboard players reset $Model ui_temp
execute if score $success ui_temp matches 1 run data remove storage ui:temp CustomModelData