#幽玄の王ステータス設定

#スコアを仕上げる
    scoreboard players set @s ui_tmw_id 200
    scoreboard players set @s ui_tmw_id2 200
    scoreboard players set @s ui_st 1200
    effect give @s speed 1000000 1 true
    tag @s add ui_dreamed
    spreadplayers ~ ~ 1 10 false @s
    playsound entity.wither.spawn hostile @a ~ ~ ~ 1 1 0.3
