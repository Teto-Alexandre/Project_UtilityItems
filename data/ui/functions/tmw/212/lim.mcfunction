#execute if entity @a[scores={ui_tmw_id2=212}] run function ui:tmw/212/lim

#誰かがid:212持ったら各自に実行する
    execute as @a[scores={ui_tmw_id2=212}] at @s run function ui:tmw/212/main

#付属品