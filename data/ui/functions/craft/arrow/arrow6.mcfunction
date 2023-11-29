#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s tipped_arrow{tmw:{arrow:6},display:{Name:'{"text":"ストームブリンガー","color":"green","bold":true,"italic":false}',Lore:['{"text":"射撃後に三本の矢が装填される","color":"gray","italic":false}','{"text":" ※クロスボウ専用弾","color":"gray","italic":false}']},HideFlags:33,Enchantments:[{id:"minecraft:sharpness",lvl:1s}],custom_potion_effects:[{id:"minecraft:luck",amplifier:7b,duration:2,show_particles:0b}],CustomPotionColor:65280}
function ui:craft/common/exp/advancement

#レシピおよび進捗消去
recipe take @s ui:arrow/arrow6
advancement revoke @s only ui:craft/arrow/arrow6