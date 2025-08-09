data modify storage ui:temp temp.lore_word set string storage ui:temp temp.lore_temp 0 1
data modify storage ui:temp temp.lore_temp set string storage ui:temp temp.lore_temp 1

execute if score $mode ui_temp matches 1 run data modify storage ui:macro temp.1 set from storage ui:temp temp.lore_new
execute if score $mode ui_temp matches -1 run data modify storage ui:macro temp.1 set from storage ui:temp temp.lore_code
data modify storage ui:macro temp.2 set from storage ui:temp temp.lore_word

#execute unless data storage ui:temp temp{lore_word:"/"} run tellraw @s [{"storage":"ui:macro","nbt":"temp.1","color":"gray"},{"text":" + ","color":"gray"},{"storage":"ui:macro","nbt":"temp.2","color":"gray"}]
execute if score $edited ui_temp matches 1 if data storage ui:temp temp{lore_word:"{"} run scoreboard players set $edited ui_temp 2
execute if score $edited ui_temp matches 1 run scoreboard players set $edited ui_temp 0
execute if data storage ui:temp temp{lore_word:"["} run scoreboard players set $edited ui_temp 1
execute unless data storage ui:temp temp{lore_word:"/"} run function ui:template/macro/string_combine with storage ui:macro temp
execute if data storage ui:temp temp{lore_word:"/"} run scoreboard players operation $mode ui_temp *= #-2 ui_num
#execute if data storage ui:temp temp{lore_word:"/"} if score $mode ui_temp matches -2 run tellraw @s [{"text":" ▼ コード受付開始","color":"gray"}]
execute if data storage ui:temp temp{lore_word:"/"} if score $mode ui_temp matches -2 unless data storage ui:temp temp{lore_new:""} run function ui:tmw/272/_creator/macro/json_block/gray with storage ui:temp temp
execute if data storage ui:temp temp{lore_word:"/"} if score $mode ui_temp matches -2 run data modify storage ui:temp temp.lore_new set value ""
#execute if data storage ui:temp temp{lore_word:"/"} if score $mode ui_temp matches 2 run tellraw @s [{"text":" ▼ コード受付終了","color":"gray"}]
execute if data storage ui:temp temp{lore_word:"/"} if score $mode ui_temp matches 2 run function ui:tmw/272/_creator/macro/lore_color2_code with storage ui:temp temp

execute if score $mode ui_temp matches 1 run data modify storage ui:temp temp.lore_new set from storage ui:macro temp.NewString
execute if score $mode ui_temp matches -1 run data modify storage ui:temp temp.lore_code set from storage ui:macro temp.NewString
execute if score $mode ui_temp matches 2 run tellraw @s [{"storage":"ui:temp","nbt":"temp.lore_code","color":"red"}]
execute if score $mode ui_temp matches 2 run data modify storage ui:temp temp.lore_code set value ""

execute unless score $mode ui_temp matches -1..1 run scoreboard players operation $mode ui_temp /= #2 ui_num

data remove storage ui:macro temp.NewString

scoreboard players remove $length ui_temp 1
execute if score $length ui_temp matches 0 run function ui:tmw/272/_creator/macro/json_block/gray with storage ui:temp temp
execute if score $length ui_temp matches 1.. run function ui:tmw/272/_creator/macro/lore_color2