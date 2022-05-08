# 弾を出す
    execute anchored eyes run summon minecraft:armor_stand ^ ^ ^ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tds.attack","ui","ui_proj","tmw_235","ui_temp_unpower"],ArmorItems:[{id:"minecraft:stone",Count:1b,tag:{display:{Name:'{"text":"null"}'}}},{},{},{}]}
    execute anchored eyes run summon minecraft:marker ^ ^ ^1 {Tags:["ui","ui_marker"]}
    execute store result score $mod ui_temp run data get entity @s Inventory.[{Slot:-106b}].tag.tmw.gun.ua 1
    execute if score $mod ui_temp matches 1.. run function ui:tmw/235/square_shuffle
    execute as @e[tag=ui_temp_unpower] at @s facing entity @e[tag=ui_marker,limit=1] feet run teleport @s ^ ^ ^1 ~ ~
    execute store result score @e[tag=ui_temp_unpower] ui_bm run data get entity @s Inventory.[{Slot:-106b}].tag.tmw.gun.mov
    execute store result score @e[tag=ui_temp_unpower] ui_br run data get entity @s Inventory.[{Slot:-106b}].tag.tmw.gun.range
    execute store result score @e[tag=ui_temp_unpower] ui_dmg run data get entity @s Inventory.[{Slot:-106b}].tag.tmw.gun.dmg
    execute store result score @e[tag=ui_temp_unpower] ui_kb run data get entity @s Inventory.[{Slot:-106b}].tag.tmw.gun.kb
    scoreboard players operation @e[tag=ui_temp_unpower] ui_id = @s ui_id
    scoreboard players operation @e[tag=ui_temp_unpower] ui_team = @s ui_team
    data modify entity @e[tag=ui_temp_unpower,limit=1] ArmorItems.[0].tag.display.Name set from entity @s Inventory.[{Slot:-106b}].tag.display.Name
    tag @e[tag=ui_temp_unpower] remove ui_temp_unpower
    kill @e[tag=ui_marker]
    
# ショットガン.lp
    scoreboard players remove $multishot ui_temp 1
    execute if score $multishot ui_temp matches 1.. run function ui:tmw/235/oh/shot.lp