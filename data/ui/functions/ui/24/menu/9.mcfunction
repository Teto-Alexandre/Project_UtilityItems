item replace block ~ ~ ~ container.0 with spyglass{display:{Name:'{"text":"検索結果1","color":"gray","italic": false}'},ui:{ismenu:1}}
item replace block ~ ~ ~ container.1 with spyglass{display:{Name:'{"text":"検索結果2","color":"gray","italic": false}'},ui:{ismenu:1}}
item replace block ~ ~ ~ container.2 with spyglass{display:{Name:'{"text":"検索結果3","color":"gray","italic": false}'},ui:{ismenu:1}}
item replace block ~ ~ ~ container.3 with spyglass{display:{Name:'{"text":"検索結果4","color":"gray","italic": false}'},ui:{ismenu:1}}
item replace block ~ ~ ~ container.4 with spyglass{display:{Name:'{"text":"検索結果5","color":"gray","italic": false}'},ui:{ismenu:1}}
item replace block ~ ~ ~ container.5 with spyglass{display:{Name:'{"text":"検索結果6","color":"gray","italic": false}'},ui:{ismenu:1}}
item replace block ~ ~ ~ container.6 with spyglass{display:{Name:'{"text":"検索結果7","color":"gray","italic": false}'},ui:{ismenu:1}}
item replace block ~ ~ ~ container.7 with spyglass{display:{Name:'{"text":"検索結果8","color":"gray","italic": false}'},ui:{ismenu:1}}
item replace block ~ ~ ~ container.8 with spyglass{display:{Name:'{"text":"検索結果9","color":"gray","italic": false}'},ui:{ismenu:1}}
item replace block ~ ~ ~ container.9 with gray_stained_glass_pane{display:{Name:'{"text":"","color":"gray","italic": false}'},ui:{ismenu:1}}
item replace block ~ ~ ~ container.10 with gray_stained_glass_pane{display:{Name:'{"text":"","color":"gray","italic": false}'},ui:{ismenu:1}}
item replace block ~ ~ ~ container.11 with gray_stained_glass_pane{display:{Name:'{"text":"","color":"gray","italic": false}'},ui:{ismenu:1}}
item replace block ~ ~ ~ container.12 with gray_stained_glass_pane{display:{Name:'{"text":"","color":"gray","italic": false}'},ui:{ismenu:1}}
item replace block ~ ~ ~ container.13 with gray_stained_glass_pane{display:{Name:'{"text":"","color":"gray","italic": false}'},ui:{ismenu:1}}
item replace block ~ ~ ~ container.14 with gray_stained_glass_pane{display:{Name:'{"text":"","color":"gray","italic": false}'},ui:{ismenu:1}}
item replace block ~ ~ ~ container.15 with gray_stained_glass_pane{display:{Name:'{"text":"","color":"gray","italic": false}'},ui:{ismenu:1}}
item replace block ~ ~ ~ container.16 with gray_stained_glass_pane{display:{Name:'{"text":"","color":"gray","italic": false}'},ui:{ismenu:1}}
item replace block ~ ~ ~ container.17 with gray_stained_glass_pane{display:{Name:'{"text":"","color":"gray","italic": false}'},ui:{ismenu:1}}
item replace block ~ ~ ~ container.18 with gray_stained_glass_pane{display:{Name:'{"text":"","color":"gray","italic": false}'},ui:{ismenu:1}}
item replace block ~ ~ ~ container.19 with gray_stained_glass_pane{display:{Name:'{"text":"","color":"gray","italic": false}'},ui:{ismenu:1}}
item replace block ~ ~ ~ container.20 with gray_stained_glass_pane{display:{Name:'{"text":"","color":"gray","italic": false}'},ui:{ismenu:1}}
item replace block ~ ~ ~ container.21 with gray_stained_glass_pane{display:{Name:'{"text":"","color":"gray","italic": false}'},ui:{ismenu:1}}
item replace block ~ ~ ~ container.22 with gray_stained_glass_pane{display:{Name:'{"text":"","color":"gray","italic": false}'},ui:{ismenu:1}}
item replace block ~ ~ ~ container.23 with gray_stained_glass_pane{display:{Name:'{"text":"","color":"gray","italic": false}'},ui:{ismenu:1}}
item replace block ~ ~ ~ container.24 with gray_stained_glass_pane{display:{Name:'{"text":"","color":"gray","italic": false}'},ui:{ismenu:1}}
item replace block ~ ~ ~ container.25 with gray_stained_glass_pane{display:{Name:'{"text":"","color":"gray","italic": false}'},ui:{ismenu:1}}
item replace block ~ ~ ~ container.26 with gray_stained_glass_pane{display:{Name:'{"text":"","color":"gray","italic": false}'},ui:{ismenu:1}}

