# 直進弾コモン
    #必須入力値
        #$c.proj.speed 速度(0.5m/s)
        #$c.proj.range 射程(0.5m)
    #サブ入力値
        #$c.proj.spread 拡散度(0.001m)
        #$c.proj.team 所属チーム
        #$c.proj.particle 軌跡パーティクル
    #タグ：ui_proj_common付きプロジェクタイルを返す

# summon
summon minecraft:armor_stand ^ ^ ^ {Marker:1b,NoGravity:1b,Invisible:1b,Tags:["tmw_proj","ui","ui_proj","tmw_237_Punit","tmw_237_Punit_unpower"]}
summon minecraft:marker ^ ^ ^1 {Tags:["ui","ui_marker"]}
execute if score $c.proj.spread ui_temp matches 1.. run function ui:tmw/237/particle_unit/square_shuffle
execute as @e[tag=tmw_237_Punit_unpower] at @s facing entity @e[tag=ui_marker,limit=1] feet run teleport @s ^ ^ ^ ~ ~
scoreboard players operation @e[tag=tmw_237_Punit_unpower] ui_team = $c.proj.team ui_temp
scoreboard players operation @e[tag=tmw_237_Punit_unpower] ui_bm = $c.proj.speed ui_temp
scoreboard players operation @e[tag=tmw_237_Punit_unpower] ui_br = $c.proj.range ui_temp
scoreboard players operation @e[tag=tmw_237_Punit_unpower] ui_bpart = $c.proj.particle ui_temp
tag @e[tag=tmw_237_Punit_unpower] remove tmw_237_Punit_unpower
kill @e[tag=ui_marker]

# temp
scoreboard players reset $c.proj.team ui_temp
scoreboard players reset $c.proj.spread ui_temp
scoreboard players reset $c.proj.speed ui_temp
scoreboard players reset $c.proj.range ui_temp
scoreboard players reset $c.proj.particle ui_temp