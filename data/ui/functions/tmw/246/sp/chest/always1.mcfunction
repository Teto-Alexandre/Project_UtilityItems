#=======================================================================================================

execute as @e[tag=ui_base,scores={ui_id=1..}] run scoreboard players operation @s ui_idc = @s ui_id
scoreboard players operation @e[tag=ui_base,scores={ui_id=1..}] ui_idc -= @s ui_id

#中身リセット
execute as @s run function ui:tmw/246/sp/chest/reset

execute at @s run item replace block ~ ~-2 ~ container.0 with black_stained_glass_pane{ui:{ismenu:1}}
execute at @s run item replace block ~ ~-2 ~ container.1 with black_stained_glass_pane{ui:{ismenu:1}}
execute at @s run item replace block ~ ~-2 ~ container.2 with black_stained_glass_pane{ui:{ismenu:1}}
execute at @s run item replace block ~ ~-2 ~ container.3 with black_stained_glass_pane{ui:{ismenu:1}}
execute at @s run item replace block ~ ~-2 ~ container.4 with black_stained_glass_pane{ui:{ismenu:1}}
execute at @s run item replace block ~ ~-2 ~ container.5 with black_stained_glass_pane{ui:{ismenu:1}}
execute at @s run item replace block ~ ~-2 ~ container.6 with black_stained_glass_pane{ui:{ismenu:1}}
execute at @s run item replace block ~ ~-2 ~ container.7 with black_stained_glass_pane{ui:{ismenu:1}}
execute at @s run item replace block ~ ~-2 ~ container.8 with black_stained_glass_pane{ui:{ismenu:1}}
execute at @s run item replace block ~ ~-2 ~ container.9 with black_stained_glass_pane{ui:{ismenu:1}}
execute at @s run item replace block ~ ~-2 ~ container.10 with black_stained_glass_pane{ui:{ismenu:1}}
execute at @s run item replace block ~ ~-2 ~ container.11 with black_stained_glass_pane{ui:{ismenu:1}}
execute at @s run item replace block ~ ~-2 ~ container.12 with black_stained_glass_pane{ui:{ismenu:1}}
#空白
execute at @s run item replace block ~ ~-2 ~ container.14 with black_stained_glass_pane{ui:{ismenu:1}}
execute at @s run item replace block ~ ~-2 ~ container.15 with black_stained_glass_pane{ui:{ismenu:1}}
execute at @s run item replace block ~ ~-2 ~ container.16 with black_stained_glass_pane{ui:{ismenu:1}}
execute at @s run item replace block ~ ~-2 ~ container.17 with black_stained_glass_pane{ui:{ismenu:1}}
execute at @s run item replace block ~ ~-2 ~ container.18 with black_stained_glass_pane{ui:{ismenu:1}}
execute at @s run item replace block ~ ~-2 ~ container.19 with black_stained_glass_pane{ui:{ismenu:1}}
execute at @s run item replace block ~ ~-2 ~ container.20 with black_stained_glass_pane{ui:{ismenu:1}}
execute at @s run item replace block ~ ~-2 ~ container.21 with black_stained_glass_pane{ui:{ismenu:1}}
execute at @s run item replace block ~ ~-2 ~ container.22 with black_stained_glass_pane{ui:{ismenu:1}}
execute at @s run item replace block ~ ~-2 ~ container.23 with black_stained_glass_pane{ui:{ismenu:1}}
execute at @s run item replace block ~ ~-2 ~ container.24 with black_stained_glass_pane{ui:{ismenu:1}}
execute at @s run item replace block ~ ~-2 ~ container.25 with black_stained_glass_pane{ui:{ismenu:1}}
execute at @s run item replace block ~ ~-2 ~ container.26 with black_stained_glass_pane{ui:{ismenu:1}}