item replace block ^ ^ ^1 container.0 with gray_stained_glass_pane{display:{Name:'{"text":"","color": "white","bold":true,"italic": false}'},ui:{ismenu:1}}
item replace block ^ ^ ^1 container.1 with gray_stained_glass_pane{display:{Name:'{"text":"","color": "white","bold":true,"italic": false}'},ui:{ismenu:1}}
item replace block ^ ^ ^1 container.2 with gray_stained_glass_pane{display:{Name:'{"text":"","color": "white","bold":true,"italic": false}'},ui:{ismenu:1}}
item replace block ^ ^ ^1 container.3 with gray_stained_glass_pane{display:{Name:'{"text":"","color": "white","bold":true,"italic": false}'},ui:{ismenu:1}}
item replace block ^ ^ ^1 container.4 with gray_stained_glass_pane{display:{Name:'{"text":"","color": "white","bold":true,"italic": false}'},ui:{ismenu:1}}
item replace block ^ ^ ^1 container.5 with gray_stained_glass_pane{display:{Name:'{"text":"","color": "white","bold":true,"italic": false}'},ui:{ismenu:1}}
item replace block ^ ^ ^1 container.6 with gray_stained_glass_pane{display:{Name:'{"text":"","color": "white","bold":true,"italic": false}'},ui:{ismenu:1}}
item replace block ^ ^ ^1 container.7 with gray_stained_glass_pane{display:{Name:'{"text":"","color": "white","bold":true,"italic": false}'},ui:{ismenu:1}}
item replace block ^ ^ ^1 container.8 with gray_stained_glass_pane{display:{Name:'{"text":"","color": "white","bold":true,"italic": false}'},ui:{ismenu:1}}
item replace block ^ ^ ^1 container.9 with arrow{display:{Name:'{"text":"前のページ","color": "white","bold":true,"italic": false}'},ui:{ismenu:1}}
item replace block ^ ^ ^1 container.10 with air
item replace block ^ ^ ^1 container.11 with gray_stained_glass_pane{CustomModelData:120009,display:{Name:'{"text":"左のスロットに検索したいワードを名前にしたアイテムを入れる","color": "white","bold":true,"italic": false}',Lore:['{"text":"ここをクリックして検索、再クリックで中断","color":"yellow","bold":true,"italic":false}']},ui:{ismenu:1}}

execute if score $ui_24_search_name_or_lore ui_temp matches 1 run item replace block ^ ^ ^1 container.12 with lime_stained_glass_pane{display:{Name:'{"text":"検索設定: 名前","italic": false}'},ui:{ismenu:1}}
execute unless score $ui_24_search_name_or_lore ui_temp matches 1 run item replace block ^ ^ ^1 container.12 with red_stained_glass_pane{display:{Name:'{"text":"検索設定: 説明文","italic": false}'},ui:{ismenu:1}}

item replace block ^ ^ ^1 container.13 with barrier{display:{Name:'{"text":"","color": "white","bold":true,"italic": false}'},ui:{ismenu:1}}
item replace block ^ ^ ^1 container.14 with barrier{display:{Name:'{"text":"","color": "white","bold":true,"italic": false}'},ui:{ismenu:1}}
item replace block ^ ^ ^1 container.15 with barrier{display:{Name:'{"text":"","color": "white","bold":true,"italic": false}'},ui:{ismenu:1}}
item replace block ^ ^ ^1 container.16 with barrier{display:{Name:'{"text":"","color": "white","bold":true,"italic": false}'},ui:{ismenu:1}}
item replace block ^ ^ ^1 container.17 with arrow{display:{Name:'{"text":"次のページ","color": "white","bold":true,"italic": false}'},ui:{ismenu:1}}

item replace block ^ ^ ^1 container.18 with black_wool{display:{Name:'{"text":"Page 1","color": "white","bold":true,"italic": false}'},ui:{ismenu:1}}
item replace block ^ ^ ^1 container.19 with black_wool{display:{Name:'{"text":"Page 2","color": "white","bold":true,"italic": false}'},ui:{ismenu:1}}
item replace block ^ ^ ^1 container.20 with black_wool{display:{Name:'{"text":"Page 3","color": "white","bold":true,"italic": false}'},ui:{ismenu:1}}
item replace block ^ ^ ^1 container.21 with black_wool{display:{Name:'{"text":"Page 4","color": "white","bold":true,"italic": false}'},ui:{ismenu:1}}
item replace block ^ ^ ^1 container.22 with black_wool{display:{Name:'{"text":"Page 5","color": "white","bold":true,"italic": false}'},ui:{ismenu:1}}
item replace block ^ ^ ^1 container.23 with black_wool{display:{Name:'{"text":"Page 6","color": "white","bold":true,"italic": false}'},ui:{ismenu:1}}
item replace block ^ ^ ^1 container.24 with black_wool{display:{Name:'{"text":"Page 7","color": "white","bold":true,"italic": false}'},ui:{ismenu:1}}
item replace block ^ ^ ^1 container.25 with black_wool{display:{Name:'{"text":"Page 8","color": "white","bold":true,"italic": false}'},ui:{ismenu:1}}
item replace block ^ ^ ^1 container.26 with white_wool{display:{Name:'{"text":"Page 9","color": "white","bold":true,"italic": false}'},ui:{ismenu:1}}
