data modify storage ui:temp temp.temp.lore_text set value '[{"text":"【準唯一】","color":"gold","italic":false}]'
data modify storage ui:temp temp.lore_list append string storage ui:temp temp.temp.lore_text 1 -1

data modify storage ui:temp temp.temp.lore_text set value '[{"text":"このカードは【唯一】としても扱うことが出来る","color":"gray","italic":false}]'
data modify storage ui:temp temp.lore_list append string storage ui:temp temp.temp.lore_text 1 -1