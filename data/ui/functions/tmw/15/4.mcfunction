# ダイス干渉＋確率give

# データ読み取り
    data modify storage ui:common temp set from entity @s SelectedItem.tag.tmw.dice
    # 幸運
    execute store result score $luck ui_temp run data get storage ui:common temp.luck
    execute unless data storage ui:common temp.luck run scoreboard players set $luck ui_temp 0
    # 固定値
    execute store result score $num ui_temp run data get storage ui:common temp.num
    execute unless data storage ui:common temp.num run scoreboard players set $num ui_temp 0
    # 積
    execute store result score $mult ui_temp run data get storage ui:common temp.mult
    execute unless data storage ui:common temp.mult run scoreboard players set $mult ui_temp 10
    # 上書きか加算か
    execute store result score $update ui_temp run data get storage ui:common temp.update
    # 秘匿
    execute store result score $hide ui_temp run data get storage ui:common temp.hide
    # 消費
    execute store result score $consume ui_temp run data get storage ui:common temp.consume

    execute if score $hide ui_temp matches 0..1 run tellraw @a [{"color":"green","text":"DiceMod"},{"color":"green","text":"> "},{"selector":"@s"},{"color":"gray","text":" がダイス干渉を行いました"}]
    execute if score $hide ui_temp matches 2 run tellraw @a [{"color":"green","text":"DiceMod"},{"color":"green","text":"> "},{"selector":"@s"},{"color":"gray","text":" がアイテムを使用しました"}]
    execute if score $hide ui_temp matches 3 run tellraw @a [{"color":"green","text":"DiceMod"},{"color":"green","text":"> "},{"selector":"@s"},{"color":"gray","text":" がパッシブ効果を使用しました"}]

    execute unless score $luck ui_temp matches 0 if score $update ui_temp matches 0 run scoreboard players operation @s ui_d_luck += $luck ui_temp
    execute unless score $luck ui_temp matches 0 if score $update ui_temp matches 1 run scoreboard players operation @s ui_d_luck = $luck ui_temp
    execute unless score $luck ui_temp matches 0 if score $hide ui_temp matches 0 if score @s ui_d_luck matches 1.. at @s run tellraw @a[distance=1..] [{"text":"※ダイス干渉※ ","color":"dark_green"},{"selector":"@s"},{"text":"の次のダイスは","color":"gray"},{"text":"幸運","color":"aqua"},{"text":"になる","color":"gray"}]
    execute unless score $luck ui_temp matches 0 if score $hide ui_temp matches 0 if score @s ui_d_luck matches ..-1 at @s run tellraw @a[distance=1..] [{"text":"※ダイス干渉※ ","color":"dark_green"},{"selector":"@s"},{"text":"の次のダイスは","color":"gray"},{"text":"不運","color":"red"},{"text":"になる","color":"gray"}]
    execute unless score $luck ui_temp matches 0 if score @s ui_d_luck matches 1.. run tellraw @s [{"text":"※ダイス干渉※ ","color":"dark_green"},{"text":"あなたの次のダイスは","color":"gray"},{"text":"幸運","color":"aqua"},{"text":"になる","color":"gray"}]
    execute unless score $luck ui_temp matches 0 if score @s ui_d_luck matches ..-1 run tellraw @s [{"text":"※ダイス干渉※ ","color":"dark_green"},{"text":"あなたの次のダイスは","color":"gray"},{"text":"不運","color":"red"},{"text":"になる","color":"gray"}]

    execute unless score $num ui_temp matches 0 if score $update ui_temp matches 0 run scoreboard players operation @s ui_d_addnum += $num ui_temp
    execute unless score $num ui_temp matches 0 if score $update ui_temp matches 1 run scoreboard players operation @s ui_d_addnum = $num ui_temp
    execute unless score $num ui_temp matches 0 if score $hide ui_temp matches 0 if score @s ui_d_addnum matches 1.. at @s run tellraw @a[distance=1..] [{"text":"※ダイス干渉※ ","color":"dark_green"},{"selector":"@s"},{"text":"の次のダイスは","color":"gray"},{"text":"+","color":"aqua"},{"score":{"name": "@s","objective": "ui_d_addnum"},"color":"aqua"},{"text":"される","color":"gray"}]
    execute unless score $num ui_temp matches 0 if score $hide ui_temp matches 0 if score @s ui_d_addnum matches 0 at @s run tellraw @a[distance=1..] [{"text":"※ダイス干渉※ ","color":"dark_green"},{"selector":"@s"},{"text":"の次のダイスは","color":"gray"},{"text":"±0","color":"white"},{"text":"される","color":"gray"}]
    execute unless score $num ui_temp matches 0 if score $hide ui_temp matches 0 if score @s ui_d_addnum matches ..-1 at @s run tellraw @a[distance=1..] [{"text":"※ダイス干渉※ ","color":"dark_green"},{"selector":"@s"},{"text":"の次のダイスは","color":"gray"},{"score":{"name": "@s","objective": "ui_d_addnum"},"color":"red"},{"text":"される","color":"gray"}]
    execute unless score $num ui_temp matches 0 if score @s ui_d_addnum matches 1.. run tellraw @s [{"text":"※ダイス干渉※ ","color":"dark_green"},{"text":"あなたの次のダイスは","color":"gray"},{"text":"+","color":"aqua"},{"score":{"name": "@s","objective": "ui_d_addnum"},"color":"aqua"},{"text":"される","color":"gray"}]
    execute unless score $num ui_temp matches 0 if score @s ui_d_addnum matches 0 run tellraw @s [{"text":"※ダイス干渉※ ","color":"dark_green"},{"text":"あなたの次のダイスは","color":"gray"},{"text":"±0","color":"white"},{"text":"される","color":"gray"}]
    execute unless score $num ui_temp matches 0 if score @s ui_d_addnum matches ..-1 run tellraw @s [{"text":"※ダイス干渉※ ","color":"dark_green"},{"text":"あなたの次のダイスは","color":"gray"},{"score":{"name": "@s","objective": "ui_d_addnum"},"color":"red"},{"text":"される","color":"gray"}]

    execute unless score $mult ui_temp matches 10 if score $update ui_temp matches 0 run scoreboard players operation @s ui_d_mult *= $mult ui_temp
    execute unless score $mult ui_temp matches 10 if score $update ui_temp matches 0 run scoreboard players operation @s ui_d_mult /= #10 ui_num
    execute unless score $mult ui_temp matches 10 if score $update ui_temp matches 1 run scoreboard players operation @s ui_d_mult = $mult ui_temp
    execute unless score $mult ui_temp matches 10 run scoreboard players operation $temp ui_temp = @s ui_d_mult
    execute unless score $mult ui_temp matches 10 run scoreboard players operation $temp2 ui_temp = $temp ui_temp
    execute unless score $mult ui_temp matches 10 run scoreboard players operation $temp ui_temp /= #10 ui_num
    execute unless score $mult ui_temp matches 10 run scoreboard players operation $temp2 ui_temp %= #10 ui_num
    execute unless score $mult ui_temp matches 10 if score $hide ui_temp matches 0 if score @s ui_d_mult matches 1.. run tellraw @a[distance=1..] [{"text":"※ダイス干渉※ ","color":"dark_green"},{"selector":"@s"},{"text":"の次のダイスは","color":"gray"},{"score":{"name": "$temp","objective": "ui_temp"},"color":"aqua"},{"text":".","color":"aqua"},{"score":{"name": "$temp2","objective": "ui_temp"},"color":"aqua"},{"text":"倍","color":"aqua"},{"text":"になる","color":"gray"}]
    execute unless score $mult ui_temp matches 10 if score $hide ui_temp matches 0 if score @s ui_d_mult matches 0 run tellraw @a[distance=1..] [{"text":"※ダイス干渉※ ","color":"dark_green"},{"selector":"@s"},{"text":"の次のダイスは","color":"gray"},{"text":"0","color":"white"},{"text":"になる","color":"gray"}]
    execute unless score $mult ui_temp matches 10 if score $hide ui_temp matches 0 if score @s ui_d_mult matches ..-1 run tellraw @a[distance=1..] [{"text":"※ダイス干渉※ ","color":"dark_green"},{"selector":"@s"},{"text":"の次のダイスは","color":"gray"},{"score":{"name": "$temp","objective": "ui_temp"},"color":"red"},{"text":".","color":"red"},{"score":{"name": "$temp2","objective": "ui_temp"},"color":"red"},{"text":"倍","color":"red"},{"text":"になる","color":"gray"}]
    execute unless score $mult ui_temp matches 10 if score @s ui_d_mult matches 1.. run tellraw @s [{"text":"※ダイス干渉※ ","color":"dark_green"},{"text":"あなたの次のダイスは","color":"gray"},{"score":{"name": "$temp","objective": "ui_temp"},"color":"aqua"},{"text":".","color":"aqua"},{"score":{"name": "$temp2","objective": "ui_temp"},"color":"aqua"},{"text":"倍","color":"aqua"},{"text":"になる","color":"gray"}]
    execute unless score $mult ui_temp matches 10 if score @s ui_d_mult matches 0 run tellraw @s [{"text":"※ダイス干渉※ ","color":"dark_green"},{"text":"あなたの次のダイスは","color":"gray"},{"text":"0","color":"white"},{"text":"になる","color":"gray"}]
    execute unless score $mult ui_temp matches 10 if score @s ui_d_mult matches ..-1 run tellraw @s [{"text":"※ダイス干渉※ ","color":"dark_green"},{"text":"あなたの次のダイスは","color":"gray"},{"score":{"name": "$temp","objective": "ui_temp"},"color":"red"},{"text":".","color":"red"},{"score":{"name": "$temp2","objective": "ui_temp"},"color":"red"},{"text":"倍","color":"red"},{"text":"になる","color":"gray"}]

    execute unless score $luck ui_temp matches 0 if score $hide ui_temp matches 0..1 at @s run particle dust 1 0 1 4 ~ ~ ~ 0.5 0.5 0.5 0 15 force
    execute unless score $num ui_temp matches 0 if score $hide ui_temp matches 0..1 at @s run particle dust 0 0.7 0 4 ~ ~ ~ 0.5 0.5 0.5 0 15 force
    execute unless score $mult ui_temp matches 0 if score $hide ui_temp matches 0..1 at @s run particle dust 0 0 1 4 ~ ~ ~ 0.5 0.5 0.5 0 15 force
    execute if score $hide ui_temp matches 0..1 at @s run playsound entity.shulker.ambient neutral @a ~ ~ ~ 1 0.7 0
    execute if score $hide ui_temp matches 0..1 at @s run playsound entity.shulker.ambient neutral @a ~ ~ ~ 1 0.5 0
    execute if score $hide ui_temp matches 0..1 at @s run playsound item.honey_bottle.drink neutral @a ~ ~ ~ 1 0.8 0
    execute if score $hide ui_temp matches 2.. at @s run particle end_rod ~ ~ ~ 0.5 0.5 0.5 0 15 force
    execute if score $hide ui_temp matches 2.. at @s run playsound entity.experience_orb.pickup neutral @a ~ ~ ~ 1 1.6 0

