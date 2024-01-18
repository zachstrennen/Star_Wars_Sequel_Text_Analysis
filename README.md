# Should “Star Wars: The Force Awakens” Be Considered a Sequel or a Reboot?
This repository contains a text analysis experiment that I completed during my Fall Semester at Carnegie Mellon University in a course taught by David Brown. This study aims to determine whether the film Star Wars: The Force Awakens (2015) should be considered a reboot or a sequel within the Star Wars franchise. Analyses of screenplays including both reboots and sequels will be compared with each other as well as the two Star Wars films in question. Using proper tokenization tactics, keyness tables, and collocation networks, Star Wars: The Force Awakens (2015) can be classified as a sequel in the franchise.

# The Data
Six Screenplays were formed as a corpus to be analyzed in this study. These can all be found the data folder. The first two obviously being the screenplays for Star Wars: The Force Awakens (2015) and Star Wars: A New Hope (1977). To analyze the relationships between sequels, the screenplays for the films Raiders of the Lost Ark (1981) and Indiana Jones and the Kingdom of the Crystal Skull (2008) will be used. Both films take place in the same canonical story-line in the Indiana Jones franchise. While Indiana Jones and the Kingdom of the Crystal Skull (2008) is a sequel to Raiders of the Lost Ark (1981), it is not an adjacent sequel. Raiders of the Lost Ark (1981) is the first film in the timeline and Indiana Jones and the Kingdom of the Crystal Skull (2008) is the fourth film in the timeline. The choice of these films is on purpose as the two Star Wars films also have two films in between them in their timeline. The last two films are reboots of the same title; Dune (1984) and Dune (2021). Each film follows the same protagonists and casts of characters. Additionally, each film follows the same overarching story-line. These films were chosen because the biggest complaint about The Force Awakens is that it follows the same story-line as A New Hope.

## Screenplay Sources

Star Wars: A New Hope (1977) screenplay:
https://maddogfilms.com/almost/scripts/starwars_fourth3_76.pdf

Raiders of the Lost Ark (1981) screenplay:
https://www.dailyscript.com/scripts/RaidersoftheLostArk.pdf

Dune (1984) screenplay:
https://sfy.ru/?script=dune

Indiana Jones and the Kingdom of the Crystal Skull (2008) screenplay:
http://www.cinefile.biz/script/indy4b.pdf

Star Wars: The Force Awakens (2015) screenplay:
http://galactic-voyage.com/Star%20Wars-The%20Force%20Awakens-Final%20Script.pdf

Dune (2021) screenplay:
https://www.scriptslug.com/script/dune-2021

# R files

## load_txts.R

This file loads in the screenplays from the data folder. Beyond loading in the texts, this script also prepares each text to be tokenized. All text is converted to lowercase. Each token is stripped of punctuation (save hyphens). Any numbering associated with the structure of the screenplay was removed as well. The tokens were separated by white space. In the screenplay for The Force Awakens,  certain word's and phrases were replaced to represent strong parallels often made by disgruntled fans:

-Any reference to "Starkiller Base" is replaced with "Death Star"

-Any reference to "Jakku" is replaced with "Tatooine"

-Any reference to "Maz's Castle" is replaced with "Mos Eisley"

## keyness_tables.R

This file takes the loaded scripts and generates keyness tables to compare the three pairings of screenplays. The keyness values (log-likelihoods) and effect sizes (log ratios) are compared to search for trends. Each keyness table shows the tokens with the highest log-likelihood values which communicates that the tokens present have little association with tokens from the paired screenplay.

## collocation_networks.R

This file is used to generate collocation network visualizations. Collocation networks are made comparing the protagonists of each paired film. The main protagonist of both Dune films is paul. The main protagonist of both Indiana Jones films is indiana. The protagonist of The Force Awakens is rey and the protagonist of A New Hope is luke. While the Star Wars protagonists are named differently, these two characters are associated with have similar arcs. Each film's collocation network's minimum frequency is adjusted to make the visualizations of the networks comparable. Regardless, all MI scores used to make connections are the same.

# R Packages

The packages required for these files are tidyverse, quanteda, quanteda.textstats, and ggraph. Additionnally, functions for the collocation networks were written by David Brown and can be accessed as packages using devtools via his GitHub.
