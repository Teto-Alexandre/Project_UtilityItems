# ディメンション

# 装着時演出
execute if entity @s[tag=tmw601_changed] run function ui:tmw/601/head/600/setup

# コア
execute store result score @s ui_tmw601_4600_mpmax run data get entity @s Inventory.[{Slot:103b}].tag.tmw.max
execute store result score @s ui_tmw601_4600_mpregen run data get entity @s Inventory.[{Slot:103b}].tag.tmw.regen
execute store result score @s ui_tmw601_4600_ctacc run data get entity @s Inventory.[{Slot:103b}].tag.tmw.ctacc
execute store result score $speed ui_temp run data get entity @s Inventory.[{Slot:103b}].tag.tmw.speed
execute store result score $jump ui_temp run data get entity @s Inventory.[{Slot:103b}].tag.tmw.jump
execute store result score $slot ui_temp run data get entity @s SelectedItemSlot

# MOD
execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:0b}].tag.tmw.passive.max
scoreboard players operation @s ui_tmw601_4600_mpmax += $temp ui_temp
execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:0b}].tag.tmw.passive.regen
scoreboard players operation @s ui_tmw601_4600_mpregen += $temp ui_temp
execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:0b}].tag.tmw.passive.ctacc
scoreboard players operation @s ui_tmw601_4600_ctacc += $temp ui_temp
execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:0b}].tag.tmw.passive.speed
scoreboard players operation $speed ui_temp += $temp ui_temp
execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:0b}].tag.tmw.passive.jump
scoreboard players operation $jump ui_temp += $temp ui_temp

execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:1b}].tag.tmw.passive.max
scoreboard players operation @s ui_tmw601_4600_mpmax += $temp ui_temp
execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:1b}].tag.tmw.passive.regen
scoreboard players operation @s ui_tmw601_4600_mpregen += $temp ui_temp
execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:1b}].tag.tmw.passive.ctacc
scoreboard players operation @s ui_tmw601_4600_ctacc += $temp ui_temp
execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:1b}].tag.tmw.passive.speed
scoreboard players operation $speed ui_temp += $temp ui_temp
execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:1b}].tag.tmw.passive.jump
scoreboard players operation $jump ui_temp += $temp ui_temp

execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:2b}].tag.tmw.passive.max
scoreboard players operation @s ui_tmw601_4600_mpmax += $temp ui_temp
execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:2b}].tag.tmw.passive.regen
scoreboard players operation @s ui_tmw601_4600_mpregen += $temp ui_temp
execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:2b}].tag.tmw.passive.ctacc
scoreboard players operation @s ui_tmw601_4600_ctacc += $temp ui_temp
execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:2b}].tag.tmw.passive.speed
scoreboard players operation $speed ui_temp += $temp ui_temp
execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:2b}].tag.tmw.passive.jump
scoreboard players operation $jump ui_temp += $temp ui_temp

execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:3b}].tag.tmw.passive.max
scoreboard players operation @s ui_tmw601_4600_mpmax += $temp ui_temp
execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:3b}].tag.tmw.passive.regen
scoreboard players operation @s ui_tmw601_4600_mpregen += $temp ui_temp
execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:3b}].tag.tmw.passive.ctacc
scoreboard players operation @s ui_tmw601_4600_ctacc += $temp ui_temp
execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:3b}].tag.tmw.passive.speed
scoreboard players operation $speed ui_temp += $temp ui_temp
execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:3b}].tag.tmw.passive.jump
scoreboard players operation $jump ui_temp += $temp ui_temp

execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:4b}].tag.tmw.passive.max
scoreboard players operation @s ui_tmw601_4600_mpmax += $temp ui_temp
execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:4b}].tag.tmw.passive.regen
scoreboard players operation @s ui_tmw601_4600_mpregen += $temp ui_temp
execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:4b}].tag.tmw.passive.ctacc
scoreboard players operation @s ui_tmw601_4600_ctacc += $temp ui_temp
execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:4b}].tag.tmw.passive.speed
scoreboard players operation $speed ui_temp += $temp ui_temp
execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:4b}].tag.tmw.passive.jump
scoreboard players operation $jump ui_temp += $temp ui_temp

execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:5b}].tag.tmw.passive.max
scoreboard players operation @s ui_tmw601_4600_mpmax += $temp ui_temp
execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:5b}].tag.tmw.passive.regen
scoreboard players operation @s ui_tmw601_4600_mpregen += $temp ui_temp
execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:5b}].tag.tmw.passive.ctacc
scoreboard players operation @s ui_tmw601_4600_ctacc += $temp ui_temp
execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:5b}].tag.tmw.passive.speed
scoreboard players operation $speed ui_temp += $temp ui_temp
execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:5b}].tag.tmw.passive.jump
scoreboard players operation $jump ui_temp += $temp ui_temp

execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:6b}].tag.tmw.passive.max
scoreboard players operation @s ui_tmw601_4600_mpmax += $temp ui_temp
execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:6b}].tag.tmw.passive.regen
scoreboard players operation @s ui_tmw601_4600_mpregen += $temp ui_temp
execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:6b}].tag.tmw.passive.ctacc
scoreboard players operation @s ui_tmw601_4600_ctacc += $temp ui_temp
execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:6b}].tag.tmw.passive.speed
scoreboard players operation $speed ui_temp += $temp ui_temp
execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:6b}].tag.tmw.passive.jump
scoreboard players operation $jump ui_temp += $temp ui_temp

execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:7b}].tag.tmw.passive.max
scoreboard players operation @s ui_tmw601_4600_mpmax += $temp ui_temp
execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:7b}].tag.tmw.passive.regen
scoreboard players operation @s ui_tmw601_4600_mpregen += $temp ui_temp
execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:7b}].tag.tmw.passive.ctacc
scoreboard players operation @s ui_tmw601_4600_ctacc += $temp ui_temp
execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:7b}].tag.tmw.passive.speed
scoreboard players operation $speed ui_temp += $temp ui_temp
execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:7b}].tag.tmw.passive.jump
scoreboard players operation $jump ui_temp += $temp ui_temp

execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:8b}].tag.tmw.passive.max
scoreboard players operation @s ui_tmw601_4600_mpmax += $temp ui_temp
execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:8b}].tag.tmw.passive.regen
scoreboard players operation @s ui_tmw601_4600_mpregen += $temp ui_temp
execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:8b}].tag.tmw.passive.ctacc
scoreboard players operation @s ui_tmw601_4600_ctacc += $temp ui_temp
execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:8b}].tag.tmw.passive.speed
scoreboard players operation $speed ui_temp += $temp ui_temp
execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:8b}].tag.tmw.passive.jump
scoreboard players operation $jump ui_temp += $temp ui_temp

execute store result score $temp ui_temp run data get entity @s SelectedItem.tag.tmw.active.max
scoreboard players operation @s ui_tmw601_4600_mpmax += $temp ui_temp
execute store result score $temp ui_temp run data get entity @s SelectedItem.tag.tmw.active.regen
scoreboard players operation @s ui_tmw601_4600_mpregen += $temp ui_temp
execute store result score $temp ui_temp run data get entity @s SelectedItem.tag.tmw.active.ctacc
scoreboard players operation @s ui_tmw601_4600_ctacc += $temp ui_temp
execute store result score $temp ui_temp run data get entity @s SelectedItem.tag.tmw.active.speed
scoreboard players operation $speed ui_temp += $temp ui_temp
execute store result score $temp ui_temp run data get entity @s SelectedItem.tag.tmw.active.jump
scoreboard players operation $jump ui_temp += $temp ui_temp

# オーバーチャージ
execute store result score @s ui_tmw601_4600_mpmax2 run data get entity @s Inventory.[{Slot:103b}].tag.tmw.max2
scoreboard players operation @s ui_tmw601_4600_mpmax2 += @s ui_tmw601_4600_mpmax
execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:0b}].tag.tmw.passive.max2
scoreboard players operation @s ui_tmw601_4600_mpmax2 += $temp ui_temp
execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:1b}].tag.tmw.passive.max2
scoreboard players operation @s ui_tmw601_4600_mpmax2 += $temp ui_temp
execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:2b}].tag.tmw.passive.max2
scoreboard players operation @s ui_tmw601_4600_mpmax2 += $temp ui_temp
execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:3b}].tag.tmw.passive.max2
scoreboard players operation @s ui_tmw601_4600_mpmax2 += $temp ui_temp
execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:4b}].tag.tmw.passive.max2
scoreboard players operation @s ui_tmw601_4600_mpmax2 += $temp ui_temp
execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:5b}].tag.tmw.passive.max2
scoreboard players operation @s ui_tmw601_4600_mpmax2 += $temp ui_temp
execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:6b}].tag.tmw.passive.max2
scoreboard players operation @s ui_tmw601_4600_mpmax2 += $temp ui_temp
execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:7b}].tag.tmw.passive.max2
scoreboard players operation @s ui_tmw601_4600_mpmax2 += $temp ui_temp
execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:8b}].tag.tmw.passive.max2
scoreboard players operation @s ui_tmw601_4600_mpmax2 += $temp ui_temp
execute store result score $temp ui_temp run data get entity @s SelectedItem.tag.tmw.active.max2
scoreboard players operation @s ui_tmw601_4600_mpmax2 += $temp ui_temp

