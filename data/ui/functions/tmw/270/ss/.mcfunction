# tick処理
    execute as @e[tag=tmw_270_core,limit=1] run function ui:tmw/270/ss/eo/s_team_id
    #execute as @e[tag=tmw_270_core] at @s run function ui:tmw/270/ss/core
    effect give @e[tag=tmw_270_hitbox] invisibility 10 0 true

# SSロジック維持
    execute if score $tmw270 ui_temp matches 1.. run schedule function ui:tmw/270/ss/ 1t append
    execute if score $tmw270 ui_temp matches 1.. run schedule function ui:tmw/270/ss/cant 1s replace