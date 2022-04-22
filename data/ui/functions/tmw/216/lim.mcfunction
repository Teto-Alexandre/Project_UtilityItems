#execute if entity @a[scores={ui_tmw_id2=216}] run function ui:tmw/216/lim

#誰かがid:216持ったら各自に実行する
    execute as @a[scores={ui_tmw_id2=216}] at @s run function ui:tmw/216/main

#付属品