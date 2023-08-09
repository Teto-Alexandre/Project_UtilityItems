# バーストタイプのテンプレート
    execute if entity @s[tag=tmw_active_temp] if score $firetime ui_temp matches 0 if score $cooltime ui_temp matches 0 store result score $firetime ui_temp run time query gametime
    function ui:tmw/255/player/crossbow/fire/template/calc

#
    scoreboard players set $firetime.max ui_temp 10

#
    #tellraw @a [{"score":{"name":"$firetime.temp","objective":"ui_temp"}}]

#
    execute if score $firetime.temp ui_temp matches 0 run function ui:tmw/255/player/crossbow/fire/template/fire_shot
    execute if score $firetime.temp ui_temp matches 0 run playsound entity.experience_orb.pickup player @a ~ ~ ~ 1 2
    execute if score $firetime.temp ui_temp matches 0 run playsound entity.chicken.egg player @a ~ ~ ~ 1 1
    execute if score $firetime.temp ui_temp matches 0 run data merge storage tds: {temp:{Amount:6.00f,DisableParticle:true}}
    execute if score $firetime.temp ui_temp matches 0 at @s run function tds:heal
