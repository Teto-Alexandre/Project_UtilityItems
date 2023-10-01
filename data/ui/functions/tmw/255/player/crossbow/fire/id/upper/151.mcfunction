# バーストタイプのテンプレート
    execute if entity @s[tag=tmw_active_temp] if score $firetime ui_temp matches 0 if score $cooltime ui_temp matches 0 in overworld store result score $firetime ui_temp run time query gametime
    function ui:tmw/255/player/crossbow/fire/template/calc

#
    scoreboard players set $firetime.max ui_temp 30

#
    #tellraw @a [{"score":{"name":"$firetime.temp","objective":"ui_temp"}}]

#
    execute if score $firetime.temp ui_temp matches 0 at @s run playsound block.iron_trapdoor.close player @a ~ ~ ~ 1 0.8
    execute if score $firetime.temp ui_temp matches 0 at @s run particle crit ~ ~1 ~ 0.5 0.5 0.5 1 20 force
    execute if score $firetime.temp ui_temp matches 0 run item replace entity @s[nbt=!{Inventory:[{Slot:-106b}]}] weapon.offhand with carrot_on_a_stick{CustomModelData:180089,Null:1,Damage:25,display:{Name:'{"text":"ケヤキ工房"}'}}
    execute if score $firetime.temp ui_temp matches 10 run data merge storage ui:common {input:{Mode:"create",Var:-10034,Var2:9}}
    execute if score $firetime.temp ui_temp matches 10 at @s anchored eyes rotated ~ 0 positioned ^ ^0.5 ^1 rotated ~-90 -50 run function ui:common/particle
    execute if score $firetime.temp ui_temp matches 30 run clear @s carrot_on_a_stick{CustomModelData:180089,Null:1}
    execute if score $firetime.temp ui_temp matches 30 run data merge storage ui:common {input:{Mode:"create",Var:-10034,Var2:9}}
    execute if score $firetime.temp ui_temp matches 30 at @s anchored eyes rotated ~ 0 positioned ^ ^0.5 ^1 rotated ~-90 50 run function ui:common/particle
    execute if score $firetime.temp ui_temp matches 30 run function ui:tmw/255/player/crossbow/fire/template/fire_burst