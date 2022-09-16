# 何を射撃するべきか判断するコア

# 射撃
    #tellraw @a [{"score":{"objective":"ui_temp","name":"$ishold"}},{"text":"-"},{"score":{"objective":"ui_temp","name":"$bursttype"}},{"text":"-"},{"score":{"objective":"ui_temp","name":"$burst"}}]
    scoreboard players set $deathmessage ui_temp 0
    execute if score $basetype ui_temp matches 1 run function ui:tmw/237/attack/main
    execute if score $basetype ui_temp matches 2 run function ui:tmw/237/attack/hold
    execute if score $basetype ui_temp matches 3 run function ui:tmw/237/attack/final
    scoreboard players set $deathmessage ui_temp 1
    execute if score $basetype ui_temp matches -1 run function ui:tmw/237/attack/sp
    scoreboard players set $deathmessage ui_temp 0
    execute if score $basetype ui_temp matches -2 run function ui:tmw/237/attack/sub