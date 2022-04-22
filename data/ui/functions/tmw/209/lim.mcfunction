#execute if entity @a[scores={ui_tmw_id2=209}] run function ui:tmw/209/lim

#誰かがid:209持ったら各自に実行する
    execute as @a[scores={ui_tmw_id2=209}] at @s run function ui:tmw/209/main

#付属品