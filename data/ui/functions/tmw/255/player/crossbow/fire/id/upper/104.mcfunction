# バーストタイプのテンプレート
    execute if entity @s[tag=tmw_active_temp] if score $firetime ui_temp matches 0 if score $cooltime ui_temp matches 0 in overworld store result score $firetime ui_temp run time query gametime
    function ui:tmw/255/player/crossbow/fire/template/calc

#
    scoreboard players set $firetime.max ui_temp 60

#
    #tellraw @a [{"score":{"name":"$firetime.temp","objective":"ui_temp"}}]

#
    execute if score $firetime.temp ui_temp matches 0 run function ui:tmw/255/player/crossbow/fire/template/fire_shot
    execute if score $firetime.temp ui_temp matches 0 at @s run playsound entity.evoker.prepare_attack player @a ~ ~ ~ 0.7 0.6
    execute if score $firetime.temp ui_temp matches 30 at @s run playsound entity.evoker.prepare_attack player @a ~ ~ ~ 0.7 1.2
    execute if score $firetime.temp ui_temp matches 0..2 at @s run particle dust 0.975 1.0 0.975 0.6 ~ ~2.0 ~ 0.5 0.05 0.5 0 10 force
    execute if score $firetime.temp ui_temp matches 3..5 at @s run particle dust 0.950 1.0 0.950 0.6 ~ ~1.9 ~ 0.5 0.05 0.5 0 10 force
    execute if score $firetime.temp ui_temp matches 6..8 at @s run particle dust 0.925 1.0 0.925 0.6 ~ ~1.8 ~ 0.5 0.05 0.5 0 10 force
    execute if score $firetime.temp ui_temp matches 9..11 at @s run particle dust 0.900 1.0 0.900 0.6 ~ ~1.7 ~ 0.5 0.05 0.5 0 10 force
    execute if score $firetime.temp ui_temp matches 12..14 at @s run particle dust 0.875 1.0 0.875 0.6 ~ ~1.6 ~ 0.5 0.05 0.5 0 10 force
    execute if score $firetime.temp ui_temp matches 15..17 at @s run particle dust 0.850 1.0 0.850 0.6 ~ ~1.5 ~ 0.5 0.05 0.5 0 10 force
    execute if score $firetime.temp ui_temp matches 18..20 at @s run particle dust 0.825 1.0 0.825 0.6 ~ ~1.4 ~ 0.5 0.05 0.5 0 10 force
    execute if score $firetime.temp ui_temp matches 21..23 at @s run particle dust 0.800 1.0 0.800 0.6 ~ ~1.3 ~ 0.5 0.05 0.5 0 10 force
    execute if score $firetime.temp ui_temp matches 24..26 at @s run particle dust 0.775 1.0 0.775 0.6 ~ ~1.2 ~ 0.5 0.05 0.5 0 10 force
    execute if score $firetime.temp ui_temp matches 27..29 at @s run particle dust 0.750 1.0 0.750 0.6 ~ ~1.1 ~ 0.5 0.05 0.5 0 10 force
    execute if score $firetime.temp ui_temp matches 30..32 at @s run particle dust 0.725 1.0 0.725 0.6 ~ ~1.0 ~ 0.5 0.05 0.5 0 10 force
    execute if score $firetime.temp ui_temp matches 33..35 at @s run particle dust 0.700 1.0 0.700 0.6 ~ ~0.9 ~ 0.5 0.05 0.5 0 10 force
    execute if score $firetime.temp ui_temp matches 36..38 at @s run particle dust 0.675 1.0 0.675 0.6 ~ ~0.8 ~ 0.5 0.05 0.5 0 10 force
    execute if score $firetime.temp ui_temp matches 39..41 at @s run particle dust 0.650 1.0 0.650 0.6 ~ ~0.7 ~ 0.5 0.05 0.5 0 10 force
    execute if score $firetime.temp ui_temp matches 42..44 at @s run particle dust 0.625 1.0 0.625 0.6 ~ ~0.6 ~ 0.5 0.05 0.5 0 10 force
    execute if score $firetime.temp ui_temp matches 45..47 at @s run particle dust 0.600 1.0 0.600 0.6 ~ ~0.5 ~ 0.5 0.05 0.5 0 10 force
    execute if score $firetime.temp ui_temp matches 48..50 at @s run particle dust 0.575 1.0 0.575 0.6 ~ ~0.4 ~ 0.5 0.05 0.5 0 10 force
    execute if score $firetime.temp ui_temp matches 51..53 at @s run particle dust 0.550 1.0 0.550 0.6 ~ ~0.3 ~ 0.5 0.05 0.5 0 10 force
    execute if score $firetime.temp ui_temp matches 54..56 at @s run particle dust 0.525 1.0 0.525 0.6 ~ ~0.2 ~ 0.5 0.05 0.5 0 10 force
    execute if score $firetime.temp ui_temp matches 57..59 at @s run particle dust 0.500 1.0 0.500 0.6 ~ ~0.1 ~ 0.5 0.05 0.5 0 10 force
    execute if score $firetime.temp ui_temp matches 60 at @s run playsound block.enchantment_table.use player @a ~ ~ ~ 1 0.6
    execute if score $firetime.temp ui_temp matches 60 at @s run playsound block.amethyst_block.break player @a ~ ~ ~ 1 0.8
    execute if score $firetime.temp ui_temp matches 60 at @s run particle dust 0.5 1 0.5 0.5 ~ ~ ~ 1.5 0.1 1.5 0 100 force
    execute if score $firetime.temp ui_temp matches 60 at @s run particle happy_villager ~ ~ ~ 1.5 0.1 1.5 0 50 force
    execute if score $firetime.temp ui_temp matches 60 run data merge storage ui:common {input:{Mode:"create",Var:17}}
    execute if score $firetime.temp ui_temp matches 60 at @s run function ui:common/particle
