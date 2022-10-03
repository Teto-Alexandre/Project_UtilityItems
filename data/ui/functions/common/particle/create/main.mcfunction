# スコア化
    execute store result score $input ui_temp run data get storage ui:common input.Var

#
    summon marker ~ ~ ~ {Tags:["ui","ui_common_particle","ui_common_particle_unpower"]}

#
    execute as @e[tag=ui_common_particle_unpower] run function ui:common/particle/create/temp_unpower

# SSロジック
    schedule function ui:common/particle/ss/global 1t append