# tick処理
    execute as @e[tag=tmw_268_core] at @s run function ui:tmw/268/ss/core

# SSロジック維持
    execute if score $tmw268 ui_temp matches 1.. run schedule function ui:tmw/268/ss/ 1t append
    execute if score $tmw268 ui_temp matches 1.. run schedule function ui:tmw/268/ss/cant 1s replace