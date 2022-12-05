#
    scoreboard players set $check ui_temp 0
    execute if entity @a[tag=ui_attack_to_entity,distance=..6] run scoreboard players set $check ui_temp 1
    #execute if score $check ui_temp matches 0 run tellraw @a [{"selector":"@s"},{"text":"はなんかに攻撃された"}]
    #execute if score $check ui_temp matches 1 run tellraw @a [{"selector":"@s"},{"text":"は"},{"selector":"@p[tag=ui_attack_to_entity]"},{"text":"に攻撃された"}]