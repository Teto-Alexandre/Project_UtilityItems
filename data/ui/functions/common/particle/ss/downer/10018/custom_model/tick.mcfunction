# カスタムモデルアマスタに実行

#
    scoreboard players add @s ui_is 1

#
    scoreboard players operation $is_temp ui_temp = @s ui_is
    scoreboard players operation $is_temp ui_temp %= #3 ui_num

#
    execute if score @s ui_is matches ..50 run teleport @s ~-0.6 ~-1.2 ~-0.4 ~1 ~
    execute if score @s ui_is matches 1..51 positioned ~0.6 ~1.2 ~0.4 if score $is_temp ui_temp matches 0 run particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force
    execute if score @s ui_is matches 1..51 positioned ~0.6 ~1.2 ~0.4 run particle lava ~ ~ ~ 2 2 2 0 3 force
    execute if score @s ui_is matches 1..48 positioned ~1.8 ~3.6 ~1.2 run particle flame ~ ~ ~ 2 2 2 0 5 force
    execute if score @s ui_is matches 1..51 if score $is_temp ui_temp matches 0 positioned ~0.6 ~1.2 ~0.4 run playsound entity.blaze.shoot player @a ~ ~ ~ 4 0.8
    execute if score @s ui_is matches 51 run particle explosion_emitter ~ ~ ~ 1 1 1 0 10 force
    execute if score @s ui_is matches 53 run particle explosion_emitter ~ ~ ~ 8 0 8 0 50 force
    execute if score @s ui_is matches 57 run particle lava ~ ~ ~ 9 0 9 0 200 force
    execute if score @s ui_is matches 51 run playsound entity.generic.explode player @a ~ ~ ~ 5 0.5 0
    execute if score @s ui_is matches 52 run playsound entity.generic.explode player @a ~ ~ ~ 5 0.5 0
    scoreboard players operation $is_temp ui_temp = @s ui_is
    scoreboard players operation $is_temp ui_temp %= #10 ui_num
    execute if score @s ui_is matches 52..219 run particle lava ~ ~ ~ 1.5 1.5 1.5 0 2 force
    execute if score @s ui_is matches 49..219 run particle flame ~ ~ ~ 1.5 1.5 1.5 0 4 force
    execute if score @s ui_is matches 52..199 if score $is_temp ui_temp matches 0 run playsound entity.blaze.burn player @a ~ ~ ~ 2 0.8

#
    execute if score @s ui_is matches 200.. run teleport @s ~ ~-0.2 ~ ~ ~

#
    execute if score @s ui_is matches 230.. run kill @s