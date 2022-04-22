#execute if entity @a[scores={ui_tmw_id2=217}] run function ui:tmw/217/lim

#誰かがid:217持ったら各自に実行する
    execute as @a[scores={ui_tmw_id2=217}] at @s run function ui:tmw/217/main

#付属品