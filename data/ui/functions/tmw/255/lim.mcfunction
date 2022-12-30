#誰かがid:255持ったら各自に実行する
    execute as @a[scores={ui_tmw_id=255}] run function ui:tmw/255/lim255

#付属品
    execute as @e[tag=tmw_255.snipe] at @s unless entity @e[type=player,distance=..0.1,scores={ui_tmw_id=255}] run kill @s
    schedule function ui:tmw/255/player/crossbow/ss/1 1t append
