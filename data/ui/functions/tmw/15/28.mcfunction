#=======================================================================================================

playsound block.honey_block.break player @a ~ ~ ~ 0.7 1 0

execute rotated ~ 0 run particle dust 1 0.5 1 1 ^ ^0.2 ^1.25 1 0.1 1 0 10 force
execute rotated ~ 0 run particle block pink_concrete ^ ^0.2 ^1.25 1 0.1 1 0 10 force

#同じチームを認識して識別
    scoreboard players operation $temp ui_temp = @s ui_team
    execute as @e[predicate=ui:load_unhurtable] if score @s ui_team = $temp ui_temp run tag @s add ui_temp_team

# 前方に攻撃判定
    scoreboard players operation $Attacker tds_dmg = @s ui_id
    data modify storage ui:temp Name set from entity @s SelectedItem.tag.display.Name
    execute positioned ^ ^ ^1.25 as @e[tag=!ui_temp_team,predicate=ui:load_unhurtable,distance=..3,sort=nearest,limit=1] at @s run function ui:tmw/15/18.2

#一時タグ削除
    tag @e[tag=ui_temp_team] remove ui_temp_team

execute rotated ~ 0 store result score $temp ui_temp run fill ^-1.5 ^ ^0.5 ^ ^-1.0 ^0.5 pink_wool replace #ui:wools
scoreboard players operation @s ui_paint += $temp ui_temp
execute rotated ~ 0 store result score $temp ui_temp run fill ^-1.5 ^ ^1.0 ^ ^-1.0 ^1.0 pink_wool replace #ui:wools
scoreboard players operation @s ui_paint += $temp ui_temp
execute rotated ~ 0 store result score $temp ui_temp run fill ^-1.5 ^ ^1.5 ^ ^-1.0 ^1.5 pink_wool replace #ui:wools
scoreboard players operation @s ui_paint += $temp ui_temp
execute rotated ~ 0 store result score $temp ui_temp run fill ^-1.5 ^ ^2.0 ^ ^-1.0 ^2.0 pink_wool replace #ui:wools
scoreboard players operation @s ui_paint += $temp ui_temp
execute rotated ~ 0 store result score $temp ui_temp run fill ^-1.5 ^ ^2.5 ^ ^-1.0 ^2.5 pink_wool replace #ui:wools
scoreboard players operation @s ui_paint += $temp ui_temp
execute rotated ~ 0 store result score $temp ui_temp run fill ^-1.0 ^ ^0.5 ^ ^-1.0 ^0.5 pink_wool replace #ui:wools
scoreboard players operation @s ui_paint += $temp ui_temp
execute rotated ~ 0 store result score $temp ui_temp run fill ^-1.0 ^ ^1.0 ^ ^-1.0 ^1.0 pink_wool replace #ui:wools
scoreboard players operation @s ui_paint += $temp ui_temp
execute rotated ~ 0 store result score $temp ui_temp run fill ^-1.0 ^ ^1.5 ^ ^-1.0 ^1.5 pink_wool replace #ui:wools
scoreboard players operation @s ui_paint += $temp ui_temp
execute rotated ~ 0 store result score $temp ui_temp run fill ^-1.0 ^ ^2.0 ^ ^-1.0 ^2.0 pink_wool replace #ui:wools
scoreboard players operation @s ui_paint += $temp ui_temp
execute rotated ~ 0 store result score $temp ui_temp run fill ^-1.0 ^ ^2.5 ^ ^-1.0 ^2.5 pink_wool replace #ui:wools
scoreboard players operation @s ui_paint += $temp ui_temp
execute rotated ~ 0 store result score $temp ui_temp run fill ^-0.5 ^ ^0.5 ^ ^-1.0 ^0.5 pink_wool replace #ui:wools
scoreboard players operation @s ui_paint += $temp ui_temp
execute rotated ~ 0 store result score $temp ui_temp run fill ^-0.5 ^ ^1.0 ^ ^-1.0 ^1.0 pink_wool replace #ui:wools
scoreboard players operation @s ui_paint += $temp ui_temp
execute rotated ~ 0 store result score $temp ui_temp run fill ^-0.5 ^ ^1.5 ^ ^-1.0 ^1.5 pink_wool replace #ui:wools
scoreboard players operation @s ui_paint += $temp ui_temp
execute rotated ~ 0 store result score $temp ui_temp run fill ^-0.5 ^ ^2.0 ^ ^-1.0 ^2.0 pink_wool replace #ui:wools
scoreboard players operation @s ui_paint += $temp ui_temp
execute rotated ~ 0 store result score $temp ui_temp run fill ^-0.5 ^ ^2.5 ^ ^-1.0 ^2.5 pink_wool replace #ui:wools
scoreboard players operation @s ui_paint += $temp ui_temp
execute rotated ~ 0 store result score $temp ui_temp run fill ^0.0 ^ ^0.5 ^ ^-1.0 ^0.5 pink_wool replace #ui:wools
scoreboard players operation @s ui_paint += $temp ui_temp
execute rotated ~ 0 store result score $temp ui_temp run fill ^0.0 ^ ^1.0 ^ ^-1.0 ^1.0 pink_wool replace #ui:wools
scoreboard players operation @s ui_paint += $temp ui_temp
execute rotated ~ 0 store result score $temp ui_temp run fill ^0.0 ^ ^1.5 ^ ^-1.0 ^1.5 pink_wool replace #ui:wools
scoreboard players operation @s ui_paint += $temp ui_temp
execute rotated ~ 0 store result score $temp ui_temp run fill ^0.0 ^ ^2.0 ^ ^-1.0 ^2.0 pink_wool replace #ui:wools
scoreboard players operation @s ui_paint += $temp ui_temp
execute rotated ~ 0 store result score $temp ui_temp run fill ^0.0 ^ ^2.5 ^ ^-1.0 ^2.5 pink_wool replace #ui:wools
scoreboard players operation @s ui_paint += $temp ui_temp
execute rotated ~ 0 store result score $temp ui_temp run fill ^0.5 ^ ^0.5 ^ ^-1.0 ^0.5 pink_wool replace #ui:wools
scoreboard players operation @s ui_paint += $temp ui_temp
execute rotated ~ 0 store result score $temp ui_temp run fill ^0.5 ^ ^1.0 ^ ^-1.0 ^1.0 pink_wool replace #ui:wools
scoreboard players operation @s ui_paint += $temp ui_temp
execute rotated ~ 0 store result score $temp ui_temp run fill ^0.5 ^ ^1.5 ^ ^-1.0 ^1.5 pink_wool replace #ui:wools
scoreboard players operation @s ui_paint += $temp ui_temp
execute rotated ~ 0 store result score $temp ui_temp run fill ^0.5 ^ ^2.0 ^ ^-1.0 ^2.0 pink_wool replace #ui:wools
scoreboard players operation @s ui_paint += $temp ui_temp
execute rotated ~ 0 store result score $temp ui_temp run fill ^0.5 ^ ^2.5 ^ ^-1.0 ^2.5 pink_wool replace #ui:wools
scoreboard players operation @s ui_paint += $temp ui_temp
execute rotated ~ 0 store result score $temp ui_temp run fill ^1.0 ^ ^0.5 ^ ^-1.0 ^0.5 pink_wool replace #ui:wools
scoreboard players operation @s ui_paint += $temp ui_temp
execute rotated ~ 0 store result score $temp ui_temp run fill ^1.0 ^ ^1.0 ^ ^-1.0 ^1.0 pink_wool replace #ui:wools
scoreboard players operation @s ui_paint += $temp ui_temp
execute rotated ~ 0 store result score $temp ui_temp run fill ^1.0 ^ ^1.5 ^ ^-1.0 ^1.5 pink_wool replace #ui:wools
scoreboard players operation @s ui_paint += $temp ui_temp
execute rotated ~ 0 store result score $temp ui_temp run fill ^1.0 ^ ^2.0 ^ ^-1.0 ^2.0 pink_wool replace #ui:wools
scoreboard players operation @s ui_paint += $temp ui_temp
execute rotated ~ 0 store result score $temp ui_temp run fill ^1.0 ^ ^2.5 ^ ^-1.0 ^2.5 pink_wool replace #ui:wools
scoreboard players operation @s ui_paint += $temp ui_temp
execute rotated ~ 0 store result score $temp ui_temp run fill ^1.5 ^ ^0.5 ^ ^-1.0 ^0.5 pink_wool replace #ui:wools
scoreboard players operation @s ui_paint += $temp ui_temp
execute rotated ~ 0 store result score $temp ui_temp run fill ^1.5 ^ ^1.0 ^ ^-1.0 ^1.0 pink_wool replace #ui:wools
scoreboard players operation @s ui_paint += $temp ui_temp
execute rotated ~ 0 store result score $temp ui_temp run fill ^1.5 ^ ^1.5 ^ ^-1.0 ^1.5 pink_wool replace #ui:wools
scoreboard players operation @s ui_paint += $temp ui_temp
execute rotated ~ 0 store result score $temp ui_temp run fill ^1.5 ^ ^2.0 ^ ^-1.0 ^2.0 pink_wool replace #ui:wools
scoreboard players operation @s ui_paint += $temp ui_temp
execute rotated ~ 0 store result score $temp ui_temp run fill ^1.5 ^ ^2.5 ^ ^-1.0 ^2.5 pink_wool replace #ui:wools
scoreboard players operation @s ui_paint += $temp ui_temp

#クールタイム（MPの概念がないのでとりあえず仮追加）
scoreboard players set @s ui_ct 0

#=======================================================================================================