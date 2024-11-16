execute if score $ui_23_searcher ui_temp matches 1 run say 既に検索が使用されています、少々お待ちください
execute unless score $ui_23_searcher ui_temp matches 1 run function ui:ui/24/search/answer2
