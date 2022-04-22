#execute if entity @a[scores={ui_tmw_id=306}] run function ui:tmw/306/lim

#誰かがid:306持ったら各自に実行する
    execute as @a[scores={ui_tmw_id=306}] run function ui:tmw/306/main
