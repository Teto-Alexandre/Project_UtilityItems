#コモンイベント利用
scoreboard players set $c.dice.max ui_temp 25
scoreboard players set $c.dice.add ui_temp 7
scoreboard players set $c.dice.dis ui_temp 0
function ui:common/dice/

data merge storage ui:temp {give:{id:"minecraft:apple",Count:1b}}
scoreboard players operation $c.give.num ui_temp = @s ui_d_num
function ui:common/give
execute if entity @s[nbt={Inventory:[{id:"minecraft:apple",Count:64b}]}] run give @s minecraft:carrot_on_a_stick{tmw:{id:521,con_id:105,con_lv:5},CustomModelData:110223,display:{Name:'[{"text":"[","color":"gray","italic":false},{"text":"G","color":"#ffee33","italic":false},{"text":"]","color":"gray","italic":false},{"text":"最終","color":"white","italic":false},{"text":"[","color":"gray","italic":false},{"text":"5","color":"green","italic":false},{"text":"]","color":"gray","italic":false}]',Lore:['[{"text":" エンチャントされた金のリンゴ","color":"aqua","italic":false},{"text":"と","color":"gray","italic":false}]','[{"text":" 32個の","color":"gray","italic":false},{"text":"金のリンゴ","color":"aqua","italic":false},{"text":"を得る","color":"gray","italic":false}]']},Unbreakable:1b,HideFlags:4} 1

#scoreboard players set @s ui_d_luck 1
#scoreboard players set @s ui_d_addmax 10
#scoreboard players set @s ui_d_addmin 10
#scoreboard players set @s ui_d_addnum 10
#scoreboard players set @s ui_d_mult 20