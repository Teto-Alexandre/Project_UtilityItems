# スコア化
    execute store result score $input ui_temp run data get storage ui:common input.Var
    execute if score $input ui_temp matches ..-1 if entity @s run scoreboard players operation $common_particle_id ui_temp = @s ui_id
    execute if score $input ui_temp matches ..-10001 if entity @s run scoreboard players operation $common_particle_team ui_temp = @s ui_team

#
    summon marker ~ ~ ~ {Tags:["ui","ui_common_particle","ui_common_particle_unpower"]}
    execute if data storage ui:common input.Num run function ui:common/particle/create/num.start

#
    execute as @e[tag=ui_common_particle_unpower] run function ui:common/particle/create/temp_unpower
    execute if data storage ui:common input.Rand run function ui:common/particle/create/rand
    tag @e[tag=ui_common_particle_unpower] remove ui_common_particle_unpower

#
    scoreboard players reset $common_particle_id ui_temp
    scoreboard players reset $common_particle_team ui_temp

# SSロジック
    schedule function ui:common/particle/ss/global 1t append