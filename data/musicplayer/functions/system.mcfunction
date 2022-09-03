#   Copyright © 2022 kookun

#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at

#       http://www.apache.org/licenses/LICENSE-2.0

#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.
##すとらくちゃぁう”ぉいど(レシピの完成品)をキル
execute as @a[scores={kkun_killitem=1..}] at @s run kill @e[distance=..2,type=item,nbt={Item:{id:"minecraft:structure_void"}}]
scoreboard players remove @a[scores={kkun_killitem=1..}] kkun_killitem 1

##snkタグの付与
tag @a[scores={kkun_sneak=..0}] remove snk
tag @a[scores={kkun_sneak=1..}] add snk

##functions
execute as @a if entity @s[nbt={SelectedItem:{tag:{musicplay:1}}},scores={kkun_rc=1..}] as @s run function musicplayer:musicplayer_system
execute as @a if entity @s[nbt={SelectedItem:{tag:{musicplay:1,CustomModelData:2021}}},tag=!mplaying,scores={kkun_bookrc=1..}] as @s run item replace entity @s weapon.mainhand with warped_fungus_on_a_stick{display:{Name:'{"text":"Handy Music Player","color":"aqua","bold":true,"italic":false}',Lore:['{"text":" "}','[{"text":"レコード","color":"green","italic":false},{"text":"を入れると音楽がなる機械。","color":"white"}]','{"text":"顔のようなものがうっすら見えるが","color":"white","italic":false}','{"text":"多分気のせい...だと思う。","color":"white","italic":false}','[{"text":"又、通常では入らない","color":"white","italic":false},{"text":"特殊レコード","color":"light_purple","underlined":true},{"text":"も"}]','{"text":"入れることができる。","color":"white","italic":false}','{"text":" "}','{"text":"レコードの入れ方:","color":"gold","italic":false}','{"text":"これを利き手、入れたいものを","color":"white","italic":false}','{"text":"オフハンドにもって右クリック。","color":"white","italic":false}','{"text":"レコードが入った状態で右クリックすると","color":"white","italic":false}','{"text":"中のレコードを取り出せる。","color":"white","italic":false}','{"text":"気が向いたら随時機能更新するかも","color":"dark_gray","italic":false,"strikethrough":true}']},CustomModelData:2020,musicplay:1,Unbreakable:1b}
execute as @a if entity @s[nbt={SelectedItem:{tag:{soundtuner:1}}},scores={kkun_rc=1..}] as @s run function musicplayer:musictuner_system
execute as @a if entity @s[nbt={Inventory:[{Slot:-106b,tag:{soundtuner:1}}]},scores={kkun_rc=1..}] as @s run function musicplayer:fcs/musictuner_lhand
execute as @a if entity @s[tag=insta_set,scores={tuner_trigger=..-1}] as @s run function musicplayer:fcs/musictuner_instaset
execute as @a if entity @s[tag=insta_set,scores={tuner_trigger=1..}] as @s run function musicplayer:fcs/musictuner_instaset
execute as @a if entity @s[tag=mplaying,scores={kkun_death=1..}] as @s run function musicplayer:after_death
execute if entity @s[nbt=!{Inventory:[{tag:{musicplay:1}}]},tag=mplaying] run function musicplayer:play_records/get_records

##音楽再生中にほかの音楽が流れるのを防ぐ
execute as @a[tag=mplaying] run stopsound @s music
##スコアボードの(リ)セット
scoreboard players set @a kkun_sneak 0
scoreboard players set @a kkun_rc 0
scoreboard players set @a kkun_death 0

scoreboard players add @a kkun_mtuner 0