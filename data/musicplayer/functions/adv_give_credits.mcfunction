##クラフト時の動作
advancement revoke @s only musicplayer:crafted_credit_reco
give @s enchanted_book{display:{Name:'{"text":"レコード","color":"aqua","italic":false}',Lore:['{"text":"C418 - alpha","color":"gray","italic":false}']},CustomModelData:2001,specialdisc:1} 1
clear @s structure_void 1
recipe take @a musicplayer:credits_recipe
scoreboard players set @s kkun_killitem 2
