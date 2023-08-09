# そのままモーションを入れていいなんてエンティティは楽だなぁ！

# 触媒を召喚
    execute positioned as @s run summon marker ^ ^ ^1 {Tags:["ui_common_motion"]}

# 座標取得、差分計算
    data modify storage ui:temp temp.Pos set from entity @e[tag=ui_common_motion,limit=1] Pos
    execute store result score $x1 ui_temp run data get storage ui:temp temp.Pos[0] 100
    execute store result score $y1 ui_temp run data get storage ui:temp temp.Pos[1] 100
    execute store result score $z1 ui_temp run data get storage ui:temp temp.Pos[2] 100
    data modify storage ui:temp temp.Pos set from entity @s Pos
    execute store result score $x2 ui_temp run data get storage ui:temp temp.Pos[0] 100
    execute store result score $y2 ui_temp run data get storage ui:temp temp.Pos[1] 100
    execute store result score $z2 ui_temp run data get storage ui:temp temp.Pos[2] 100
    scoreboard players operation $x1 ui_temp -= $x2 ui_temp
    scoreboard players operation $y1 ui_temp -= $y2 ui_temp
    scoreboard players operation $z1 ui_temp -= $z2 ui_temp
    execute store result score $mult ui_temp run data get storage ui:common input.Mult 1
    scoreboard players operation $x1 ui_temp *= $mult ui_temp
    scoreboard players operation $y1 ui_temp *= $mult ui_temp
    scoreboard players operation $z1 ui_temp *= $mult ui_temp
    scoreboard players operation $x1 ui_temp /= #100 ui_num
    scoreboard players operation $y1 ui_temp /= #100 ui_num
    scoreboard players operation $z1 ui_temp /= #100 ui_num
    scoreboard players set $kbres ui_temp 0
    execute store result score $kbres ui_temp run attribute @s generic.knockback_resistance get -100
    scoreboard players operation $kbres ui_temp > #-100 ui_num
    scoreboard players add $kbres ui_temp 100
    scoreboard players operation $x1 ui_temp *= $kbres ui_temp
    scoreboard players operation $y1 ui_temp *= $kbres ui_temp
    scoreboard players operation $z1 ui_temp *= $kbres ui_temp
    scoreboard players operation $x1 ui_temp /= #100 ui_num
    scoreboard players operation $y1 ui_temp /= #100 ui_num
    scoreboard players operation $z1 ui_temp /= #100 ui_num

    # ここで既存のモーションを足す
    data modify storage ui:temp temp.Motion set from entity @s Motion
    execute store result score $x2 ui_temp run data get storage ui:temp temp.Motion[0] 100
    execute store result score $y2 ui_temp run data get storage ui:temp temp.Motion[1] 100
    execute store result score $z2 ui_temp run data get storage ui:temp temp.Motion[2] 100
    #tellraw @a [{"text":"2 x:"},{"score":{"name": "$x2","objective": "ui_temp"}},{"text":" y:"},{"score":{"name": "$y2","objective": "ui_temp"}},{"text":" z:"},{"score":{"name": "$z2","objective": "ui_temp"}}]
    scoreboard players operation $x1 ui_temp += $x2 ui_temp
    scoreboard players operation $y1 ui_temp += $y2 ui_temp
    scoreboard players operation $z1 ui_temp += $z2 ui_temp

    #tellraw @a [{"text":"1 x:"},{"score":{"name": "$x1","objective": "ui_temp"}},{"text":" y:"},{"score":{"name": "$y1","objective": "ui_temp"}},{"text":" z:"},{"score":{"name": "$z1","objective": "ui_temp"}},{"text":"  kbres:"},{"score":{"name": "$kbres","objective": "ui_temp"}}]

# 入力
    data modify storage ui:common input.Motion set value [0.0d,0.0d,0.0d]
    execute store result storage ui:common input.Motion[0] double 0.01 run scoreboard players get $x1 ui_temp
    execute store result storage ui:common input.Motion[1] double 0.01 run scoreboard players get $y1 ui_temp
    execute store result storage ui:common input.Motion[2] double 0.01 run scoreboard players get $z1 ui_temp
    
#
    data modify entity @s Motion set from storage ui:common input.Motion

#
    scoreboard players reset $x1 ui_temp
    scoreboard players reset $y1 ui_temp
    scoreboard players reset $z1 ui_temp
    scoreboard players reset $x2 ui_temp
    scoreboard players reset $y2 ui_temp
    scoreboard players reset $z2 ui_temp
    scoreboard players reset $mult ui_temp
    scoreboard players reset $kbres ui_temp
    data remove storage ui:temp temp
    kill @e[tag=ui_common_motion]