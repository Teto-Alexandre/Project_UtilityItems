# tick処理
    execute as @e[tag=tmw272] run function ui:tmw/272/match/each

# SSロジック維持
    execute if entity @e[tag=tmw272] run schedule function ui:tmw/272/match/ 1t append
    execute if entity @e[tag=tmw272] run schedule function ui:tmw/272/match/cant 2s replace