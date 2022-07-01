#魂の松明がある
scoreboard players set $temp ui_temp 0
execute unless score $ammo ui_world matches 1 if entity @s[tag=!ui_224_reloaded] store success score $temp ui_temp run clear @s soul_torch 1
execute if score $ammo ui_world matches 1 if entity @s[tag=!ui_224_reloaded] run scoreboard players set $temp ui_temp 1
tag @s[tag=ui_224_reloaded] remove ui_224_reloaded

#アイテム転置
execute if score $temp ui_temp matches 1 run data modify storage ui:temp tag set from entity @s SelectedItem.tag
execute if score $temp ui_temp matches 1 run execute store result score $ammo ui_calc1 run data get storage ui:temp tag.tmw.type 1
execute if score $temp ui_temp matches 1 run execute store result storage ui:temp tag.tmw.type int 1 run scoreboard players operation $ammo ui_calc1 += #1 ui_num
execute if score $temp ui_temp matches 1 run item modify entity @s weapon.mainhand ui:tempout

#稼働環境
execute if score $temp ui_temp matches 1 run playsound block.respawn_anchor.charge player @a ~ ~ ~ 1 1.6 0
execute if score $temp ui_temp matches 1 run playsound item.flintandsteel.use player @a ~ ~ ~ 1.2 0.8 0
execute if score $temp ui_temp matches 1 run particle enchanted_hit ~ ~1 ~ 0.2 0.2 0.2 1 3 normal
execute if score $temp ui_temp matches 1 run particle soul_fire_flame ~ ~1 ~ 0.2 0.2 0.2 0.01 10 normal

#成功
execute if score $temp ui_temp matches 1 run tag @s add ui_224_reloaded