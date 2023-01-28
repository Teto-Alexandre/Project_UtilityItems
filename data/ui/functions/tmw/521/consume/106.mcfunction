#コモンイベント利用
scoreboard players set $mod ui_calc1 3
function ui:common/rand

execute if score $rand ui_calc1 matches 0 run give @s minecraft:carrot_on_a_stick{tmw:{id:521,con_id:1,con_lv:1},CustomModelData:110221,display:{Name:'[{"text":"[","color":"gray","italic":false},{"text":"R","color":"#ff7700","italic":false},{"text":"]","color":"gray","italic":false},{"text":"ファイアボール","color":"white","italic":false},{"text":"[","color":"gray","italic":false},{"text":"1","color":"green","italic":false},{"text":"]","color":"gray","italic":false}]',Lore:['[{"text":" 火の玉を放つ","color":"gray","italic":false}]','[{"text":" 🔥6~12","color":"red","italic":false},{"text":" ⛏5","color":"yellow","italic":false}]']},Unbreakable:1b,HideFlags:4} 1
execute if score $rand ui_calc1 matches 1 run give @s minecraft:carrot_on_a_stick{tmw:{id:521,con_id:11,con_lv:1},CustomModelData:110221,display:{Name:'[{"text":"[","color":"gray","italic":false},{"text":"R","color":"#ff7700","italic":false},{"text":"]","color":"gray","italic":false},{"text":"アイスシュート","color":"white","italic":false},{"text":"[","color":"gray","italic":false},{"text":"1","color":"green","italic":false},{"text":"]","color":"gray","italic":false}]',Lore:['[{"text":" 冷気の玉を放つ","color":"gray","italic":false}]','[{"text":" ❄8~11","color":"red","italic":false},{"text":" ⛏2","color":"yellow","italic":false}]']},Unbreakable:1b,HideFlags:4} 1
execute if score $rand ui_calc1 matches 2 run give @s minecraft:carrot_on_a_stick{tmw:{id:521,con_id:21,con_lv:1},CustomModelData:110221,display:{Name:'[{"text":"[","color":"gray","italic":false},{"text":"R","color":"#ff7700","italic":false},{"text":"]","color":"gray","italic":false},{"text":"スパークライン","color":"white","italic":false},{"text":"[","color":"gray","italic":false},{"text":"1","color":"green","italic":false},{"text":"]","color":"gray","italic":false}]',Lore:['[{"text":" 電撃を放つ","color":"gray","italic":false}]','[{"text":" ⚔4~14","color":"red","italic":false},{"text":" ⛏6","color":"yellow","italic":false}]']},Unbreakable:1b,HideFlags:4} 1

scoreboard players set $c.dice.max ui_temp 4
scoreboard players set $c.dice.add ui_temp 0
scoreboard players set $c.dice.dis ui_temp 0
function ui:common/dice/
function ui:common/rand

execute if score @s ui_d_num matches 4.. if score $rand ui_calc1 matches 0 run give @s minecraft:carrot_on_a_stick{tmw:{id:521,con_id:1,con_lv:1},CustomModelData:110221,display:{Name:'[{"text":"[","color":"gray","italic":false},{"text":"R","color":"#ff7700","italic":false},{"text":"]","color":"gray","italic":false},{"text":"ファイアボール","color":"white","italic":false},{"text":"[","color":"gray","italic":false},{"text":"1","color":"green","italic":false},{"text":"]","color":"gray","italic":false}]',Lore:['[{"text":" 火の玉を放つ","color":"gray","italic":false}]','[{"text":" 🔥6~12","color":"red","italic":false},{"text":" ⛏5","color":"yellow","italic":false}]']},Unbreakable:1b,HideFlags:4} 1
execute if score @s ui_d_num matches 4.. if score $rand ui_calc1 matches 1 run give @s minecraft:carrot_on_a_stick{tmw:{id:521,con_id:11,con_lv:1},CustomModelData:110221,display:{Name:'[{"text":"[","color":"gray","italic":false},{"text":"R","color":"#ff7700","italic":false},{"text":"]","color":"gray","italic":false},{"text":"アイスシュート","color":"white","italic":false},{"text":"[","color":"gray","italic":false},{"text":"1","color":"green","italic":false},{"text":"]","color":"gray","italic":false}]',Lore:['[{"text":" 冷気の玉を放つ","color":"gray","italic":false}]','[{"text":" ❄8~11","color":"red","italic":false},{"text":" ⛏2","color":"yellow","italic":false}]']},Unbreakable:1b,HideFlags:4} 1
execute if score @s ui_d_num matches 4.. if score $rand ui_calc1 matches 2 run give @s minecraft:carrot_on_a_stick{tmw:{id:521,con_id:21,con_lv:1},CustomModelData:110221,display:{Name:'[{"text":"[","color":"gray","italic":false},{"text":"R","color":"#ff7700","italic":false},{"text":"]","color":"gray","italic":false},{"text":"スパークライン","color":"white","italic":false},{"text":"[","color":"gray","italic":false},{"text":"1","color":"green","italic":false},{"text":"]","color":"gray","italic":false}]',Lore:['[{"text":" 電撃を放つ","color":"gray","italic":false}]','[{"text":" ⚔4~14","color":"red","italic":false},{"text":" ⛏6","color":"yellow","italic":false}]']},Unbreakable:1b,HideFlags:4} 1

scoreboard players set @s ui_d_addmax 1

#scoreboard players set @s ui_d_luck 1
#scoreboard players set @s ui_d_addmax 10
#scoreboard players set @s ui_d_addmin 10
#scoreboard players set @s ui_d_addnum 10
#scoreboard players set @s ui_d_mult 20