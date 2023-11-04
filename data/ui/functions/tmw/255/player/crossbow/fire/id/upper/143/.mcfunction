# バーストタイプのテンプレート
    execute if entity @s[tag=tmw_active_temp] if score $firetime ui_temp matches 0 if score $cooltime ui_temp matches 0 in overworld store result score $firetime ui_temp run time query gametime
    function ui:tmw/255/player/crossbow/fire/template/calc

#
    scoreboard players set $firetime.max ui_temp 10

#
    #tellraw @a [{"score":{"name":"$firetime.temp","objective":"ui_temp"}}]

#
    execute if score $firetime.temp ui_temp matches 1 run function ui:tmw/255/player/crossbow/fire/template/fire_shot
    execute if score $firetime.temp ui_temp matches 1 at @s run playsound block.bell.use player @a ~ ~ ~ 1 0.6
    execute if score $firetime.temp ui_temp matches 1 at @s run particle dust 1 1 1 1 ~ ~1 ~ 0.5 0.5 0.5 0 20 force
    execute if score $firetime.temp ui_temp matches 10 run tag @s add ui_temp_this
    execute if score $firetime.temp ui_temp matches 10 run scoreboard players operation $team ui_temp = @s ui_team
    execute if score $firetime.temp ui_temp matches 10 run function ui:common/tag_temp_team/
    execute if score $firetime.temp ui_temp matches 10 if score @s ui_tmw601_accessory matches 5005 as @e[predicate=ui:load_unhurtable,tag=ui_temp_team,tag=!ui_temp_this] at @s run function ui:tmw/255/player/crossbow/fire/id/upper/143/heal
    execute if score $firetime.temp ui_temp matches 10 if entity @s[scores={ui_st=0}] at @e[predicate=ui:load_unhurtable,tag=!ui_temp_team,nbt={OnGround:1b},distance=..100,sort=nearest,limit=1] run function ui:tmw/255/player/crossbow/fire/id/upper/143/attack
    execute if score $firetime.temp ui_temp matches 10 if entity @s[scores={ui_st=0}] at @e[predicate=ui:load_unhurtable,tag=!ui_temp_team,nbt={OnGround:1b},distance=..100,sort=random,limit=9] run function ui:tmw/255/player/crossbow/fire/id/upper/143/attack
    execute if score $firetime.temp ui_temp matches 10 if entity @s[scores={ui_st=1..,ui_st2=..8}] at @e[predicate=ui:load_unhurtable,tag=!ui_temp_team,nbt={OnGround:1b},distance=..100,sort=nearest,limit=1] run function ui:tmw/255/player/crossbow/fire/id/upper/143/attack3
    execute if score $firetime.temp ui_temp matches 10 if entity @s[scores={ui_st=1..,ui_st2=9..}] positioned ^ ^5 ^30 at @e[predicate=ui:load_unhurtable,tag=!ui_temp_team,distance=..100,sort=nearest,limit=1] run function ui:tmw/255/player/crossbow/fire/id/upper/143/attack2
    execute if score $firetime.temp ui_temp matches 10 if score @s ui_tmw601_accessory matches 5005 run function ui:tmw/255/player/crossbow/fire/id/upper/143/apostle
    execute if score $firetime.temp ui_temp matches 10 run tag @e[tag=ui_temp_target] remove ui_temp_target
    execute if score $firetime.temp ui_temp matches 10 run tag @s remove ui_temp_this
