# バーストタイプのテンプレート
    execute if entity @s[tag=tmw_active_temp] if score $firetime ui_temp matches 0 if score $cooltime ui_temp matches 0 in overworld store result score $firetime ui_temp run time query gametime
    function ui:tmw/255/player/crossbow/fire/template/calc

#
    scoreboard players set $firetime.max ui_temp 400

#
    #tellraw @a [{"score":{"name":"$firetime.temp","objective":"ui_temp"}}]

#
    execute if score $firetime.temp ui_temp matches 0 run function ui:tmw/255/player/crossbow/fire/template/fire_shot
    execute if score $firetime.temp ui_temp matches 0 at @s run playsound entity.elder_guardian.death player @a ~ ~ ~ 1 2
    execute if score $firetime.temp ui_temp matches 0 at @s run playsound entity.elder_guardian.death player @a ~ ~ ~ 2 1.5
    execute if score $firetime.temp ui_temp matches 0..4 at @s run particle dust 1 1 1 1.2 ~ ~0.5 ~ 0.5 0.3 0.5 0 5 force
    execute if score $firetime.temp ui_temp matches 6 at @s run playsound block.amethyst_block.step player @a ~ ~ ~ 1 1
    execute if score $firetime.temp ui_temp matches 8 at @s run playsound block.amethyst_block.step player @a ~ ~ ~ 1 1
    execute if score $firetime.temp ui_temp matches 0..9 at @s run particle dust 1 1 1 2 ~ ~1 ~ 2 2 2 0 1 force
    execute if score $firetime.temp ui_temp matches 10..19 at @s run particle dust 1 1 1 2 ~ ~1 ~ 2 2 2 0 2 force
    execute if score $firetime.temp ui_temp matches 20..29 at @s run particle dust 1 1 1 2 ~ ~1 ~ 2 2 2 0 3 force
    execute if score $firetime.temp ui_temp matches 30..39 at @s run particle dust 1 1 1 2 ~ ~1 ~ 2 2 2 0 4 force
    execute if score $firetime.temp ui_temp matches 40..49 at @s run particle dust 1 1 1 2 ~ ~1 ~ 2 2 2 0 5 force
    execute if score $firetime.temp ui_temp matches 50..59 at @s run particle dust 1 1 1 2 ~ ~1 ~ 2 2 2 0 6 force
    execute if score $firetime.temp ui_temp matches 60..69 at @s run particle dust 1 1 1 2 ~ ~1 ~ 2 2 2 0 7 force
    execute if score $firetime.temp ui_temp matches 70..79 at @s run particle dust 1 1 1 2 ~ ~1 ~ 2 2 2 0 8 force
    execute if score $firetime.temp ui_temp matches 80..89 at @s run particle dust 1 1 1 2 ~ ~1 ~ 2 2 2 0 9 force
    execute if score $firetime.temp ui_temp matches 90 at @s run playsound entity.bat.takeoff player @a ~ ~ ~ 2 0.6 0
    execute if score $firetime.temp ui_temp matches 90..99 at @s run particle dust 1 1 1 1 ~ ~1 ~ 2 2 2 0 12 force
    execute if score $firetime.temp ui_temp matches 95 at @s run playsound entity.bat.takeoff player @a ~ ~ ~ 2 0.5 0
    execute if score $firetime.temp ui_temp matches 95 at @s run particle cloud ~ ~1 ~ 1 1 1 0.5 50 force
    execute if score $firetime.temp ui_temp matches 100..299 at @s run particle dust 1 1 1 1 ~ ~1 ~ 3 2 3 0 15 force
    execute if score $firetime.temp ui_temp matches 100 at @s run particle firework ~ ~1 ~ 0.5 0.5 0.5 1 100 force
    execute if score $firetime.temp ui_temp matches 150 at @s run particle firework ~ ~1 ~ 0.5 0.5 0.5 1 100 force
    execute if score $firetime.temp ui_temp matches 200 at @s run particle firework ~ ~1 ~ 0.5 0.5 0.5 1 100 force
    execute if score $firetime.temp ui_temp matches 100 at @s run playsound entity.ender_eye.death player @a ~ ~ ~ 2 0.6 0
    execute if score $firetime.temp ui_temp matches 150 at @s run playsound entity.ender_eye.death player @a ~ ~ ~ 2 0.6 0
    execute if score $firetime.temp ui_temp matches 200 at @s run playsound entity.ender_eye.death player @a ~ ~ ~ 2 0.6 0
    execute if score $firetime.temp ui_temp matches 100..399 if predicate ui:percentage/2.5 run function ui:tmw/255/player/crossbow/fire/id/upper/130/spread_effect
    execute if score $firetime.temp ui_temp matches 200..399 if predicate ui:percentage/5 run function ui:tmw/255/player/crossbow/fire/id/upper/130/spread_effect
    execute if score $firetime.temp ui_temp matches 300..399 if predicate ui:percentage/5 run function ui:tmw/255/player/crossbow/fire/id/upper/130/spread_effect
    execute if score $firetime.temp ui_temp matches 300 run data merge storage ui:common {input:{Mode:"create",Var:24,Num:1}}
    execute if score $firetime.temp ui_temp matches 300 run execute at @s rotated 0 0 positioned ~ ~0.1 ~ run function ui:common/particle
    execute if score $firetime.temp ui_temp matches 334 at @s run playsound entity.elder_guardian.death player @a ~ ~ ~ 1 2
    execute if score $firetime.temp ui_temp matches 336 at @s run playsound entity.elder_guardian.death player @a ~ ~ ~ 2 1.5
    execute if score $firetime.temp ui_temp matches 338 at @s run playsound entity.elder_guardian.death player @a ~ ~ ~ 1 2
    execute if score $firetime.temp ui_temp matches 390 at @s run playsound entity.elder_guardian.death player @a ~ ~ ~ 1 2
    execute if score $firetime.temp ui_temp matches 392 at @s run playsound entity.elder_guardian.death player @a ~ ~ ~ 2 1.5
    execute if score $firetime.temp ui_temp matches 394 at @s run playsound entity.elder_guardian.death player @a ~ ~ ~ 1 2
    execute if score $firetime.temp ui_temp matches 396 at @s run playsound entity.elder_guardian.death player @a ~ ~ ~ 2 1.5
    execute if score $firetime.temp ui_temp matches 398 at @s run playsound entity.elder_guardian.death player @a ~ ~ ~ 1 2
    execute if score $firetime.temp ui_temp matches 400 at @s run playsound block.amethyst_block.step player @a ~ ~ ~ 1 1
    execute if score $firetime.temp ui_temp matches 380 at @s run effect give @s glowing 2 0 true
    execute if score $firetime.temp ui_temp matches 400 run data merge storage ui:common {input:{Mode:"create",Var:-10025,Num:1}}
    execute if score $firetime.temp ui_temp matches 400 at @s rotated ~ 0 positioned ^ ^0.1 ^5 run function ui:common/particle
