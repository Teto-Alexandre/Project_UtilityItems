#execute if entity @a[scores={ui_tmw_id2=208}] run function ui:tmw/208/lim

#誰かがid:208持ったら各自に実行する
    execute as @a[scores={ui_tmw_id2=208}] at @s run function ui:tmw/208/main

#付属品
    execute as @e[tag=tmw_208_1] at @s run function ui:tmw/208/tick