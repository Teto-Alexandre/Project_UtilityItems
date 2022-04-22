#=======================================================================================================

#時間経過カウント
    #scoreboard players add @s ui_tc 1

#電力をリンク先から引き出す（蓄電機は代わりに給電する）
    #function ui:industry/su_input
    function ui:industry/battery/su_input

#GUI描画
    execute if entity @s[scores={ui_i_gui=2}] run function ui:industry/gui/default

#土台壊されたら破壊
    execute if entity @s[tag=ui_i_break] run particle block iron_block ~ ~ ~ 0.3 0.3 0.3 0 20 normal
    execute if entity @s[tag=ui_i_break] run kill @e[type=item,nbt={Age:0s,Item:{tag:{ui:{ismenu:1}}}}]
    execute if entity @s[tag=ui_i_break] run kill @e[type=item,nbt={Age:0s,Item:{id:"minecraft:barrel"}}]
    execute if entity @s[tag=ui_i_break] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stray_spawn_egg",Count:1b,tag:{CustomModelData:130003,display:{Name:'{"text":"簡易蓄電機","italic":false,"color":"dark_green"}',Lore:['[{"text":"隣接4ブロックから給電する","color":"gray","italic":false}]','[{"text":"給電速度：10SU/t","color":"gray","italic":false}]','[{"text":"送電速度：40SU/t","color":"gray","italic":false}]','[{"text":"蓄電量：10000SU","color":"gray","italic":false}]']},EntityTag:{id:"minecraft:bat",Silent:1b,NoAI:1b,Tags:["ui_egg_i","ui_egg_i_3"]}}}}
    execute if entity @s[tag=ui_i_break] run kill @s

#=======================================================================================================