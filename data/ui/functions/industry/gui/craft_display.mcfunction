#稼働状態
    execute if score @s ui_i_gui_mode matches 1..2 unless score @s ui_i_ctt matches 1.. run item replace block ~ ~ ~ container.4 with lime_stained_glass_pane{display:{Name:'{"italic":false,"color":"green","text":"動作可能"}',Lore:[]},ui:{ismenu:1}}
    execute if score @s ui_i_gui_mode matches 1..2 if score @s ui_i_ctt matches 1.. run item replace block ~ ~ ~ container.4 with yellow_stained_glass_pane{display:{Name:'{"italic":false,"color":"green","text":"動作中"}',Lore:[]},ui:{ismenu:1}}
    execute if score @s ui_i_gui_mode matches 3 run item replace block ~ ~ ~ container.4 with red_stained_glass_pane{display:{Name:'{"italic":false,"color":"red","text":"動作停止中"}',Lore:[]},ui:{ismenu:1}}
    execute if entity @s[tag=ui_i_stopped] run item replace block ~ ~ ~ container.4 with red_stained_glass_pane{display:{Name:'{"italic":false,"color":"red","text":"動作停止中"}',Lore:[]},ui:{ismenu:1}}
    execute if score @s ui_i_gui_mode matches 0 run item replace block ~ ~ ~ container.4 with red_stained_glass_pane{display:{Name:'{"italic":false,"color":"green","text":"成果スロットにアイテムを入れてください"}',Lore:[]},ui:{ismenu:1}}
    
    scoreboard players operation @s ui_calc1 = @s ui_i_ctt
    scoreboard players operation @s ui_calc1 /= #8 ui_num
    scoreboard players operation @s ui_calc2 = @s ui_i_ct
    scoreboard players operation @s ui_calc2 /= @s ui_calc1

    execute if entity @s[tag=!ui_i_stopped,scores={ui_i_ct=1..,ui_calc2=0}] run data modify block ~ ~ ~ Items[{Slot:4b}].tag.display.Lore append value '[{"italic":false,"color":"gray","text":"進捗： "},{"color":"white","text":"⬛⬜⬜⬜⬜⬜⬜⬜"}]'
    execute if entity @s[tag=!ui_i_stopped,scores={ui_i_ct=1..,ui_calc2=1}] run data modify block ~ ~ ~ Items[{Slot:4b}].tag.display.Lore append value '[{"italic":false,"color":"gray","text":"進捗： "},{"color":"white","text":"⬛⬛⬜⬜⬜⬜⬜⬜"}]'
    execute if entity @s[tag=!ui_i_stopped,scores={ui_i_ct=1..,ui_calc2=2}] run data modify block ~ ~ ~ Items[{Slot:4b}].tag.display.Lore append value '[{"italic":false,"color":"gray","text":"進捗： "},{"color":"yellow","text":"⬛⬛⬛⬜⬜⬜⬜⬜"}]'
    execute if entity @s[tag=!ui_i_stopped,scores={ui_i_ct=1..,ui_calc2=3}] run data modify block ~ ~ ~ Items[{Slot:4b}].tag.display.Lore append value '[{"italic":false,"color":"gray","text":"進捗： "},{"color":"yellow","text":"⬛⬛⬛⬛⬜⬜⬜⬜"}]'
    execute if entity @s[tag=!ui_i_stopped,scores={ui_i_ct=1..,ui_calc2=4}] run data modify block ~ ~ ~ Items[{Slot:4b}].tag.display.Lore append value '[{"italic":false,"color":"gray","text":"進捗： "},{"color":"gold","text":"⬛⬛⬛⬛⬛⬜⬜⬜"}]'
    execute if entity @s[tag=!ui_i_stopped,scores={ui_i_ct=1..,ui_calc2=5}] run data modify block ~ ~ ~ Items[{Slot:4b}].tag.display.Lore append value '[{"italic":false,"color":"gray","text":"進捗： "},{"color":"gold","text":"⬛⬛⬛⬛⬛⬛⬜⬜"}]'
    execute if entity @s[tag=!ui_i_stopped,scores={ui_i_ct=1..,ui_calc2=6}] run data modify block ~ ~ ~ Items[{Slot:4b}].tag.display.Lore append value '[{"italic":false,"color":"gray","text":"進捗： "},{"color":"red","text":"⬛⬛⬛⬛⬛⬛⬛⬜"}]'
    execute if entity @s[tag=!ui_i_stopped,scores={ui_i_ct=1..,ui_calc2=7..}] run data modify block ~ ~ ~ Items[{Slot:4b}].tag.display.Lore append value '[{"italic":false,"color":"gray","text":"進捗： "},{"color":"red","text":"⬛⬛⬛⬛⬛⬛⬛⬛"}]'
    
    execute if entity @s[tag=ui_i_stopped] run data modify block ~ ~ ~ Items[{Slot:4b}].tag.display.Lore append value '[{"italic":false,"color":"gray","text":"進捗： "},{"color":"white","text":"⬜⬜⬜⬜⬜⬜⬜⬜"}]'
    execute if entity @s[tag=!ui_i_stopped,scores={ui_i_ct=0}] run data modify block ~ ~ ~ Items[{Slot:4b}].tag.display.Lore append value '[{"italic":false,"color":"gray","text":"進捗： "},{"color":"white","text":"⬜⬜⬜⬜⬜⬜⬜⬜"}]'