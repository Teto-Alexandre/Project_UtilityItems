#execute if entity @a[scores={ui_tmw_id=207}] run function ui:tmw/207/lim

#誰かがid:207持ったら各自に実行する
    execute as @a[scores={ui_tmw_id=207}] at @s run function ui:tmw/207/main

#付属品
    execute at @e[tag=tmw_207_1] run particle dust 0.5 1 0.5 1 ~ ~ ~ 0.1 0.1 0.1 0 1 force