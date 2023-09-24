# tick処理
    execute as @a if score @s ui_tmw271_trig matches 1.. run function ui:tmw/271/ss/trig/
    execute if score $game ui_tmw271_sys matches 1 run function ui:tmw/271/game/
    #execute as @e[tag=tmw_271_core,limit=1] run function ui:tmw/271/ss/eo/s_team_id
    #execute as @e[tag=tmw_271_core] at @s run function ui:tmw/271/ss/core

# SSロジック維持
    execute if score $game ui_tmw271_sys matches 0.. run schedule function ui:tmw/271/ss/ 1t append
    execute if score $game ui_tmw271_sys matches 0.. run schedule function ui:tmw/271/ss/cant 2s replace