# カードのついでのダイスコモン
    #必須入力値
        #$c.dice.max ダイスの面の数
        #$c.dice.add 固定値
        #$c.dice.dis 次のダイス目に干渉する数値の影響を受けるか
        #@s プレイヤーか人型
    #サブ入力値
        #@s ui_d_luck ダイスの確率補正の種類
        #@s ui_d_addmax ダイスの最大値がn上昇
        #@s ui_d_addmin ダイスの最小値がn上昇
        #@s ui_d_addmax ダイスの最終値がn上昇
        #@s ui_d_mult ダイスの最終値をn/10倍する
    #返り値
        #@s ui_d_num ダイスを振った結果
        #$max ui_d_num 元の最大値+固定値
        #$min ui_d_num 固定値+1

# 確率補正はデフォルトダイスに対し数値分追加でダイスを振ってその中の最大値を返すもの
    #よって最小値が出なくなるわけではない

# get
scoreboard players operation $c.dice.max2 ui_temp = $c.dice.max ui_temp
execute unless score $c.dice.dis ui_temp matches 1 run scoreboard players operation $c.dice.max2 ui_temp += @s ui_d_addmax
scoreboard players operation $min ui_d_num = $c.dice.add ui_temp
scoreboard players add $min ui_d_num 1
scoreboard players operation $c.dice.min2 ui_temp = $min ui_d_num
execute unless score $c.dice.dis ui_temp matches 1 run scoreboard players operation $c.dice.min2 ui_temp += @s ui_d_addmin
scoreboard players operation $max ui_d_num = $c.dice.max ui_temp
scoreboard players operation $max ui_d_num += $c.dice.add ui_temp
scoreboard players operation $c.dice.max2 ui_temp += $c.dice.min2 ui_temp
scoreboard players operation $c.dice.max2 ui_temp -= #1 ui_num
scoreboard players operation $c.dice.max2 ui_temp > $c.dice.min2 ui_temp
scoreboard players operation $c.dice.min2 ui_temp < $c.dice.max2 ui_temp
scoreboard players operation $c.dice.max2 ui_temp += #1 ui_num
scoreboard players operation $c.dice.max2 ui_temp -= $c.dice.min2 ui_temp

# rand
scoreboard players operation #type1 ui_rand *= #31743 ui_num
execute store result score #type2 ui_rand run scoreboard players operation #type1 ui_rand += #type2 ui_rand
scoreboard players operation #type2 ui_rand /= #65536 ui_num
execute store result score $c.dice.num2 ui_temp run scoreboard players operation #type1 ui_rand %= #65536 ui_num
scoreboard players operation $c.dice.num2 ui_temp %= $c.dice.max2 ui_temp
execute unless score $c.dice.dis ui_temp matches 1 if score @s ui_d_luck matches 1.. run function ui:common/dice/loop1
execute unless score $c.dice.dis ui_temp matches 1 if score @s ui_d_luck matches ..-1 run function ui:common/dice/loop2
scoreboard players operation @s ui_d_num = $c.dice.num2 ui_temp
scoreboard players operation @s ui_d_num += $c.dice.min2 ui_temp

# calc
execute unless score $c.dice.dis ui_temp matches 1 run scoreboard players operation @s ui_d_num += @s ui_d_addnum
execute unless score $c.dice.dis ui_temp matches 1 run scoreboard players operation @s ui_d_num *= @s ui_d_mult
execute unless score $c.dice.dis ui_temp matches 1 run scoreboard players operation @s ui_d_num /= #10 ui_num

