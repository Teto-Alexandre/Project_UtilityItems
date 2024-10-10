say 検索開始
tag @s add ui_23_searcher
data modify storage ui:ui23_template_answer Name set from entity @s SelectedItem.tag.text
data modify storage ui:ui23_template_answer temp set from storage ui:dimensional_chest Items
function ui:ui/23/template/answer/page