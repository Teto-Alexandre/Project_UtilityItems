#弾を出す
execute anchored eyes run summon minecraft:armor_stand ^ ^ ^ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_proj","ui","ui_proj","ui_305_1","ui_305_unpower","ui_305_nohit"],ArmorItems:[{id:"minecraft:stone",Count:1b,tag:{display:{Name:'{"text":"null"}'}}},{},{},{}]}
execute anchored eyes run summon minecraft:marker ^ ^ ^1 {Tags:["ui","ui_marker"]}
execute if score $c.proj.spread ui_temp matches 1.. run function ui:tmw/305/square_shuffle
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
data modify entity @e[tag=ui_305_unpower,limit=1] ArmorItems.[0].tag.display.Name set from entity @s SelectedItem.tag.display.Name
tag @e[tag=ui_305_unpower] remove ui_305_unpower
kill @e[tag=ui_marker]

#ショットガン用リピート
scoreboard players remove @s ui_gms 1
execute as @s[scores={ui_gms=1..}] at @s run function ui:tmw/305/shot_re