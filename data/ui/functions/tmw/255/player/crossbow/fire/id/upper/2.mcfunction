# ワルサー

#
    function ui:tmw/255/player/crossbow/fire/template/f_static
    
# 再入力受付
    scoreboard players set $combo ui_temp 0
    execute if entity @s[tag=tmw_active_temp] if score $firetime.temp ui_temp matches 8.. if score $bullets ui_temp matches 1.. store result score $firetime ui_temp run time query gametime
    execute if entity @s[tag=tmw_active_temp] if score $firetime.temp ui_temp matches 8.. if score $bullets ui_temp matches 1.. run scoreboard players set $combo ui_temp 1
    execute if entity @s[tag=tmw_active_temp] if score $firetime.temp ui_temp matches 8.. if score $bullets ui_temp matches 1.. run playsound entity.zombie.attack_iron_door player @a ~ ~ ~ 1 1.8 0
    execute if entity @s[tag=tmw_active_temp] if score $firetime.temp ui_temp matches 8.. if score $bullets ui_temp matches 1.. run function ui:tmw/255/player/crossbow/fire/template/calc

#
    scoreboard players set $firetime.max ui_temp 30
#
    #tellraw @a [{"score":{"name":"$combo","objective":"ui_temp"}}]
    execute if score $firetime.temp ui_temp matches 0 if score $combo ui_temp matches 0 run function ui:tmw/255/player/crossbow/fire/template/fire_shot
    execute if score $firetime.temp ui_temp matches 0 if score $combo ui_temp matches 1 run function ui:tmw/255/player/crossbow/fire/template/fire_shot.second
    execute if score $firetime.temp ui_temp matches 0 run playsound block.iron_door.open player @a ~ ~ ~ 1 1 0
    execute if score $firetime.temp ui_temp matches 1 run playsound block.redstone_torch.burnout player @a ~ ~ ~ 1 0.8 0
    execute if score $firetime.temp ui_temp matches 1..30 run particle smoke ^ ^ ^ 0 0 0 0.03 1
