# バーストタイプのテンプレート
    execute if entity @s[tag=tmw_active_temp] if score $firetime ui_temp matches 0 if score $cooltime ui_temp matches 0 store result score $firetime ui_temp run time query gametime
    function ui:tmw/255/player/crossbow/fire/template/calc

#
    scoreboard players set $firetime.max ui_temp 10

#
    #tellraw @a [{"score":{"name":"$firetime.temp","objective":"ui_temp"}}]

#
    execute if score $firetime.temp ui_temp matches 0 run function ui:tmw/255/player/crossbow/fire/template/fire_shot
    execute if score $firetime.temp ui_temp matches 0 at @s run playsound entity.elder_guardian.death player @a ~ ~ ~ 1 2
    execute if score $firetime.temp ui_temp matches 0 at @s run playsound entity.elder_guardian.death player @a ~ ~ ~ 2 1.5
    execute if score $firetime.temp ui_temp matches 0..4 at @s run particle dust 1 1 1 1.2 ~ ~0.5 ~ 0.5 0.3 0.5 0 5 force
    execute if score $firetime.temp ui_temp matches 5..9 at @s run particle dust 1 1 1 1.2 ~ ~0.9 ~ 0.5 0.5 0.5 0 10 force
    execute if score $firetime.temp ui_temp matches 10 at @s run particle dust 1 1 1 2 ~ ~1 ~ 1 1 1 0 30 force
    execute if score $firetime.temp ui_temp matches 6 at @s run playsound block.amethyst_block.step player @a ~ ~ ~ 1 1
    execute if score $firetime.temp ui_temp matches 8 at @s run playsound block.amethyst_block.step player @a ~ ~ ~ 1 1
    execute if score $firetime.temp ui_temp matches 10 at @s run playsound block.amethyst_block.step player @a ~ ~ ~ 1 1
    execute if score $firetime.temp ui_temp matches 10 at @s run effect give @s glowing 1 0 true
    execute if score $firetime.temp ui_temp matches 10 run data merge storage ui:common {input:{Mode:"create",Var:-10024,Num:1}}
    execute if score $firetime.temp ui_temp matches 10 at @s rotated ~ 0 positioned ^ ^0.1 ^5 run function ui:common/particle
