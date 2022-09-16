# 弾を出す
    summon minecraft:armor_stand ^ ^ ^ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tds.attack","ui","ui_proj","tmw_237","ui_temp_unpower","ui_refd","tmw_237_deathmessage_14"],ArmorItems:[{id:"minecraft:stone",Count:1b,tag:{display:{Name:'{"text":"null"}'}}},{},{},{}]}
    #scoreboard players operation $temp ui_temp = $world ui_tc
    #scoreboard players operation $temp ui_temp %= #2 ui_num
    #execute if score $temp ui_temp matches 0 as @e[tag=ui_temp_unpower] run teleport @s ^ ^ ^0.25 ~ ~
    execute as @e[tag=ui_temp_unpower] run teleport @s ^ ^ ^ ~ ~
    scoreboard players set @e[tag=ui_temp_unpower] ui_bpart 1
    scoreboard players set @e[tag=ui_temp_unpower] ui_hpart 1
    scoreboard players set @e[tag=ui_temp_unpower] ui_bm 150
    scoreboard players set @e[tag=ui_temp_unpower] ui_br 30
    scoreboard players set @e[tag=ui_temp_unpower] ui_gpc 1
    scoreboard players set @e[tag=ui_temp_unpower] ui_dmg 5
    scoreboard players set @e[tag=ui_temp_unpower] ui_bdt 1
    scoreboard players operation @e[tag=ui_temp_unpower] ui_id = @s ui_id
    scoreboard players operation @e[tag=ui_temp_unpower] ui_team = @s ui_team
    data modify entity @e[tag=ui_temp_unpower,limit=1] ArmorItems.[0].tag.display.Name set value '{"text":"ジェット","color":"gold"}'
    tag @e[tag=ui_temp_unpower] remove ui_temp_unpower
    kill @e[tag=ui_marker]