# スコア化
    scoreboard players set $id ui_temp 0
    scoreboard players set $team ui_temp 0
    execute store result score $input ui_temp run data get storage ui:common input.Var
    execute if score $input ui_temp matches ..-1 if entity @s run scoreboard players operation $id ui_temp = @s ui_id
    execute if score $input ui_temp matches ..-10001 if entity @s run scoreboard players operation $team ui_temp = @s ui_team

#
    summon marker ~ ~ ~ {Tags:["ui","ui_common_particle","ui_common_particle_unpower"]}
    execute if data storage ui:common input.Num run function ui:common/particle/create/num.start

#
    execute as @e[tag=ui_common_particle_unpower] run function ui:common/particle/create/temp_unpower
    execute if data storage ui:common input.Rand run function ui:common/particle/create/rand
    tag @e[tag=ui_common_particle_unpower] remove ui_common_particle_unpower

# SSロジック
    schedule function ui:common/particle/ss/global 1t append