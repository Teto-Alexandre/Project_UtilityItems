# デバッグ用
    #tellraw @s [{"text":"Debug","color":"white"},{"text":">> ","color":"yellow"},{"text":"保持時間超過によりチャージキープが解除されました","color":"white"}]
    #tellraw @s [{"text":"Debug","color":"white"},{"text":">> ","color":"yellow"},{"text":"HoldTime:","color":"red"},{"score":{"name":"$ishold","objective":"ui_temp"},"color":"red"},{"text":", ChargeMax:","color":"gold"},{"score":{"name":"$burst.max","objective":"ui_temp"},"color":"gold"},{"text":", Margin:","color":"yellow"},{"score":{"name":"$keeplevel","objective":"ui_temp"},"color":"yellow"},{"text":", HoldMax:","color":"green"},{"score":{"name":"$chargekeep","objective":"ui_temp"},"color":"green"}]

# チャージキャンセルする
    scoreboard players set $ishold ui_temp 0
    scoreboard players set $multibullet ui_temp 0
    scoreboard players set $changed ui_temp 1
    playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 0.5 0