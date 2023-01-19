# バーストタイプのテンプレート
    execute if entity @s[tag=tmw_active_temp] if score $firetime ui_temp matches 0 if score $cooltime ui_temp matches 0 store result score $firetime ui_temp run time query gametime
    function ui:tmw/255/player/crossbow/fire/template/calc

#
    scoreboard players set $firetime.max ui_temp 20

#
    #tellraw @a [{"score":{"name":"$firetime.temp","objective":"ui_temp"}}]

#
    execute if score $firetime.temp ui_temp matches 0 run function ui:tmw/255/player/crossbow/fire/template/fire_shot
    execute if score $firetime.temp ui_temp matches 0 at @s run playsound block.enchantment_table.use player @a ~ ~ ~ 1 0.8
    execute if score $firetime.temp ui_temp matches 0 at @s run particle dust 1 1 1 0.8 ~ ~0.9 ~ 0.5 0.5 0.5 0 20 force
    execute if score $firetime.temp ui_temp matches 2 at @s run playsound entity.chicken.egg player @a ~ ~ ~ 1 1.2
    execute if score $firetime.temp ui_temp matches 2 at @s run particle dust 1 1 1 0.6 ~ ~0.9 ~ 0.4 0.4 0.4 0 10 force
    execute if score $firetime.temp ui_temp matches 2 at @s run particle dust 0.5 1 0.5 0.8 ~ ~0.9 ~ 0.4 0.4 0.4 0 10 force
    execute if score $firetime.temp ui_temp matches 2 run data merge storage tds: {temp:{Amount:0.50f,DisableParticle:true}}
    execute if score $firetime.temp ui_temp matches 2 at @s run function tds:heal
    execute if score $firetime.temp ui_temp matches 4 at @s run playsound entity.chicken.egg player @a ~ ~ ~ 1 1.2
    execute if score $firetime.temp ui_temp matches 4 at @s run particle dust 1 1 1 0.6 ~ ~0.9 ~ 0.4 0.4 0.4 0 10 force
    execute if score $firetime.temp ui_temp matches 4 at @s run particle dust 0.5 1 0.5 0.8 ~ ~0.9 ~ 0.4 0.4 0.4 0 10 force
    execute if score $firetime.temp ui_temp matches 4 run data merge storage tds: {temp:{Amount:0.50f,DisableParticle:true}}
    execute if score $firetime.temp ui_temp matches 4 at @s run function tds:heal
    execute if score $firetime.temp ui_temp matches 6 at @s run playsound entity.chicken.egg player @a ~ ~ ~ 1 1.2
    execute if score $firetime.temp ui_temp matches 6 at @s run particle dust 1 1 1 0.6 ~ ~0.9 ~ 0.4 0.4 0.4 0 10 force
    execute if score $firetime.temp ui_temp matches 6 at @s run particle dust 0.5 1 0.5 0.8 ~ ~0.9 ~ 0.4 0.4 0.4 0 10 force
    execute if score $firetime.temp ui_temp matches 6 run data merge storage tds: {temp:{Amount:0.50f,DisableParticle:true}}
    execute if score $firetime.temp ui_temp matches 6 at @s run function tds:heal
    execute if score $firetime.temp ui_temp matches 8 at @s run playsound entity.chicken.egg player @a ~ ~ ~ 1 1.2
    execute if score $firetime.temp ui_temp matches 8 at @s run particle dust 1 1 1 0.6 ~ ~0.9 ~ 0.4 0.4 0.4 0 10 force
    execute if score $firetime.temp ui_temp matches 8 at @s run particle dust 0.5 1 0.5 0.8 ~ ~0.9 ~ 0.4 0.4 0.4 0 10 force
    execute if score $firetime.temp ui_temp matches 8 run data merge storage tds: {temp:{Amount:0.50f,DisableParticle:true}}
    execute if score $firetime.temp ui_temp matches 8 at @s run function tds:heal
    execute if score $firetime.temp ui_temp matches 10 at @s run playsound entity.chicken.egg player @a ~ ~ ~ 1 1.2
    execute if score $firetime.temp ui_temp matches 10 at @s run particle dust 1 1 1 0.6 ~ ~0.9 ~ 0.4 0.4 0.4 0 10 force
    execute if score $firetime.temp ui_temp matches 10 at @s run particle dust 0.5 1 0.5 0.8 ~ ~0.9 ~ 0.4 0.4 0.4 0 10 force
    execute if score $firetime.temp ui_temp matches 10 run data merge storage tds: {temp:{Amount:0.50f,DisableParticle:true}}
    execute if score $firetime.temp ui_temp matches 10 at @s run function tds:heal
    execute if score $firetime.temp ui_temp matches 12 at @s run playsound entity.chicken.egg player @a ~ ~ ~ 1 1.2
    execute if score $firetime.temp ui_temp matches 12 at @s run particle dust 1 1 1 0.6 ~ ~0.9 ~ 0.4 0.4 0.4 0 10 force
    execute if score $firetime.temp ui_temp matches 12 at @s run particle dust 0.5 1 0.5 0.8 ~ ~0.9 ~ 0.4 0.4 0.4 0 10 force
    execute if score $firetime.temp ui_temp matches 12 run data merge storage tds: {temp:{Amount:0.50f,DisableParticle:true}}
    execute if score $firetime.temp ui_temp matches 12 at @s run function tds:heal
    execute if score $firetime.temp ui_temp matches 14 at @s run playsound entity.chicken.egg player @a ~ ~ ~ 1 1.2
    execute if score $firetime.temp ui_temp matches 14 at @s run particle dust 1 1 1 0.6 ~ ~0.9 ~ 0.4 0.4 0.4 0 10 force
    execute if score $firetime.temp ui_temp matches 14 at @s run particle dust 0.5 1 0.5 0.8 ~ ~0.9 ~ 0.4 0.4 0.4 0 10 force
    execute if score $firetime.temp ui_temp matches 14 run data merge storage tds: {temp:{Amount:0.50f,DisableParticle:true}}
    execute if score $firetime.temp ui_temp matches 14 at @s run function tds:heal
    execute if score $firetime.temp ui_temp matches 16 at @s run playsound entity.chicken.egg player @a ~ ~ ~ 1 1.2
    execute if score $firetime.temp ui_temp matches 16 at @s run particle dust 1 1 1 0.6 ~ ~0.9 ~ 0.4 0.4 0.4 0 10 force
    execute if score $firetime.temp ui_temp matches 16 at @s run particle dust 0.5 1 0.5 0.8 ~ ~0.9 ~ 0.4 0.4 0.4 0 10 force
    execute if score $firetime.temp ui_temp matches 16 run data merge storage tds: {temp:{Amount:0.50f,DisableParticle:true}}
    execute if score $firetime.temp ui_temp matches 16 at @s run function tds:heal
    execute if score $firetime.temp ui_temp matches 18 at @s run playsound entity.chicken.egg player @a ~ ~ ~ 1 1.2
    execute if score $firetime.temp ui_temp matches 18 at @s run particle dust 1 1 1 0.6 ~ ~0.9 ~ 0.4 0.4 0.4 0 10 force
    execute if score $firetime.temp ui_temp matches 18 at @s run particle dust 0.5 1 0.5 0.8 ~ ~0.9 ~ 0.4 0.4 0.4 0 10 force
    execute if score $firetime.temp ui_temp matches 18 run data merge storage tds: {temp:{Amount:0.50f,DisableParticle:true}}
    execute if score $firetime.temp ui_temp matches 18 at @s run function tds:heal
    execute if score $firetime.temp ui_temp matches 20 at @s run playsound entity.chicken.egg player @a ~ ~ ~ 1 1.2
    execute if score $firetime.temp ui_temp matches 20 at @s run particle dust 1 1 1 0.6 ~ ~0.9 ~ 0.4 0.4 0.4 0 10 force
    execute if score $firetime.temp ui_temp matches 20 at @s run particle dust 0.5 1 0.5 0.8 ~ ~0.9 ~ 0.4 0.4 0.4 0 10 force
    execute if score $firetime.temp ui_temp matches 20 run data merge storage tds: {temp:{Amount:0.50f,DisableParticle:true}}
    execute if score $firetime.temp ui_temp matches 20 at @s run function tds:heal
