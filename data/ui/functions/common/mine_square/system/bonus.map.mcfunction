#

#
scoreboard players operation $mod ui_calc1 = #20 ui_num
function ui:common/rand
scoreboard players operation $temp ui_temp = $rand ui_calc1
scoreboard players operation $mod ui_calc1 = $bonus ui_temp
function ui:common/rand

#
execute if score $temp ui_temp matches 0..18 if score $rand ui_calc1 matches 0..3 run give @s minecraft:carrot_on_a_stick{CustomModelData:111302,tmw:{id:250,type:-1,mine_square:{Size:7,Bomb:6,Life:0}},display:{Name:'[{"text":"MineSquare I","color":"white","italic":false}]',Lore:['{"text":"右クリックで開始","color":"gold","italic":false}']},HideFlags:4}
execute if score $temp ui_temp matches 0..18 if score $rand ui_calc1 matches 4..13 run give @s minecraft:carrot_on_a_stick{CustomModelData:111302,tmw:{id:250,type:-1,mine_square:{Size:10,Bomb:12,Life:0}},display:{Name:'[{"text":"MineSquare II","color":"white","italic":false}]',Lore:['{"text":"右クリックで開始","color":"gold","italic":false}']},HideFlags:4}
execute if score $temp ui_temp matches 0..18 if score $rand ui_calc1 matches 14..43 run give @s minecraft:carrot_on_a_stick{CustomModelData:111302,tmw:{id:250,type:-1,mine_square:{Size:20,Bomb:60,Life:0}},display:{Name:'[{"text":"MineSquare III","color":"white","italic":false}]',Lore:['{"text":"右クリックで開始","color":"gold","italic":false}']},HideFlags:4}
execute if score $temp ui_temp matches 0..18 if score $rand ui_calc1 matches 44..141 run give @s minecraft:carrot_on_a_stick{CustomModelData:111302,tmw:{id:250,type:-1,mine_square:{Size:30,Bomb:200,Life:0}},display:{Name:'[{"text":"MineSquare IV","color":"white","italic":false}]',Lore:['{"text":"右クリックで開始","color":"gold","italic":false}']},HideFlags:4}
execute if score $temp ui_temp matches 0..18 if score $rand ui_calc1 matches 142.. run give @s minecraft:carrot_on_a_stick{CustomModelData:111302,tmw:{id:250,type:-1,mine_square:{Size:40,Bomb:500,Life:0}},display:{Name:'[{"text":"MineSquare V","color":"white","italic":false}]',Lore:['{"text":"右クリックで開始","color":"gold","italic":false}']},HideFlags:4}

#
execute if score $temp ui_temp matches 19.. if score $rand ui_calc1 matches 0..3 run give @s minecraft:carrot_on_a_stick{CustomModelData:111302,tmw:{id:250,type:-1,mine_square:{Size:7,Bomb:6,Life:0,AI:1}},display:{Name:'[{"text":"MineSquare I:","color":"white","italic":false},{"text":"[AI Assist]","color":"aqua"}]',Lore:['{"text":"右クリックで開始","color":"gold","italic":false}']},HideFlags:4}
execute if score $temp ui_temp matches 19.. if score $rand ui_calc1 matches 4..13 run give @s minecraft:carrot_on_a_stick{CustomModelData:111302,tmw:{id:250,type:-1,mine_square:{Size:10,Bomb:12,Life:0,AI:1}},display:{Name:'[{"text":"MineSquare II:","color":"white","italic":false},{"text":"[AI Assist]","color":"aqua"}]',Lore:['{"text":"右クリックで開始","color":"gold","italic":false}']},HideFlags:4}
execute if score $temp ui_temp matches 19.. if score $rand ui_calc1 matches 14..43 run give @s minecraft:carrot_on_a_stick{CustomModelData:111302,tmw:{id:250,type:-1,mine_square:{Size:20,Bomb:60,Life:0,AI:1}},display:{Name:'[{"text":"MineSquare III:","color":"white","italic":false},{"text":"[AI Assist]","color":"aqua"}]',Lore:['{"text":"右クリックで開始","color":"gold","italic":false}']},HideFlags:4}
execute if score $temp ui_temp matches 19.. if score $rand ui_calc1 matches 44..141 run give @s minecraft:carrot_on_a_stick{CustomModelData:111302,tmw:{id:250,type:-1,mine_square:{Size:30,Bomb:200,Life:0,AI:1}},display:{Name:'[{"text":"MineSquare IV:","color":"white","italic":false},{"text":"[AI Assist]","color":"aqua"}]',Lore:['{"text":"右クリックで開始","color":"gold","italic":false}']},HideFlags:4}
execute if score $temp ui_temp matches 19.. if score $rand ui_calc1 matches 142.. run give @s minecraft:carrot_on_a_stick{CustomModelData:111302,tmw:{id:250,type:-1,mine_square:{Size:40,Bomb:500,Life:0,AI:1}},display:{Name:'[{"text":"MineSquare V:","color":"white","italic":false},{"text":"[AI Assist]","color":"aqua"}]',Lore:['{"text":"右クリックで開始","color":"gold","italic":false}']},HideFlags:4}
