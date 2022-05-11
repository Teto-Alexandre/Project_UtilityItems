# 弾を出す
    #execute anchored eyes run summon minecraft:armor_stand ^ ^ ^ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tds.attack","ui","ui_proj","tmw_237","ui_temp_unpower"],ArmorItems:[{id:"minecraft:stone",Count:1b,tag:{display:{Name:'{"text":"null"}'}}},{},{},{}]}
    execute anchored eyes run summon minecraft:armor_stand ^ ^ ^ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tds.attack","ui","ui_proj","ui_proj_common","ui_temp_unpower"],ArmorItems:[{id:"minecraft:stone",Count:1b,tag:{display:{Name:'{"text":"null"}'}}},{},{},{}]}
    execute anchored eyes run summon minecraft:marker ^ ^ ^1 {Tags:["ui","ui_marker"]}
    execute store result score $mod ui_temp run data get storage ui:gun temp2.Spread 1
    execute if score $mod ui_temp matches 1.. run function ui:tmw/237/square_shuffle
    execute as @e[tag=ui_temp_unpower] at @s facing entity @e[tag=ui_marker,limit=1] feet run teleport @s ^ ^ ^1 ~ ~
    execute store result score @e[tag=ui_temp_unpower] ui_bm run data get storage ui:gun temp2.Speed
    execute store result score @e[tag=ui_temp_unpower] ui_br run data get storage ui:gun temp2.Range
    execute store result score @e[tag=ui_temp_unpower] ui_dmg run data get storage ui:gun temp2.Damage
    execute store result score @e[tag=ui_temp_unpower] ui_bpart run data get storage ui:gun temp2.FlyParticle
    execute store result score @e[tag=ui_temp_unpower] ui_hpart run data get storage ui:gun temp2.EndParticle
    execute if score $color ui_temp matches 2 run scoreboard players add @e[tag=ui_temp_unpower] ui_bpart 10
    execute if score $color ui_temp matches 2 run scoreboard players add @e[tag=ui_temp_unpower] ui_hpart 10
    scoreboard players set @e[tag=ui_temp_unpower] ui_autohit 1
    scoreboard players set @e[tag=ui_temp_unpower] ui_bdt 1
    scoreboard players operation @e[tag=ui_temp_unpower] ui_id = @s ui_id
    scoreboard players operation @e[tag=ui_temp_unpower] ui_team = @s ui_team
    data modify entity @e[tag=ui_temp_unpower,limit=1] ArmorItems.[0].tag.display.Name set from entity @s SelectedItem.tag.display.Name
    tag @e[tag=ui_temp_unpower] remove ui_temp_unpower
    kill @e[tag=ui_marker]
    
# ショットガン.lp
    scoreboard players remove $multishot ui_temp 1
    execute if score $multishot ui_temp matches 1.. run function ui:tmw/237/shot.lp