#この部屋の情報
execute at @s run item replace block ~ ~-2 ~ container.11 with stone_bricks{display:{Name:'{"text":"この部屋の情報","italic":false}',Lore:[]},ui:{ismenu:1}}
scoreboard players operation hp ui_calc1 = @s ui_d_hp
scoreboard players operation hpm ui_calc1 = @s ui_d_hpm
data modify block 0 1 0 Text1 set value '[{"text":"耐久力: ","color":"gray","italic":false},{"score":{"objective":"ui_calc1","name":"hp"},"color":"red"},{"text":"/","color":"dark_red","italic":false},{"score":{"objective":"ui_calc1","name":"hpm"},"color":"red"}]'
execute at @s run data modify block ~ ~-2 ~ Items.[{Slot:11b}].tag.display.Lore append from block 0 1 0 Text1


#ダンジョン全体の情報
execute at @s run item replace block ~ ~-2 ~ container.13 with sea_lantern{display:{Name:'{"text":"拠点の情報","italic":false}',Lore:[]},ui:{ismenu:1}}
scoreboard players operation core ui_calc1 = @e[tag=ui_base,scores={ui_idc=0}] ui_core
data modify block 0 1 0 Text1 set value '[{"text":"配置コア数: ","color":"gray","italic":false},{"score":{"objective":"ui_calc1","name":"core"},"color":"aqua"}]'
execute at @s run data modify block ~ ~-2 ~ Items.[{Slot:13b}].tag.display.Lore append from block 0 1 0 Text1


#資源の情報
execute at @s run item replace block ~ ~-2 ~ container.15 with oak_wood{display:{Name:'{"text":"資源の情報","italic":false}',Lore:[]},ui:{ismenu:1}}
scoreboard players operation mana ui_calc1 = @e[tag=ui_base,scores={ui_idc=0}] ui_mana
scoreboard players operation stone ui_calc1 = @e[tag=ui_base,scores={ui_idc=0}] ui_stone
scoreboard players operation wood ui_calc1 = @e[tag=ui_base,scores={ui_idc=0}] ui_wood
scoreboard players operation mana_g ui_calc1 = @e[tag=ui_base,scores={ui_idc=0}] ui_mana_gen
scoreboard players operation stone_g ui_calc1 = @e[tag=ui_base,scores={ui_idc=0}] ui_stone_gen
scoreboard players operation wood_g ui_calc1 = @e[tag=ui_base,scores={ui_idc=0}] ui_wood_gen
data modify block 0 1 0 Text1 set value '[{"text":"霊力: ","color":"gray","italic":false},{"score":{"objective":"ui_calc1","name":"mana"},"color":"aqua"},{"text":" (","color":"gray","italic":false},{"score":{"objective":"ui_calc1","name":"mana_g"},"color":"aqua"},{"text":"/min)","color":"gray","italic":false}]'
execute at @s run data modify block ~ ~-2 ~ Items.[{Slot:15b}].tag.display.Lore append from block 0 1 0 Text1
data modify block 0 1 0 Text1 set value '[{"text":"石材: ","color":"gray","italic":false},{"score":{"objective":"ui_calc1","name":"stone"},"color":"white"},{"text":" (","color":"gray","italic":false},{"score":{"objective":"ui_calc1","name":"stone_g"},"color":"white"},{"text":"/min)","color":"gray","italic":false}]'
execute at @s run data modify block ~ ~-2 ~ Items.[{Slot:15b}].tag.display.Lore append from block 0 1 0 Text1
data modify block 0 1 0 Text1 set value '[{"text":"木材: ","color":"gray","italic":false},{"score":{"objective":"ui_calc1","name":"wood"},"color":"gold"},{"text":" (","color":"gray","italic":false},{"score":{"objective":"ui_calc1","name":"wood_g"},"color":"gold"},{"text":"/min)","color":"gray","italic":false}]'
execute at @s run data modify block ~ ~-2 ~ Items.[{Slot:15b}].tag.display.Lore append from block 0 1 0 Text1

#右下にbp変更ボタン
#execute at @s run item replace block ~ ~ ~ container.26 grass_block with{ui:{ismenu:1,menu:226},display:{Name:'{"text":"閲覧モードを変更する","color":"white","italic":false}',Lore:['[{"text":"現在選択しているページ: ","color":"gray","italic":false},{"text":"メイン","color":"green","italic":false}]']}}

#=======================================================================================================
