#execute if entity @a[scores={ui_tmw_id=7}] run function ui:tmw/7/lim

#誰かがid:7持ったら各自に実行する
    execute as @a[scores={ui_tmw_id=7}] run function ui:tmw/7/main

#付属品
    execute as @e[tag=tmw_7_2] at @s run function ui:tmw/7/7_2