execute store result score @s ui_tmw601_4600_mpregen2 run data get entity @s Inventory.[{Slot:103b}].tag.tmw.regen2
execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:0b}].tag.tmw.passive.regen2
scoreboard players operation @s ui_tmw601_4600_mpregen2 += $temp ui_temp
execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:1b}].tag.tmw.passive.regen2
scoreboard players operation @s ui_tmw601_4600_mpregen2 += $temp ui_temp
execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:2b}].tag.tmw.passive.regen2
scoreboard players operation @s ui_tmw601_4600_mpregen2 += $temp ui_temp
execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:3b}].tag.tmw.passive.regen2
scoreboard players operation @s ui_tmw601_4600_mpregen2 += $temp ui_temp
execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:4b}].tag.tmw.passive.regen2
scoreboard players operation @s ui_tmw601_4600_mpregen2 += $temp ui_temp
execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:5b}].tag.tmw.passive.regen2
scoreboard players operation @s ui_tmw601_4600_mpregen2 += $temp ui_temp
execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:6b}].tag.tmw.passive.regen2
scoreboard players operation @s ui_tmw601_4600_mpregen2 += $temp ui_temp
execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:7b}].tag.tmw.passive.regen2
scoreboard players operation @s ui_tmw601_4600_mpregen2 += $temp ui_temp
execute store result score $temp ui_temp run data get entity @s Inventory.[{Slot:8b}].tag.tmw.passive.regen2
scoreboard players operation @s ui_tmw601_4600_mpregen2 += $temp ui_temp
execute store result score $temp ui_temp run data get entity @s SelectedItem.tag.tmw.active.regen2
scoreboard players operation @s ui_tmw601_4600_mpregen2 += $temp ui_temp

#
execute if score @s ui_ct matches 1.. run scoreboard players operation @s ui_tmw601_4600_ctacc_temp += @s ui_tmw601_4600_ctacc
execute if score @s ui_tmw601_4600_ctacc_temp matches 400.. run scoreboard players remove @s ui_ct 4
execute if score @s ui_tmw601_4600_ctacc_temp matches 400.. run scoreboard players remove @s ui_tmw601_4600_ctacc_temp 400
execute if score @s ui_tmw601_4600_ctacc_temp matches 200.. run scoreboard players remove @s ui_ct 2
execute if score @s ui_tmw601_4600_ctacc_temp matches 200.. run scoreboard players remove @s ui_tmw601_4600_ctacc_temp 200
execute if score @s ui_tmw601_4600_ctacc_temp matches 100.. run scoreboard players remove @s ui_ct 1
execute if score @s ui_tmw601_4600_ctacc_temp matches 100.. run scoreboard players remove @s ui_tmw601_4600_ctacc_temp 100
execute if score @s ui_tmw601_4600_ctacc_temp matches ..-100 run scoreboard players add @s ui_ct 1
execute if score @s ui_tmw601_4600_ctacc_temp matches ..-100 run scoreboard players add @s ui_tmw601_4600_ctacc_temp 100
execute if score @s ui_ct matches ..0 run scoreboard players reset @s ui_ct
execute unless score @s ui_ct matches 1.. if score @s ui_tmw601_4600_mp < @s ui_tmw601_4600_mpmax run function ui:tmw/601/head/600/regen
execute unless score @s ui_ct matches 1.. if score @s ui_tmw601_4600_mp >= @s ui_tmw601_4600_mpmax if score @s ui_tmw601_4600_mp < @s ui_tmw601_4600_mpmax2 run function ui:tmw/601/head/600/regen2
scoreboard players operation @s ui_tmw601_4600_mp > #0 ui_num
function ui:template/text_board/clay

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
scoreboard players reset $slot ui_temp
