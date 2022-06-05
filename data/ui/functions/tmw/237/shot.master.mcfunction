# 何を射撃するべきか判断するコア
    scoreboard players set $temp ui_temp 0
    execute if score $sptype ui_temp matches 301..400 if score $sptime ui_temp matches 1.. run scoreboard players set $temp ui_temp 1
    #tellraw @a {"score":{"name":"$sptime","objective":"ui_temp"}}

# 射撃
    execute if score $temp ui_temp matches 0 run function ui:tmw/237/shot
    execute if score $temp ui_temp matches 1 unless entity @s[tag=ui_temp_success] run function ui:tmw/237/sp.shot