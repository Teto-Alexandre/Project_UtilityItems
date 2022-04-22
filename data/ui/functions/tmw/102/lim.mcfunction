#execute if entity @a[scores={ui_tmw_id=102}] run function ui:tmw/102/lim

#誰かがid:102持ったら各自に実行する
    execute as @a[scores={ui_tmw_id=102}] run function ui:tmw/102/main

#付属品
    execute as @e[tag=tmw_102_1] at @s run function ui:tmw/102/102_1
    #SSロジック始動
    schedule function ui:tmw/102/ss 1t append