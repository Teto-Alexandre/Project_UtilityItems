# 即席キング解除
    tag @a remove tmw_237_king

# エフェクトクリア
    effect clear @a health_boost

# 放送
    playsound block.note_block.hat player @a[scores={ui_team=1..2}] ~ ~ ~ 1 1 1
    #tellraw @a ["",{"text":"system>> ","color":"white"},{"text":"キングを解除しました","color":"gray"}]