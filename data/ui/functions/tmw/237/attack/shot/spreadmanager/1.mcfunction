# 1.立方形拡散

# ランダム
    scoreboard players operation $mod ui_calc1 = $speed.plus ui_temp
    execute if score $mod ui_calc1 matches 1.. run function ui:common/rand
    execute if score $mod ui_calc1 matches 1.. run scoreboard players operation $speed.add ui_temp = $rand ui_calc1

# 弾を出す
    summon minecraft:marker ^ ^ ^1 {Tags:["ui","ui_marker"]}
    execute if score $spread ui_temp matches 1.. run function ui:tmw/237/attack/shot/spreadmanager/square_shuffle
    execute facing entity @e[tag=ui_marker,limit=1] feet run function ui:tmw/237/attack/shot/fire_straight
    kill @e[tag=ui_marker]

# ショットガン.lp
    scoreboard players remove $multishot ui_temp 1
    execute if score $multishot ui_temp matches 1.. run function ui:tmw/237/attack/shot/spreadmanager/1