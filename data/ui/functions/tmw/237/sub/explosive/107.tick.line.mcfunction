# トルネードの上に向かって噴き出る部分

# 弾を出す
    execute anchored eyes run summon minecraft:armor_stand ^ ^ ^ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tds.attack","ui","ui_proj","tmw_237","ui_temp_unpower"],ArmorItems:[{id:"minecraft:stone",Count:1b,tag:{display:{Name:'{"text":"ボルテックスボム","color":"white","italic":false}'}}},{},{},{}]}
    execute as @e[tag=ui_temp_unpower] run teleport @s ^ ^ ^ ~ -90
    scoreboard players set @e[tag=ui_temp_unpower] ui_bpart 1
    scoreboard players set @e[tag=ui_temp_unpower] ui_bm 60
    scoreboard players set @e[tag=ui_temp_unpower] ui_br 4
    scoreboard players set @e[tag=ui_temp_unpower] ui_gpc 5
    scoreboard players set @e[tag=ui_temp_unpower] ui_dmg 50
    execute if score $team ui_temp matches 2 run scoreboard players add @e[tag=ui_temp_unpower] ui_bpart 10
    scoreboard players set @e[tag=ui_temp_unpower] ui_bdt 1
    scoreboard players operation @e[tag=ui_temp_unpower] ui_id = $id ui_temp
    scoreboard players operation @e[tag=ui_temp_unpower] ui_team = $team ui_temp
    tag @e[tag=ui_temp_unpower] remove ui_temp_unpower