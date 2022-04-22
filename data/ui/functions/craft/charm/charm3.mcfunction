#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:light_blue_dye{tmw:{charm:3,id:-5},HideFlags:1,Enchantments:[{id:"protection",lvl:1s}],display:{Name:'[{"text":"護魂の加護","color":"gold","italic":false}]',Lore:['[{"text":"魂の損傷を抑える","color":"yellow","italic":false}]','[{"text":""}]','[{"text":"オフハンドに持ったとき:","color":"gray","italic":false}]','[{"text":"魂保護 +5%","color":"green","italic":false}]']}}
function ui:craft/common/exp/advancement

#レシピおよび進捗消去
recipe take @s ui:charm/charm3
advancement revoke @s only ui:craft/charm/charm3