# 仕込みgive
    # 閾値
    execute store result score $chance ui_temp run data get storage ui:common temp.chance
    #
    scoreboard players set $mod ui_calc1 1000

    #
    function ui:common/rand

    #
    ## Item:{id:"minecraft:cobblestone",Count:1b}
    execute if score $rand ui_calc1 < $chance ui_temp if data storage ui:common temp.give run data merge storage ui:common {input:{Mode:"give",Num:1}}
    execute if score $rand ui_calc1 < $chance ui_temp if data storage ui:common temp.give run data modify storage ui:common input.Num set from storage ui:common temp.give.num
    execute if score $rand ui_calc1 < $chance ui_temp if data storage ui:common temp.give run data modify storage ui:common input.Item set from storage ui:common temp.give.item
    execute if score $rand ui_calc1 < $chance ui_temp if data storage ui:common temp.give run data merge storage ui:common {input:{Item:{Count:1b}}}
    execute if score $rand ui_calc1 < $chance ui_temp if data storage ui:common temp.give at @s run function ui:common/item
    execute if score $rand ui_calc1 >= $chance ui_temp if data storage ui:common temp.inv_give run data merge storage ui:common {input:{Mode:"give",Num:1}}
    execute if score $rand ui_calc1 >= $chance ui_temp if data storage ui:common temp.inv_give run data modify storage ui:common input.Num set from storage ui:common temp.inv_give.num
    execute if score $rand ui_calc1 >= $chance ui_temp if data storage ui:common temp.inv_give run data modify storage ui:common input.Item set from storage ui:common temp.inv_give.item
    execute if score $rand ui_calc1 >= $chance ui_temp if data storage ui:common temp.inv_give run data merge storage ui:common {input:{Item:{Count:1b}}}
    execute if score $rand ui_calc1 >= $chance ui_temp if data storage ui:common temp.inv_give at @s run function ui:common/item

# データリセット
    data remove storage ui:common temp

# 発射サウンド
    execute if score $hide ui_temp matches 0..1 run playsound block.note_block.hat player @a ~ ~ ~ 1 1.6 0.5
    execute if score $hide ui_temp matches 2 run playsound block.note_block.hat player @s ~ ~ ~ 0.8 1.6 0

#
    execute if score $consume ui_temp matches 1 run item replace entity @s weapon.mainhand with air

# スコア消し
    scoreboard players reset $luck ui_temp
    scoreboard players reset $num ui_temp
    scoreboard players reset $mult ui_temp
    scoreboard players reset $update ui_temp
    scoreboard players reset $hide ui_temp

# 発動成功
    scoreboard players set $success ui_temp 1