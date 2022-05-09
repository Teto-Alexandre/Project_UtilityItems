# 弾を出す
    execute anchored eyes run summon minecraft:armor_stand ^ ^ ^ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tds.attack","ui","ui_proj","tmw_235","ui_temp_unpower"],ArmorItems:[{id:"minecraft:stone",Count:1b,tag:{display:{Name:'{"text":"null"}'}}},{},{},{}]}
    execute anchored eyes run summon minecraft:marker ^ ^ ^1 {Tags:["ui","ui_marker"]}
    execute store result score $mod ui_temp run data get storage ui:gun temp.ua 1
    #snipe係数をもとに範囲を絞る
    execute if entity @s[scores={ui_snipe=1..}] run scoreboard players operation $temp ui_temp = @s ui_snipe
    execute if entity @s[scores={ui_snipe=1..}] run scoreboard players add $temp ui_temp 1
    execute if entity @s[scores={ui_snipe=1..}] run scoreboard players operation $mod ui_temp /= $temp ui_temp
    execute if score $mod ui_temp matches 1.. run function ui:tmw/235/square_shuffle
    execute as @e[tag=ui_temp_unpower] at @s facing entity @e[tag=ui_marker,limit=1] feet run teleport @s ^ ^ ^1 ~ ~
    execute store result score @e[tag=ui_temp_unpower] ui_bm run data get storage ui:gun temp.mov
    execute store result score @e[tag=ui_temp_unpower] ui_br run data get storage ui:gun temp.range
    execute store result score @e[tag=ui_temp_unpower] ui_dmg run data get storage ui:gun temp.dmg
    execute store result score @e[tag=ui_temp_unpower] ui_kb run data get storage ui:gun temp.kb
    scoreboard players operation @e[tag=ui_temp_unpower] ui_id = @s ui_id
    scoreboard players operation @e[tag=ui_temp_unpower] ui_team = @s ui_team
    data modify entity @e[tag=ui_temp_unpower,limit=1] ArmorItems.[0].tag.display.Name set from entity @s SelectedItem.tag.display.Name
    tag @e[tag=ui_temp_unpower] remove ui_temp_unpower
    kill @e[tag=ui_marker]
    
# ショットガン.lp
    scoreboard players remove $multishot ui_temp 1
    execute if score $multishot ui_temp matches 1.. run function ui:tmw/235/shot.lp