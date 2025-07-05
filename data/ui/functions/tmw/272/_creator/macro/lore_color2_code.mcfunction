scoreboard players set $success ui_temp 0

$execute if score $success ui_temp matches 0 store success score $success ui_temp if data storage cg_custom: advanced_value[{id:"$(lore_code)"}].text.title run data modify storage ui:temp temp.lore_list append string storage cg_custom: advanced_value[{id:"$(lore_code)"}].text.title 1 -1
$execute if score $success ui_temp matches 0 store success score $success ui_temp if data storage ui:tmw272_text simple_value.$(lore_code).title run data modify storage ui:temp temp.lore_list append string storage ui:tmw272_text simple_value.$(lore_code).title 1 -1
execute if score $success ui_temp matches 0 store success score $success ui_temp if data storage ui:temp temp{lore_code:"唯一"} run function ui:tmw/272/_creator/macro/lore_zip/only_one
execute if score $success ui_temp matches 0 store success score $success ui_temp if data storage ui:temp temp{lore_code:"準唯一"} run function ui:tmw/272/_creator/macro/lore_zip/only_two
execute if score $success ui_temp matches 0 store success score $success ui_temp if data storage ui:temp temp{lore_code:"永続"} run function ui:tmw/272/_creator/macro/lore_zip/repeat_-1
execute if score $success ui_temp matches 0 store success score $success ui_temp if data storage ui:temp temp{lore_code:"開幕"} run function ui:tmw/272/_creator/macro/lore_zip/delay_type_1
execute if score $success ui_temp matches 0 store success score $success ui_temp if data storage ui:temp temp{lore_code:"閉幕"} run function ui:tmw/272/_creator/macro/lore_zip/delay_type_2
execute if score $success ui_temp matches 0 store success score $success ui_temp if data storage ui:temp temp{lore_code:"軽減"} run function ui:tmw/272/_creator/macro/lore_zip/cost_type_1
execute if score $success ui_temp matches 0 store success score $success ui_temp if data storage ui:temp temp{lore_code:"条件"} run function ui:tmw/272/_creator/macro/lore_zip/cost_type_2
execute if score $success ui_temp matches 0 store success score $success ui_temp if data storage ui:temp temp{lore_code:"幕中一度"} run function ui:tmw/272/_creator/macro/lore_zip/turn1
execute if score $success ui_temp matches 0 store success score $success ui_temp if data storage ui:temp temp{lore_code:"開戦"} run function ui:tmw/272/_creator/macro/lore_zip/oo_draw_effect
execute if score $success ui_temp matches 0 store success score $success ui_temp if data storage ui:temp temp{lore_code:"ドロー"} run function ui:tmw/272/_creator/macro/lore_zip/draw_effect
execute if score $success ui_temp matches 0 store success score $success ui_temp if data storage ui:temp temp{lore_code:"破棄"} run function ui:tmw/272/_creator/macro/lore_zip/discard_effect
execute if score $success ui_temp matches 0 store success score $success ui_temp if data storage ui:temp temp{lore_code:"プレイ"} run function ui:tmw/272/_creator/macro/lore_zip/play
execute if score $success ui_temp matches 0 store success score $success ui_temp if data storage ui:temp temp{lore_code:"発動前"} run function ui:tmw/272/_creator/macro/lore_zip/cost_command
execute if score $success ui_temp matches 0 store success score $success ui_temp if data storage ui:temp temp{lore_code:"消費しない"} run function ui:tmw/272/_creator/macro/lore_zip/not_consume
execute if score $success ui_temp matches 0 store success score $success ui_temp if data storage ui:temp temp{lore_code:"使用上限"} run function ui:tmw/272/_creator/macro/lore_zip/num_consume
execute if score $success ui_temp matches 0 store success score $success ui_temp if data storage ui:temp temp{lore_code:"遅延"} run function ui:tmw/272/_creator/macro/lore_zip/countdown
execute if score $success ui_temp matches 0 store success score $success ui_temp if data storage ui:temp temp{lore_code:"二度"} run function ui:tmw/272/_creator/macro/lore_zip/repeat_2
execute if score $success ui_temp matches 0 store success score $success ui_temp if data storage ui:temp temp{lore_code:"三度"} run function ui:tmw/272/_creator/macro/lore_zip/repeat_3
execute if score $success ui_temp matches 0 store success score $success ui_temp if data storage ui:temp temp{lore_code:"四度"} run function ui:tmw/272/_creator/macro/lore_zip/repeat_4
execute if score $success ui_temp matches 0 store success score $success ui_temp if data storage ui:temp temp{lore_code:"五度"} run function ui:tmw/272/_creator/macro/lore_zip/repeat_5
execute if score $success ui_temp matches 0 store success score $success ui_temp if data storage ui:temp temp{lore_code:"六度"} run function ui:tmw/272/_creator/macro/lore_zip/repeat_6
execute if score $success ui_temp matches 0 store success score $success ui_temp if data storage ui:temp temp{lore_code:"七度"} run function ui:tmw/272/_creator/macro/lore_zip/repeat_7
execute if score $success ui_temp matches 0 store success score $success ui_temp if data storage ui:temp temp{lore_code:"八度"} run function ui:tmw/272/_creator/macro/lore_zip/repeat_8
execute if score $success ui_temp matches 0 store success score $success ui_temp if data storage ui:temp temp{lore_code:"九度"} run function ui:tmw/272/_creator/macro/lore_zip/repeat_9

#tellraw @a [{"storage":"ui:macro","nbt":"temp.1"},{"text":" + "},{"storage":"ui:macro","nbt":"temp.2"}]
#function ui:tmw/272/_creator/macro/string_combine_block with storage ui:macro temp
#data modify storage ui:temp temp.lore_new set from storage ui:macro temp.NewString