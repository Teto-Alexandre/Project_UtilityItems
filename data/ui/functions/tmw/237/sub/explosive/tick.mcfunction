# データ共有
    scoreboard players operation $id ui_temp = @s ui_id
    execute store result score $color ui_temp run data get entity @s Item.tag.tmw.color

# 同じチームを認識して識別（もしかしたら回復スペル作るかもしれないのでメモ）
    scoreboard players operation $temp ui_temp = @s ui_team
    execute as @e[predicate=ui:load_unhurtable] if score @s ui_team = $temp ui_temp run tag @s add ui_temp_team

# それぞれの起爆
    execute as @s[scores={ui_uses=40..},nbt={Item:{tag:{tmw:{type:101}}}}] run function ui:tmw/237/sub/explosive/101
    execute as @s[nbt={Item:{tag:{tmw:{type:102}}}}] run function ui:tmw/237/sub/explosive/102.tick
    execute as @s[scores={ui_uses=100..},nbt={Item:{tag:{tmw:{type:102}}}}] run function ui:tmw/237/sub/explosive/102
    execute as @s[nbt={Item:{tag:{tmw:{type:103}}}}] unless block ~ ~-0.1 ~ #ui:nocol run function ui:tmw/237/sub/explosive/103
    execute as @s[scores={ui_uses=5..},nbt={Item:{tag:{tmw:{type:103}}}}] if entity @e[predicate=ui:load_unhurtable,dx=0,dy=0,dz=0] run function ui:tmw/237/sub/explosive/103
    execute as @s[scores={ui_uses=100..},nbt={Item:{tag:{tmw:{type:103}}}}] run function ui:tmw/237/sub/explosive/103
    execute as @s[nbt={Item:{tag:{tmw:{type:104}}}}] run function ui:tmw/237/sub/explosive/104.tick
    execute as @s[scores={ui_uses=60..},nbt={Item:{tag:{tmw:{type:104}}}}] run function ui:tmw/237/sub/explosive/104
    execute as @s[scores={ui_uses=40},nbt={Item:{tag:{tmw:{type:105}}}}] run function ui:tmw/237/sub/explosive/105
    execute as @s[scores={ui_uses=60},nbt={Item:{tag:{tmw:{type:105}}}}] run function ui:tmw/237/sub/explosive/105
    execute as @s[scores={ui_uses=100..},nbt={Item:{tag:{tmw:{type:105}}}}] run function ui:tmw/237/sub/explosive/105.final
    execute as @s[nbt={Item:{tag:{tmw:{type:106}}}}] run function ui:tmw/237/sub/explosive/106.tick
    execute as @s[scores={ui_uses=100..},nbt={Item:{tag:{tmw:{type:106}}}}] run function ui:tmw/237/sub/explosive/106

# 投擲物パーティクル
    execute if score $color ui_temp matches 1 run particle dust 0.5 1 1 1 ~ ~0.3 ~ 0.2 0.2 0.2 0 1 force
    execute if score $color ui_temp matches 1 run particle block light_blue_concrete ~ ~0.3 ~ 0.2 0.2 0.2 0 1 force
    execute if score $color ui_temp matches 1 store result score $temp ui_temp run fill ~ ~ ~ ~ ~-0.5 ~ light_blue_wool replace #ui:wools
    execute if score $color ui_temp matches 2 run particle dust 1 0.5 1 1 ~ ~0.3 ~ 0.2 0.2 0.2 0 1 force
    execute if score $color ui_temp matches 2 run particle block pink_concrete ~ ~0.3 ~ 0.2 0.2 0.2 0 1 force
    execute if score $color ui_temp matches 2 store result score $temp ui_temp run fill ~ ~ ~ ~ ~-0.5 ~ pink_wool replace #ui:wools
    execute as @a if score @s ui_id = $id ui_temp run scoreboard players operation @s ui_paint += $temp ui_temp
    scoreboard players add @s ui_uses 1