# num
execute unless score $c.dice.dis ui_temp matches 1 if score @s ui_d_num < $max ui_d_num if score @s ui_d_luck matches ..-1 run tellraw @s [{"color":"gray","text":"Dice"},{"color":"green","text":"> "},{"score":{"name":"@s","objective":"ui_d_num"},"bold":true,"color":"red"},{"color":"gray","text":"("},{"score":{"name":"$min","objective":"ui_d_num"},"color":"gray"},{"color":"gray","text":"-"},{"score":{"name":"$max","objective":"ui_d_num"},"color":"gray"},{"color":"gray","text":")"},{"bold":true,"color":"red","text":" Unlucky..."}]
execute unless score $c.dice.dis ui_temp matches 1 if score @s ui_d_num = $max ui_d_num if score @s ui_d_luck matches ..-1 run tellraw @s [{"color":"gray","text":"Dice"},{"color":"green","text":"> "},{"score":{"name":"@s","objective":"ui_d_num"},"bold":true,"color":"red"},{"color":"gray","text":"("},{"score":{"name":"$min","objective":"ui_d_num"},"color":"gray"},{"color":"gray","text":"-"},{"score":{"name":"$max","objective":"ui_d_num"},"color":"gray"},{"color":"gray","text":")"},{"italic":true,"bold":true,"color":"white","text":" Maximized!"},{"bold":true,"color":"red","text":" Unlucky..."}]
execute unless score $c.dice.dis ui_temp matches 1 if score @s ui_d_num > $max ui_d_num if score @s ui_d_luck matches ..-1 run tellraw @s [{"color":"gray","text":"Dice"},{"color":"green","text":"> "},{"score":{"name":"@s","objective":"ui_d_num"},"bold":true,"color":"red"},{"color":"gray","text":"("},{"score":{"name":"$min","objective":"ui_d_num"},"color":"gray"},{"color":"gray","text":"-"},{"score":{"name":"$max","objective":"ui_d_num"},"color":"gray"},{"color":"gray","text":")"},{"italic":true,"bold":true,"color":"gold","text":" Exceed!!!"},{"bold":true,"color":"red","text":" Unlucky..."}]
execute unless score $c.dice.dis ui_temp matches 1 if score @s ui_d_num < $max ui_d_num unless score @s ui_d_luck matches ..-1 unless score @s ui_d_luck matches 1.. run tellraw @s [{"color":"gray","text":"Dice"},{"color":"green","text":"> "},{"score":{"name":"@s","objective":"ui_d_num"},"bold":true,"color":"green"},{"color":"gray","text":"("},{"score":{"name":"$min","objective":"ui_d_num"},"color":"gray"},{"color":"gray","text":"-"},{"score":{"name":"$max","objective":"ui_d_num"},"color":"gray"},{"color":"gray","text":")"}]
execute unless score $c.dice.dis ui_temp matches 1 if score @s ui_d_num = $max ui_d_num unless score @s ui_d_luck matches ..-1 unless score @s ui_d_luck matches 1.. run tellraw @s [{"color":"gray","text":"Dice"},{"color":"green","text":"> "},{"score":{"name":"@s","objective":"ui_d_num"},"bold":true,"color":"green"},{"color":"gray","text":"("},{"score":{"name":"$min","objective":"ui_d_num"},"color":"gray"},{"color":"gray","text":"-"},{"score":{"name":"$max","objective":"ui_d_num"},"color":"gray"},{"color":"gray","text":")"},{"italic":true,"bold":true,"color":"white","text":" Maximized!"}]
execute unless score $c.dice.dis ui_temp matches 1 if score @s ui_d_num > $max ui_d_num unless score @s ui_d_luck matches ..-1 unless score @s ui_d_luck matches 1.. run tellraw @s [{"color":"gray","text":"Dice"},{"color":"green","text":"> "},{"score":{"name":"@s","objective":"ui_d_num"},"bold":true,"color":"green"},{"color":"gray","text":"("},{"score":{"name":"$min","objective":"ui_d_num"},"color":"gray"},{"color":"gray","text":"-"},{"score":{"name":"$max","objective":"ui_d_num"},"color":"gray"},{"color":"gray","text":")"},{"italic":true,"bold":true,"color":"gold","text":" Exceed!!!"}]
execute unless score $c.dice.dis ui_temp matches 1 if score @s ui_d_num < $max ui_d_num if score @s ui_d_luck matches 1.. run tellraw @s [{"color":"gray","text":"Dice"},{"color":"green","text":"> "},{"score":{"name":"@s","objective":"ui_d_num"},"bold":true,"color":"aqua"},{"color":"gray","text":"("},{"score":{"name":"$min","objective":"ui_d_num"},"color":"gray"},{"color":"gray","text":"-"},{"score":{"name":"$max","objective":"ui_d_num"},"color":"gray"},{"color":"gray","text":")"},{"bold":true,"color":"aqua","text":" Lucky!"}]
execute unless score $c.dice.dis ui_temp matches 1 if score @s ui_d_num = $max ui_d_num if score @s ui_d_luck matches 1.. run tellraw @s [{"color":"gray","text":"Dice"},{"color":"green","text":"> "},{"score":{"name":"@s","objective":"ui_d_num"},"bold":true,"color":"aqua"},{"color":"gray","text":"("},{"score":{"name":"$min","objective":"ui_d_num"},"color":"gray"},{"color":"gray","text":"-"},{"score":{"name":"$max","objective":"ui_d_num"},"color":"gray"},{"color":"gray","text":")"},{"italic":true,"bold":true,"color":"white","text":" Maximized!"},{"bold":true,"color":"aqua","text":" Lucky!"}]
execute unless score $c.dice.dis ui_temp matches 1 if score @s ui_d_num > $max ui_d_num if score @s ui_d_luck matches 1.. run tellraw @s [{"color":"gray","text":"Dice"},{"color":"green","text":"> "},{"score":{"name":"@s","objective":"ui_d_num"},"bold":true,"color":"aqua"},{"color":"gray","text":"("},{"score":{"name":"$min","objective":"ui_d_num"},"color":"gray"},{"color":"gray","text":"-"},{"score":{"name":"$max","objective":"ui_d_num"},"color":"gray"},{"color":"gray","text":")"},{"italic":true,"bold":true,"color":"gold","text":" Exceed!!!"},{"bold":true,"color":"aqua","text":" Lucky!"}]
execute if score $c.dice.dis ui_temp matches 1 if score @s ui_d_num < $max ui_d_num run tellraw @s [{"color":"gray","text":"Dice"},{"color":"green","text":"> "},{"score":{"name":"@s","objective":"ui_d_num"},"bold":true,"color":"green"},{"color":"gray","text":"("},{"score":{"name":"$min","objective":"ui_d_num"},"color":"gray"},{"color":"gray","text":"-"},{"score":{"name":"$max","objective":"ui_d_num"},"color":"gray"},{"color":"gray","text":")"}]
execute if score $c.dice.dis ui_temp matches 1 if score @s ui_d_num = $max ui_d_num run tellraw @s [{"color":"gray","text":"Dice"},{"color":"green","text":"> "},{"score":{"name":"@s","objective":"ui_d_num"},"bold":true,"color":"green"},{"color":"gray","text":"("},{"score":{"name":"$min","objective":"ui_d_num"},"color":"gray"},{"color":"gray","text":"-"},{"score":{"name":"$max","objective":"ui_d_num"},"color":"gray"},{"color":"gray","text":")"},{"italic":true,"bold":true,"color":"white","text":" Maximized!"}]
execute if score $c.dice.dis ui_temp matches 1 if score @s ui_d_num > $max ui_d_num run tellraw @s [{"color":"gray","text":"Dice"},{"color":"green","text":"> "},{"score":{"name":"@s","objective":"ui_d_num"},"bold":true,"color":"green"},{"color":"gray","text":"("},{"score":{"name":"$min","objective":"ui_d_num"},"color":"gray"},{"color":"gray","text":"-"},{"score":{"name":"$max","objective":"ui_d_num"},"color":"gray"},{"color":"gray","text":")"},{"italic":true,"bold":true,"color":"gold","text":" Exceed!!!"}]
#tellraw @s [{"color":"gray","text":"Dicesub"},{"color":"red","text":"> "},{"color":"green","text":"最大値のみ反映:"},{"score":{"name":"$c.dice.num2","objective":"ui_temp"},"bold":true,"color":"green"},{"color":"gray","text":" 修正後最小値"},{"score":{"name":"$c.dice.min2","objective":"ui_temp"},"color":"gray"},{"color":"gray","text":" 修正後最大値"},{"score":{"name":"$c.dice.max2","objective":"ui_temp"},"color":"gray"},{"color":"gray","text":")"}]

