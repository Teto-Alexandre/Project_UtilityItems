#execute if entity @a[scores={ui_tmw_id=16}] run function ui:tmw/16/lim

#誰かがid:16持ったら各自に実行する
    execute as @a[scores={ui_tmw_id=16}] if entity @s[tag=tmw_oh_s] run tag @s add tmw_oh_n
    execute as @a[scores={ui_tmw_id=16}] if entity @s[tag=tmw_oh_n] run function ui:tmw/16/main

#付属品