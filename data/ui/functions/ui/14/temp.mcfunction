# 時間経過スコア入れる
    scoreboard players set @s ui_is -1

# 足スロットにアイテムを付ける
    data merge entity @s {ArmorItems:[{id:"stone",tag:{tmw:{x:0,z:0}},Count:1b},{},{},{}]}

# 接続座標を算出: X
    scoreboard players set $mod ui_calc1 5999
    function ui:common/rand
    scoreboard players operation $x ui_temp = $rand ui_calc1
    scoreboard players operation $x ui_temp *= #10000 ui_num
    scoreboard players set $mod ui_calc1 10000
    function ui:common/rand
    scoreboard players operation temp ui_temp = $rand ui_calc1
    execute store result entity @s ArmorItems.[0].tag.tmw.x int 1 run scoreboard players operation $x ui_temp += temp ui_temp
    
# 接続座標を算出: Z
    scoreboard players set $mod ui_calc1 5999
    function ui:common/rand
    scoreboard players operation $z ui_temp = $rand ui_calc1
    scoreboard players operation $z ui_temp *= #10000 ui_num
    scoreboard players set $mod ui_calc1 10000
    function ui:common/rand
    scoreboard players operation temp ui_temp = $rand ui_calc1
    execute store result entity @s ArmorItems.[0].tag.tmw.z int 1 run scoreboard players operation $z ui_temp += temp ui_temp

# 初回カウント
    tag @s[tag=ui_14_temp] remove ui_14_temp