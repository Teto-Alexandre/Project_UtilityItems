#execute if entity @a[scores={ui_tmw_id2=211}] run function ui:tmw/211/lim

#誰かがid:211持ったら各自に実行する
    execute as @a[scores={ui_tmw_id2=211}] at @s run function ui:tmw/211/main

#付属品