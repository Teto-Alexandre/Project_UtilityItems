# 魔弾ADS

scoreboard players set $success ui_temp 0

# モデルデータ抽出
execute store result score $Model ui_temp run data get entity @s SelectedItem.tag.CustomModelData

#
execute if score @s ui_st matches 0 if score $Model ui_temp matches 180074 run scoreboard players set $success ui_temp 1
execute if score @s ui_st matches 0 if score $Model ui_temp matches 180074 run scoreboard players set $Model ui_temp 180071

#
execute if score @s ui_st matches 1.. if score $Model ui_temp matches 180071 run scoreboard players set $success ui_temp 1
execute if score @s ui_st matches 1.. if score $Model ui_temp matches 180071 run scoreboard players set $Model ui_temp 180074

# 書き込み
execute if score $success ui_temp matches 1 store result storage ui:temp CustomModelData int 1 run scoreboard players get $Model ui_temp
execute if score $success ui_temp matches 1 run item modify entity @s weapon.mainhand ui:gun/each/model
execute if score $success ui_temp matches 1 run scoreboard players reset $Model ui_temp
execute if score $success ui_temp matches 1 run data remove storage ui:temp CustomModelData