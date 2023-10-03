# 発動失敗
playsound minecraft:block.dispenser.fail player @a ~ ~ ~ 1 2 0

#
data merge storage ui:common {input:{Mode:"give",Num:1,Item:{id:"minecraft:cobblestone",Count:1b}}}
data modify storage ui:common input.Item set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ui.cg1.UsedItems[0]
execute at @s run function ui:common/item

#
tellraw @s[scores={ui_tmw601_accessory=5007}] ["",{"text":"> ","color":"gray","bold": true},{"text":">@s ","color":"green"},{"text":"CHECK_COST がコスト解決を却下しました"}]