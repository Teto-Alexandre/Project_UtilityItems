#=======================================================
#
#   Crafting Common Event
#       -by teto
#
#=======================================================

#媒体となるアイテムを削除
function ui:craft/common/del_sb

#完成品を渡す
give @s minecraft:lingering_potion{HideFlags:32,custom_potion_effects:[{id:"luck",amplifier:2b,duration:1}],CustomPotionColor:16776960,display:{Name:'{"italic":false,"color":"yellow","text":"誘雷のポーション"}',Lore:['[{"text":"着弾地点に雷が落ちる 取扱注意！","color":"gray","italic":false}]']}}
function ui:craft/common/exp/tier2

#レシピおよび進捗消去
recipe take @s ui:potion/potion4
advancement revoke @s only ui:craft/potion/potion4