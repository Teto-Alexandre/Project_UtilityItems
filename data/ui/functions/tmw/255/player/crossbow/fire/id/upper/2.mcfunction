# ワルサー

#
    function ui:tmw/255/player/crossbow/fire/template/f_static

#
    scoreboard players set $firetime.max ui_temp 30
#
    #tellraw @a [{"score":{"name":"$firetime","objective":"ui_temp"}}]
    execute if score $firetime.temp ui_temp matches 0 run function ui:tmw/255/player/crossbow/fire/template/fire_shot
    execute if score $firetime.temp ui_temp matches 0 run playsound block.iron_door.open player @a ~ ~ ~ 1 1 0
    execute if score $firetime.temp ui_temp matches 1 run playsound block.redstone_torch.burnout player @a ~ ~ ~ 1 0.8 0
    execute if score $firetime.temp ui_temp matches 0..30 run particle smoke ^ ^ ^ 0 0 0 0.03 1
