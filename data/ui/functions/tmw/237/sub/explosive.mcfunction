# データ共有
    scoreboard players operation $id ui_temp = @s ui_id
    execute store result score $color ui_temp run data get entity @s Item.tag.tmw.color

# 同じチームを認識して識別（もしかしたら回復スペル作るかもしれないのでメモ）
    scoreboard players operation $temp ui_temp = @s ui_team
    execute as @e[type=!#ui:unhurtable,tag=!ui_unhurtable] if score @s ui_team = $temp ui_temp run tag @s add ui_temp_team

# それぞれの起爆
    execute as @s[scores={ui_uses=40..},nbt={Item:{tag:{tmw:{type:1}}}}] run function ui:tmw/237/sub/ex1
    #execute as @s[nbt={Item:{tag:{tmw:{type:1}}}}] run particle soul_fire_flame ~ ~0.3 ~ 0 0 0 0.1 1 force

# 投擲物パーティクル
    execute if score $color ui_temp matches 1 run particle dust 0.5 1 1 1 ~ ~0.3 ~ 0.2 0.2 0.2 0 1 force
    execute if score $color ui_temp matches 1 run particle block light_blue_concrete ~ ~0.3 ~ 0.2 0.2 0.2 0 1 force
    execute if score $color ui_temp matches 1 store result score $temp ui_temp run fill ~ ~ ~ ~ ~-0.5 ~ light_blue_wool replace #ui:wools
    execute if score $color ui_temp matches 2 run particle dust 1 0.5 1 1 ~ ~0.3 ~ 0.2 0.2 0.2 0 1 force
    execute if score $color ui_temp matches 2 run particle block pink_concrete ~ ~0.3 ~ 0.2 0.2 0.2 0 1 force
    execute if score $color ui_temp matches 2 store result score $temp ui_temp run fill ~ ~ ~ ~ ~-0.5 ~ pink_wool replace #ui:wools
    execute as @a if score @s ui_id = $id ui_temp run scoreboard players operation @s ui_paint += $temp ui_temp
    scoreboard players add @s ui_uses 1