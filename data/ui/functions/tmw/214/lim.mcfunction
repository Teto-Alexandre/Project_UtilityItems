#execute if entity @a[scores={ui_tmw_id2=214}] run function ui:tmw/214/lim

#誰かがid:214持ったら各自に実行する
    execute as @a[scores={ui_tmw_id2=214}] at @s run function ui:tmw/214/main

#付属品