tag @a remove ui_23_searcher
say 検索終了
execute store result score $count ui_temp run data get storage ui:dimensional_search list
tellraw @a [{"text":"該当数:"},{"score":{"name":"$count","objective":"ui_temp"}},{"text":"/"},{"score":{"name":"$ui:dimensional_search_list_max","objective":"ui_temp"}}]
