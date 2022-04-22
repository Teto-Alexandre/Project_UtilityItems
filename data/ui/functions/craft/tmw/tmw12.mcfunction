#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:dragon_breath{tmw:{id:12,enableQ:1},Enchantments:[{id:"unbreaking",lvl:1s}],HideFlags:3,display:{Name:'[{"text":"即席龍素注入ボトル","color":"yellow","italic":false,"bold":true}]',Lore:['[{"text":"Qでオフハンドのポーションに使用","color":"gray","italic":false}]','[{"text":"ポーションを残留タイプに変える","color":"gray","italic":false}]']}}
function ui:craft/common/exp/tier3

#レシピおよび進捗消去
recipe take @s ui:tmw/tmw12
advancement revoke @s only ui:craft/tmw/tmw12