# アイテム転置
data modify storage ui:temp tag set from entity @s SelectedItem.tag

# 数値代入 $temp4
function ui:tmw/227/exp
execute store result score $temp ui_temp run data get storage ui:temp tag.tmw.amount 1
execute store result score $temp2 ui_temp run data get storage ui:temp tag.tmw.max 1
experience set @s 0 levels
experience set @s 0 points

# 経験値計算
scoreboard players operation $temp4 ui_temp += $temp ui_temp
execute if score $temp4 ui_temp <= $temp2 ui_temp run execute store result storage ui:temp tag.tmw.amount int 1 run scoreboard players get $temp4 ui_temp
execute if score $temp4 ui_temp > $temp2 ui_temp run function ui:tmw/227/putin2

# 書き込み
item modify entity @s weapon.mainhand ui:tempout
function ui:tmw/227/calc
execute if score $temp ui_temp matches 1.. run item modify entity @s weapon.mainhand ui:ubreak.de
item modify entity @s weapon.mainhand ui:tmw227

# 始末
playsound minecraft:entity.guardian.death player @a ~ ~ ~ 1 1.6 0
tag @s add ui_temp_success