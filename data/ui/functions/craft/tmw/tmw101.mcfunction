#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:blaze_rod{tmw:{is:1,id:101,type:1,enableQ:1,enableF:1},Enchantments:[{id:"unbreaking",lvl:1s}],HideFlags:3,display:{Name:'[{"text":"暁の翼","color":"gold","italic":false,"bold":true}]'}}
function ui:craft/common/exp/tier5

#レシピおよび進捗消去
recipe take @s ui:tmw/tmw101
advancement revoke @s only ui:craft/tmw/tmw101