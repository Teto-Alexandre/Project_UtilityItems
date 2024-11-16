execute if score $ui_23_searcher ui_temp matches 1 run say 検索を強制終了します
execute if score $ui_23_searcher ui_temp matches 1 run schedule clear ui:ui/23/template/answer/twin
execute if score $ui_23_searcher ui_temp matches 1 run schedule clear ui:ui/23/template/answer/chest_s
execute if score $ui_23_searcher ui_temp matches 1 run schedule clear ui:ui/23/template/answer/end_search
execute if score $ui_23_searcher ui_temp matches 1 run schedule function ui:ui/23/template/answer/end_search 1t
execute unless score $ui_23_searcher ui_temp matches 1 run function ui:ui/24/search/answer2