# snd
execute if score @s ui_d_num < $max ui_d_num run playsound minecraft:block.note_block.snare player @s ~ ~ ~ 1 0.5 1
execute if score @s ui_d_num < $max ui_d_num run playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1 0.5 1
execute unless score @s ui_d_num < $max ui_d_num run playsound minecraft:block.note_block.snare player @s ~ ~ ~ 1 0.5 1
execute unless score @s ui_d_num < $max ui_d_num run playsound minecraft:block.note_block.bell player @s ~ ~ ~ 1 0.8 1

# temp
scoreboard players reset $c.dice.num ui_temp
scoreboard players reset $c.dice.num2 ui_temp
scoreboard players reset $c.dice.max ui_temp
scoreboard players reset $c.dice.max2 ui_temp
scoreboard players reset $c.dice.min2 ui_temp
scoreboard players reset $c.dice.add ui_temp
scoreboard players reset $c.dice.dis ui_temp
execute unless score $c.dice.dis ui_temp matches 1 run scoreboard players reset @s ui_d_luck
execute unless score $c.dice.dis ui_temp matches 1 run scoreboard players reset @s ui_d_addmax
execute unless score $c.dice.dis ui_temp matches 1 run scoreboard players reset @s ui_d_addmin
execute unless score $c.dice.dis ui_temp matches 1 run scoreboard players reset @s ui_d_addnum
execute unless score $c.dice.dis ui_temp matches 1 run scoreboard players set @s ui_d_mult 10

# extra
execute unless score $c.dice.dis ui_temp matches 1 if entity @s[tag=ui_card_102] if score @s ui_d_num >= $max ui_d_num run function ui:common/dice/extra/102
execute unless score $c.dice.dis ui_temp matches 1 if entity @s[tag=ui_card_104] if score @s ui_d_num <= $max ui_d_num run function ui:common/dice/extra/104

# remove
tag @s remove ui_card_102
tag @s remove ui_card_104