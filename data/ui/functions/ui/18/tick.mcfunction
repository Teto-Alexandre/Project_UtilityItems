#

#
    execute if block ~ ~ ~ barrel[open=true] run scoreboard players add @s[scores={ui_i_gui=..1}] ui_i_gui 1
    execute if block ~ ~ ~ barrel[open=false] run scoreboard players remove @s[scores={ui_i_gui=1..}] ui_i_gui 1
    execute if entity @s[tag=ui_i_machine,scores={ui_i_gui=1}] run stopsound @a[distance=..10] block block.barrel.open
    execute if entity @s[tag=ui_i_machine,scores={ui_i_gui=1}] run stopsound @a[distance=..10] block block.barrel.close

#GUI描画
    execute if entity @s[scores={ui_i_gui=2}] run function ui:ui/18/main

#
    execute unless block ~ ~ ~ barrel run function ui:ui/18/destroy
