# nkoLean
- Advanced Drinking Lean [QBCORE]
- New QBCore

## Showcase
![image](https://github.com/mertvein/nkoLean/assets/79944577/d1581452-e0d9-42db-a8ca-97a54ad10502)
![image](https://github.com/mertvein/nkoLean/assets/79944577/8035f97e-ebdd-4676-aed4-8c71384fdd03)

## Discord
- https://discord.gg/mert

## Features
- Script using full qb-target
- Easy editable Config file
- Easy editable language file
- Low Resmon
- Crafting new items ( like jolly, ice )
- Lean item gives you effects like drunk

## Dependencies
- [qb-core](https://github.com/qbcore-framework/qb-core)
- [qb-target](https://github.com/qbcore-framework/qb-target)

### Installation
- Download the script and put it in the `[qb]` directory.
- Add the following code to your server.cfg/resouces.cfg
```
ensure nkoLean
```
- Add the following items to your qb-core/shared/items.lua
```
--nkoLean Items
['bowl'] 				 	 = {['name'] = 'bowl', 			  	  		['label'] = 'Plastic Cup', 					['weight'] = 10, 		['type'] = 'item', 		['image'] = 'bowl.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'An empty plastic cup..'},
['ice'] 				 	 = {['name'] = 'ice', 			  	  		['label'] = 'Ice', 					        ['weight'] = 30, 		['type'] = 'item', 		['image'] = 'ice.png', 			    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Buzzz..'},
['sprite'] 				 	 = {['name'] = 'sprite', 			  	  	['label'] = 'Sprite', 					    ['weight'] = 30, 		['type'] = 'item', 		['image'] = 'sprite.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Plain, lemon cold drink..'},
['jolly'] 				 	 = {['name'] = 'jolly', 			  	  	['label'] = 'Jolly', 				        ['weight'] = 100, 		['type'] = 'item', 		['image'] = 'jolly.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Pack with teddy bear motif jellybeans..'},
['ibuprofen'] 				 = {['name'] = 'ibuprofen', 			  	['label'] = 'Dolven', 				        ['weight'] = 230, 		['type'] = 'item', 		['image'] = 'dolven.png', 		    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Cough syrup..'},
['lean'] 				     = {['name'] = 'lean', 			  	        ['label'] = 'Gizemli İçecek', 				['weight'] = 230, 		['type'] = 'item', 		['image'] = 'lean.png', 		    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'A purplish drink known locally as Lean'},
['spritedbowl'] 			 = {['name'] = 'spritedbowl', 			    ['label'] = 'Sprite Cup', 				    ['weight'] = 50, 		['type'] = 'item', 		['image'] = 'spritedbowl.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Paper cup filled with Sprite..'},
['icedspritedbowl'] 		 = {['name'] = 'icedspritedbowl', 	        ['label'] = 'Cold Sprite', 				    ['weight'] = 100, 		['type'] = 'item', 		['image'] = 'icedspritedbowl.png', 	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Sprite like bzzz..'},
['ibuprofenedbowl'] 		 = {['name'] = 'ibuprofenedbowl', 		    ['label'] = 'Red Drink', 				    ['weight'] = 250, 		['type'] = 'item', 		['image'] = 'ibuprofenedbowl.png', 	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'Drink, smells like syrup..'},
```
