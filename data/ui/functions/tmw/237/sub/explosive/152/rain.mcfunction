# 弾を出す
    summon minecraft:armor_stand ^ ^ ^ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tds.attack","ui","ui_proj","tmw_237","ui_temp_unpower","tmw_237_deathmessage_14"],ArmorItems:[{id:"minecraft:stone",Count:1b,tag:{display:{Name:'{"text":"null"}'}}},{},{},{}]}
    summon minecraft:marker ^ ^ ^1 {Tags:["ui","ui_marker"]}
    scoreboard players set $mod ui_temp 500
    function ui:tmw/237/square_shuffle
    execute as @e[tag=ui_temp_unpower] at @s facing entity @e[tag=ui_marker,limit=1] feet run teleport @s ^ ^ ^1 ~ ~
    scoreboard players set @e[tag=ui_temp_unpower] ui_bpart 1
    scoreboard players set @e[tag=ui_temp_unpower] ui_hpart 101
    scoreboard players set @e[tag=ui_temp_unpower] ui_bm 10
    scoreboard players set @e[tag=ui_temp_unpower] ui_br 20
    scoreboard players set @e[tag=ui_temp_unpower] ui_gpc 2
    scoreboard players set @e[tag=ui_temp_unpower] ui_dmg 50
    scoreboard players set @e[tag=ui_temp_unpower] ui_bdt 1
    scoreboard players operation @e[tag=ui_temp_unpower] ui_id = @s ui_id
    scoreboard players operation @e[tag=ui_temp_unpower] ui_team = @s ui_team
    data modify entity @e[tag=ui_temp_unpower,limit=1] ArmorItems.[0].tag.display.Name set value '{"text":"アメフラシ","color":"gold"}'
    tag @e[tag=ui_temp_unpower] remove ui_temp_unpower
    kill @e[tag=ui_marker]