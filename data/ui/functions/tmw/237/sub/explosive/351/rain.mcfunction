# 弾を出す
    summon minecraft:armor_stand ^ ^ ^ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tds.attack","ui","ui_proj","tmw_237","ui_temp_unpower","ui_refd","tmw_237_deathmessage_14"],ArmorItems:[{id:"minecraft:stone",Count:1b,tag:{display:{Name:'{"text":"null"}'}}},{},{},{}]}
    scoreboard players operation $temp ui_temp = $world ui_tc
    scoreboard players operation $temp ui_temp %= #10 ui_num
    execute if score $temp ui_temp matches 0 as @e[tag=ui_temp_unpower] run teleport @s ^ ^ ^-7.2 ~ ~
    execute if score $temp ui_temp matches 1 as @e[tag=ui_temp_unpower] run teleport @s ^ ^ ^-6.4 ~ ~
    execute if score $temp ui_temp matches 2 as @e[tag=ui_temp_unpower] run teleport @s ^ ^ ^-5.6 ~ ~
    execute if score $temp ui_temp matches 3 as @e[tag=ui_temp_unpower] run teleport @s ^ ^ ^-4.8 ~ ~
    execute if score $temp ui_temp matches 4 as @e[tag=ui_temp_unpower] run teleport @s ^ ^ ^-4.0 ~ ~
    execute if score $temp ui_temp matches 5 as @e[tag=ui_temp_unpower] run teleport @s ^ ^ ^-3.2 ~ ~
    execute if score $temp ui_temp matches 6 as @e[tag=ui_temp_unpower] run teleport @s ^ ^ ^-2.4 ~ ~
    execute if score $temp ui_temp matches 7 as @e[tag=ui_temp_unpower] run teleport @s ^ ^ ^-1.6 ~ ~
    execute if score $temp ui_temp matches 8 as @e[tag=ui_temp_unpower] run teleport @s ^ ^ ^-0.8 ~ ~
    execute if score $temp ui_temp matches 9 as @e[tag=ui_temp_unpower] run teleport @s ^ ^ ^-0.0 ~ ~
    scoreboard players set @e[tag=ui_temp_unpower] ui_bpart 8
    scoreboard players set @e[tag=ui_temp_unpower] ui_hpart 0
    scoreboard players set @e[tag=ui_temp_unpower] ui_bm 100
    scoreboard players set @e[tag=ui_temp_unpower] ui_br 10
    scoreboard players set @e[tag=ui_temp_unpower] ui_gpc 1
    scoreboard players set @e[tag=ui_temp_unpower] ui_dmg 25
    scoreboard players set @e[tag=ui_temp_unpower] ui_bdt 1
    scoreboard players operation @e[tag=ui_temp_unpower] ui_id = @s ui_id
    scoreboard players operation @e[tag=ui_temp_unpower] ui_team = @s ui_team
    data modify entity @e[tag=ui_temp_unpower,limit=1] ArmorItems.[0].tag.display.Name set value '{"text":"メガホンレーザー","color":"gold"}'
    tag @e[tag=ui_temp_unpower] remove ui_temp_unpower
    kill @e[tag=ui_marker]