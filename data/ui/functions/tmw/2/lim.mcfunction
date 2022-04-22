#execute if entity @a[scores={ui_tmw_id=2}] run function ui:tmw/2/lim

#誰かがid:2持ったら各自に実行する
    execute as @a[scores={ui_tmw_id=2}] run function ui:tmw/2/main

#付属品
    execute as @e[tag=tmw_2_1] at @s run function ui:tmw/2/2_1/active
    execute as @e[tag=tmw_2_2] at @s run function ui:tmw/2/2_2