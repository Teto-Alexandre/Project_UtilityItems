#弾を出す
execute anchored eyes run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_proj","ui","ui_proj","ui_305_1","ui_305_unpower","ui_305_nohit"]}
execute anchored eyes run summon minecraft:marker ^ ^ ^1 {Tags:["ui","ui_marker"]}
execute store result score $x1 ui_calc1 run data get entity @e[tag=ui_marker,limit=1] Pos.[0] 1000
execute store result score $y1 ui_calc1 run data get entity @e[tag=ui_marker,limit=1] Pos.[1] 1000
execute store result score $z1 ui_calc1 run data get entity @e[tag=ui_marker,limit=1] Pos.[2] 1000
execute store result score $mod ui_calc1 run data get entity @s SelectedItem.tag.tmw.gun.ua
execute if entity @s[scores={ui_st=1..}] run scoreboard players operation $mod ui_calc1 /= #2 ui_num
function ui:tmw/305/rand
execute store result entity @e[tag=ui_marker,limit=1] Pos.[0] double 0.001 run scoreboard players get $x1 ui_calc1
execute store result entity @e[tag=ui_marker,limit=1] Pos.[1] double 0.001 run scoreboard players get $y1 ui_calc1
execute store result entity @e[tag=ui_marker,limit=1] Pos.[2] double 0.001 run scoreboard players get $z1 ui_calc1
execute as @e[tag=ui_305_unpower] at @s facing entity @e[tag=ui_marker,limit=1] feet run teleport @s ^ ^ ^1 ~ ~
execute store result score @e[tag=ui_305_unpower] ui_bm run data get entity @s SelectedItem.tag.tmw.gun.mov
execute store result score @e[tag=ui_305_unpower] ui_br run data get entity @s SelectedItem.tag.tmw.gun.range
execute store result score @e[tag=ui_305_unpower] ui_dmg run data get entity @s SelectedItem.tag.tmw.gun.dmg
scoreboard players operation @e[tag=ui_305_unpower] ui_bc2 = @s ui_bc2
scoreboard players operation @e[tag=ui_305_unpower] ui_bt = @s ui_bt
scoreboard players operation @e[tag=ui_305_unpower] ui_gt = @s ui_gt
scoreboard players operation @e[tag=ui_305_unpower] ui_gpc = @s ui_gpc
scoreboard players operation @e[tag=ui_305_unpower] ui_id = @s ui_id
scoreboard players operation @e[tag=ui_305_unpower] ui_team = @s ui_team
tag @e[tag=ui_305_unpower] remove ui_305_unpower
kill @e[tag=ui_marker]

#ショットガン用リピート
scoreboard players remove @s ui_gms 1
execute as @s[scores={ui_gms=1..}] at @s run function ui:tmw/305/shot_re