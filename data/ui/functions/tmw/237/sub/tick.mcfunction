# データ共有
    scoreboard players operation $id ui_temp = @s ui_id
    scoreboard players operation $team ui_temp = @s ui_team
    execute store result score $color ui_temp run data get entity @s Item.tag.tmw.color
    execute store result score $type ui_temp run data get entity @s Item.tag.tmw.type

# 同じチームを認識して識別（もしかしたら回復スペル作るかもしれないのでメモ）
    execute as @e[predicate=ui:load_unhurtable] if score @s ui_team = $team ui_temp run tag @s add ui_temp_team

# それぞれの起爆
    execute if score $type ui_temp matches 101 run function ui:tmw/237/sub/explosive/101/tick
    execute if score $type ui_temp matches 102 run function ui:tmw/237/sub/explosive/102/tick
    execute if score $type ui_temp matches 103 run function ui:tmw/237/sub/explosive/103/tick
    execute if score $type ui_temp matches 104 run function ui:tmw/237/sub/explosive/104/tick
    execute if score $type ui_temp matches 105 run function ui:tmw/237/sub/explosive/105/tick
    execute if score $type ui_temp matches 106 run function ui:tmw/237/sub/explosive/106/tick
    execute if score $type ui_temp matches 107 run function ui:tmw/237/sub/explosive/107/tick
    execute if score $type ui_temp matches 108 run function ui:tmw/237/sub/explosive/108/tick
    
    execute if score $type ui_temp matches 201 run function ui:tmw/237/sub/explosive/201/tick

# 投擲物パーティクル
    execute if score $color ui_temp matches 1 run particle dust 0.5 1 1 1 ~ ~0.3 ~ 0.2 0.2 0.2 0 1 force
    execute if score $color ui_temp matches 1 run particle block light_blue_concrete ~ ~0.3 ~ 0.2 0.2 0.2 0 1 force
    execute if score $color ui_temp matches 1 store result score $temp ui_temp run fill ~ ~ ~ ~ ~-0.5 ~ light_blue_wool replace #ui:wools
    execute if score $color ui_temp matches 2 run particle dust 1 0.5 1 1 ~ ~0.3 ~ 0.2 0.2 0.2 0 1 force
    execute if score $color ui_temp matches 2 run particle block pink_concrete ~ ~0.3 ~ 0.2 0.2 0.2 0 1 force
    execute if score $color ui_temp matches 2 store result score $temp ui_temp run fill ~ ~ ~ ~ ~-0.5 ~ pink_wool replace #ui:wools
    execute as @a if score @s ui_id = $id ui_temp run scoreboard players operation @s ui_paint += $temp ui_temp
    scoreboard players add @s[nbt={OnGround:1b}] ui_uses 1

# タグ消し
    tag @s add ui_temp_team

# 水対策
    execute if block ~ ~-0.5 ~ #ui:liq run tag @s add ui_237_sub_explode