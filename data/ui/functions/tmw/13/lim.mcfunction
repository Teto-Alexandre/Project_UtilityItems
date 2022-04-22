#execute if entity @a[scores={ui_tmw_id=13}] run function ui:tmw/13/lim

#誰かがid:13持ったら各自に実行する
    execute as @a[scores={ui_tmw_id=13}] run function ui:tmw/13/main

#付属品
    #光鎖
    execute as @e[tag=tmw_13_1] at @s run function ui:tmw/13/13_1
    #SSロジック始動
    schedule function ui:tmw/13/ss 1t append
    #ショック
    execute as @e[tag=tmw_13_4] at @s run function ui:tmw/13/13_4