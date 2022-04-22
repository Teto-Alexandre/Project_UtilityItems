# メッセージ
tellraw @a[distance=..25] [{"color":"gray","text":"damage"},{"color":"green","text":"> "},{"color":"gray","text":"============= Record Ended ============="}]

# 既定値を越えたら経験値を産出
execute if score @s ui_is matches 1000.. run summon experience_orb ~ ~ ~ {Tags:["tmw_r_exp"],Value:1s}
execute if score @s ui_is matches 1000.. run execute store result entity @e[tag=tmw_r_exp,limit=1] Value short 0.001 run scoreboard players get @s ui_is
execute if score @s ui_is matches 1000.. run advancement grant @a[distance=..25] only ui:dream/high_damage
execute if score @s ui_is matches 1000.. run tag @e[tag=tmw_r_exp] remove tmw_r_exp

# コンボ中断
scoreboard players reset @s ui_is
scoreboard players reset @s ui_is2
playsound entity.skeleton.hurt block @a ~ ~ ~ 1 1.4