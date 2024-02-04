# ディメンション

# 装着時演出
execute if entity @s[tag=tmw601_changed] run function ui:tmw/601/head/600/setup

#
execute if score @s ui_ct matches 1.. run scoreboard players operation @s ui_tmw601_4600_ctacc_temp += @s ui_tmw601_4600_ctacc
execute if score @s ui_tmw601_4600_ctacc_temp matches 100.. run scoreboard players remove @s ui_ct 1
execute if score @s ui_tmw601_4600_ctacc_temp matches 100.. run scoreboard players remove @s ui_tmw601_4600_ctacc_temp 100
execute if score @s ui_tmw601_4600_ctacc_temp matches ..-100 run scoreboard players add @s ui_ct 1
execute if score @s ui_tmw601_4600_ctacc_temp matches ..-100 run scoreboard players add @s ui_tmw601_4600_ctacc_temp 100
execute if score @s ui_ct matches ..0 run scoreboard players reset @s ui_ct
execute unless score @s ui_ct matches 1.. run scoreboard players operation @s ui_tmw601_4600_mp += @s ui_tmw601_4600_mpregen
scoreboard players operation @s ui_tmw601_4600_mp < @s ui_tmw601_4600_mpmax
scoreboard players operation @s ui_tmw601_4600_mp > #0 ui_num
function ui:template/text_board/clay

execute store result score $speed ui_temp run data get entity @s Inventory.[{Slot:103b}].tag.tmw.speed
execute store result score $jump ui_temp run data get entity @s Inventory.[{Slot:103b}].tag.tmw.jump

execute unless entity @s[nbt={SelectedItem:{id:"minecraft:stick"}}] run effect give @s weakness 1 0 true
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stick"}}] run effect clear @s weakness

execute if score $speed ui_temp matches -1 run effect give @s slowness 1 0 true
execute if score $speed ui_temp matches -2 run effect give @s slowness 1 1 true
execute if score $speed ui_temp matches -3 run effect give @s slowness 1 2 true
execute if score $speed ui_temp matches -4 run effect give @s slowness 1 3 true
execute if score $speed ui_temp matches -5 run effect give @s slowness 1 4 true
execute if score $speed ui_temp matches -6 run effect give @s slowness 1 5 true

execute if score $speed ui_temp matches 1 run effect give @s speed 1 0 true
execute if score $speed ui_temp matches 2 run effect give @s speed 1 1 true
execute if score $speed ui_temp matches 3 run effect give @s speed 1 2 true
execute if score $speed ui_temp matches 4 run effect give @s speed 1 3 true
execute if score $speed ui_temp matches 5 run effect give @s speed 1 4 true
execute if score $speed ui_temp matches 6 run effect give @s speed 1 5 true

execute if score $jump ui_temp matches 1 run effect give @s jump_boost 1 0 true
execute if score $jump ui_temp matches 2 run effect give @s jump_boost 1 1 true
execute if score $jump ui_temp matches 3 run effect give @s jump_boost 1 2 true
execute if score $jump ui_temp matches 4 run effect give @s jump_boost 1 3 true
execute if score $jump ui_temp matches 5 run effect give @s jump_boost 1 4 true
execute if score $jump ui_temp matches 6 run effect give @s jump_boost 1 5 true

scoreboard players reset $speed ui_temp
scoreboard players reset $jump ui_temp