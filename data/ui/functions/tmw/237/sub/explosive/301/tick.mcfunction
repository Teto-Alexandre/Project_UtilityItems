# メガホン

# 常時実行
    execute if score @s ui_uses matches 2 run playsound block.tripwire.click_on player @a ~ ~ ~ 2 0.8 0
    execute if score @s ui_is matches 1 run playsound block.portal.travel ambient @a ~ ~ ~ 3 2 0
    execute if score @s ui_is matches 40.. run tag @s add ui_237_sub_stop2
    execute if score @s ui_is matches 1..40 positioned ~ ~1 ~ run function ui:tmw/237/sub/explosive/301/tick.line
    execute if score @s ui_is2 matches 1.. run playsound entity.ghast.hurt ambient @a ^ ^ ^5 0.5 0.8 0
    execute if score @s ui_is2 matches 1.. if score $team ui_temp matches 1 run particle dust 0.5 1 1 2 ~ ~1 ~ 0.7 0.7 0.7 0 4 force
    execute if score @s ui_is2 matches 1.. if score $team ui_temp matches 2 run particle dust 1 0.5 1 2 ~ ~1 ~ 0.7 0.7 0.7 0 4 force
    execute if score @s ui_is2 matches 1.. if score $team ui_temp matches 3 run particle dust 1 1 0.5 2 ~ ~1 ~ 0.7 0.7 0.7 0 4 force
    execute if score @s ui_is2 matches 1.. if score $team ui_temp matches 4 run particle dust 0.5 1 0.5 2 ~ ~1 ~ 0.7 0.7 0.7 0 4 force
    execute if score @s ui_is2 matches 1.. positioned ~ ~1 ~ run function ui:tmw/237/sub/explosive/301/rain
    execute if score @s ui_is2 matches 1.. run schedule function ui:tmw/237/ss/1 1t append
    execute if score @s ui_is2 matches 1.. run kill @e[tag=ui_temp_particle]
    execute if score @s ui_is2 matches 80.. run tag @s add ui_237_sub_explode

# 処理終了
    execute if score @s ui_uses matches 4.. run tag @s add ui_237_sub_stop
    execute as @s[tag=ui_237_sub_stop] run scoreboard players add @s ui_is 1
    execute as @s[tag=ui_237_sub_stop,scores={ui_is=1..10}] run data merge entity @s {NoGravity:1b,Motion:[0.0d,0.0d,0.0d]}
    execute as @s[tag=ui_237_sub_stop2] run scoreboard players add @s ui_is2 1
    execute as @s[tag=ui_237_sub_stop2,scores={ui_is2=1}] run data merge entity @s {NoGravity:1b,Motion:[0.0d,0.0d,0.0d]}

# 処理終了（消える）
    execute if entity @s[tag=ui_237_sub_explode] run function ui:tmw/237/sub/explosive/301/end