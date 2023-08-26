# バーストタイプのテンプレート
    execute if entity @s[tag=tmw_active_temp] if score $firetime ui_temp matches 0 if score $cooltime ui_temp matches 0 in overworld store result score $firetime ui_temp run time query gametime
    function ui:tmw/255/player/crossbow/fire/template/calc

#
    scoreboard players set $firetime.max ui_temp 10

#
    #tellraw @a [{"score":{"name":"$firetime.temp","objective":"ui_temp"}}]

#
    execute if score $firetime.temp ui_temp matches 1 run function ui:tmw/255/player/crossbow/fire/template/fire_shot
    execute if score $firetime.temp ui_temp matches 1 at @s run playsound entity.player.attack.knockback player @a ~ ~ ~ 1 1
    execute if score $firetime.temp ui_temp matches 1 at @s anchored eyes run particle dust 1 0 1 1 ^ ^ ^3 1 1 1 0 30 force
    execute if score $firetime.temp ui_temp matches 1 at @s anchored eyes run particle dust 0 0 0 1 ^ ^ ^3 1 1 1 0 30 force
    execute if score $firetime.temp ui_temp matches 1 run scoreboard players operation $team ui_temp = @s ui_team
    execute if score $firetime.temp ui_temp matches 1 run function ui:common/tag_temp_team
    execute if score $firetime.temp ui_temp matches 1 at @s anchored eyes positioned ^ ^ ^3 as @e[predicate=ui:load_unhurtable,tag=!ui_temp_team,distance=..3] run function ui:tmw/255/player/crossbow/fire/id/upper/144/attack
