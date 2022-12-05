#
    scoreboard players set $check ui_temp 0
    execute if entity @a[tag=ui_attacked_by_entity,distance=..6] run scoreboard players set $check ui_temp 1
    #execute if score $check ui_temp matches 0 run tellraw @a [{"selector":"@s"},{"text":"はなんかを攻撃した"}]
    #execute if score $check ui_temp matches 1 run tellraw @a [{"selector":"@s"},{"text":"が"},{"selector":"@p[tag=ui_attacked_by_entity]"},{"text":"を攻撃した"}]