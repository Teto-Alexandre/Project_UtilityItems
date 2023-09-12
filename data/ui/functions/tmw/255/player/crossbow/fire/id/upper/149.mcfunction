# バーストタイプのテンプレート
    execute if entity @s[tag=tmw_active_temp] if score $firetime ui_temp matches 0 if score $cooltime ui_temp matches 0 in overworld store result score $firetime ui_temp run time query gametime
    function ui:tmw/255/player/crossbow/fire/template/calc

#
    scoreboard players set $firetime.max ui_temp 30

#
    #tellraw @a [{"score":{"name":"$firetime.temp","objective":"ui_temp"}}]

#
    scoreboard players set $success ui_temp 0
    execute store result score $Model ui_temp run data get entity @s SelectedItem.tag.CustomModelData

#
    execute if score $firetime.temp ui_temp matches 0 at @s run playsound block.iron_trapdoor.close player @a ~ ~ ~ 1 0.8
    execute if score $firetime.temp ui_temp matches 0 at @s run particle crit ~ ~1 ~ 0.5 0.5 0.5 1 20 force
    execute if score $firetime.temp ui_temp matches 0 run scoreboard players set $success ui_temp 1
    execute if score $firetime.temp ui_temp matches 0 run scoreboard players set $Model ui_temp 180085
    execute if score $firetime.temp ui_temp matches 10 run data merge storage ui:common {input:{Mode:"create",Var:-10034,Var2:5}}
    execute if score $firetime.temp ui_temp matches 10 at @s anchored eyes rotated ~ 0 positioned ^ ^-0.3 ^1 run function ui:common/particle
    execute if score $firetime.temp ui_temp matches 10 run effect give @s speed 1 4 true
    execute if score $firetime.temp ui_temp matches 30 run data merge storage ui:common {input:{Mode:"create",Var:-10034,Var2:5}}
    execute if score $firetime.temp ui_temp matches 30 at @s anchored eyes rotated ~ 0 positioned ^ ^-0.3 ^1 run function ui:common/particle
    execute if score $firetime.temp ui_temp matches 30 run scoreboard players set $success ui_temp 1
    execute if score $firetime.temp ui_temp matches 30 run scoreboard players set $Model ui_temp 180084
    execute if score $firetime.temp ui_temp matches 30 run function ui:tmw/255/player/crossbow/fire/template/fire_burst

# 書き込み
    execute if score $success ui_temp matches 1 store result storage ui:temp CustomModelData int 1 run scoreboard players get $Model ui_temp
    execute if score $success ui_temp matches 1 run item modify entity @s weapon.mainhand ui:gun/each/model
    execute if score $success ui_temp matches 1 run scoreboard players reset $Model ui_temp
    execute if score $success ui_temp matches 1 run data remove storage ui:temp CustomModelData