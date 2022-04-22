#execute if entity @a[scores={ui_tmw_id=1}] run function ui:tmw/1/lim

#誰かがid:1持ったら各自に実行する
    execute as @a[scores={ui_tmw_id=1}] run function ui:tmw/1/main

#付属品
    execute as @e[tag=tmw_1_2] at @s run function ui:tmw/1/1_2/active
    execute as @e[tag=tmw_1_4] at @s run function ui:tmw/1/1_4