# 何を射撃するべきか判断するコア

#
    data modify storage ui:temp temp set from storage ui:tmw temp.this.tag.tmw.bullets
    execute store result score $count ui_temp run data get storage ui:tmw temp.this.tag.tmw.bullets[0].Count

# 射撃
    #tellraw @a [{"score":{"objective":"ui_temp","name":"$ishold"}},{"text":"-"},{"score":{"objective":"ui_temp","name":"$bursttype"}},{"text":"-"},{"score":{"objective":"ui_temp","name":"$burst"}}]
    scoreboard players set $deathmessage ui_temp 0
    execute if score $count ui_temp matches 1.. if score $basetype ui_temp matches 1 run function ui:tmw/255/player/crossbow/attack/main
    execute if score $count ui_temp matches 1.. if score $basetype ui_temp matches 2 run function ui:tmw/255/player/crossbow/attack/hold
    execute if score $count ui_temp matches 1.. if score $basetype ui_temp matches 3 run function ui:tmw/255/player/crossbow/attack/final