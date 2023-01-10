# バーストタイプのテンプレート
    execute if entity @s[tag=tmw_active_temp] if score $firetime ui_temp matches 0 if score $cooltime ui_temp matches 0 store result score $firetime ui_temp run time query gametime
    function ui:tmw/255/player/crossbow/fire/template/calc

#
    scoreboard players set $firetime.max ui_temp 10

#
    #tellraw @a [{"score":{"name":"$firetime.temp","objective":"ui_temp"}}]

#
    execute if score $firetime.temp ui_temp matches 0 run function ui:tmw/255/player/crossbow/fire/template/fire_shot
    execute if score $firetime.temp ui_temp matches 0 at @s rotated ~ 0 run particle firework ~ ~ ~ 0 0 0 0.3 20 force
    execute if score $firetime.temp ui_temp matches 0 at @s run playsound block.anvil.place player @a ~ ~ ~ 1 1.5
    execute if score $firetime.temp ui_temp matches 4 at @s rotated ~ 0 run particle firework ~ ~ ~ 0 0 0 0.3 20 force
    execute if score $firetime.temp ui_temp matches 4 at @s run playsound block.anvil.place player @a ~ ~ ~ 1 1.5
    execute if score $firetime.temp ui_temp matches 8 at @s rotated ~ 0 run particle firework ~ ~ ~ 0 0 0 0.3 20 force
    execute if score $firetime.temp ui_temp matches 8 at @s run playsound block.anvil.place player @a ~ ~ ~ 1 1.5
    execute if score $firetime.temp ui_temp matches 10 at @s run playsound block.bell.use player @a ~ ~ ~ 1 2
    execute if score $firetime.temp ui_temp matches 10 at @s rotated ~ 0 run particle dust 1 1 1 1 ^ ^2 ^3 2 2 2 0 60 force
    execute if score $firetime.temp ui_temp matches 10 at @s rotated ~ 0 run particle block iron_block ^ ^2 ^3 2 2 2 0 60 force
    execute if score $firetime.temp ui_temp matches 10 at @s rotated ~ 0 run particle firework ^ ^2 ^3 2 2 2 0 30 force
    execute if score $firetime.temp ui_temp matches 10 run data merge storage ui:common {input:{Mode:"create",Var:-10011}}
    execute if score $firetime.temp ui_temp matches 10 at @s rotated ~ 0 positioned ^ ^ ^3 run function ui:common/particle
