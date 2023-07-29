summon marker ~ ~ ~ {Tags:["ui_common_temp_block_gravity","ui_common_block_gravity"]}

scoreboard players set @e[tag=ui_common_temp_block_gravity] ui_is 8
tag @e[tag=ui_common_temp_block_gravity] remove ui_common_temp_block_gravity

schedule function ui:common/block_gravity/ss/global 1t append