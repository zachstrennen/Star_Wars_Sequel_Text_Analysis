library(striprtf)

# Read in two screenplays and make them lowercase
starwars4_txt <- tolower(read.delim("data/starwars4.txt"))
starwars7_txt <- tolower(read.delim("data/starwars7.txt"))

# Get rid of problematic punctuation/phrasing
starwars4_txt <- gsub(".", "  ", starwars4_txt, fixed = TRUE)
starwars7_txt <- gsub(".", "  ", starwars7_txt, fixed = TRUE)
starwars4_txt <- gsub(":", "  ", starwars4_txt, fixed = TRUE)
starwars7_txt <- gsub(":", "  ", starwars7_txt, fixed = TRUE)
starwars4_txt <- gsub("(", "  ", starwars4_txt, fixed = TRUE)
starwars7_txt <- gsub("(", "  ", starwars7_txt, fixed = TRUE)
starwars4_txt <- gsub(")", "  ", starwars4_txt, fixed = TRUE)
starwars7_txt <- gsub(")", "  ", starwars7_txt, fixed = TRUE)
starwars4_txt <- gsub("\'", "", starwars4_txt, fixed = TRUE)
starwars7_txt <- gsub("\'", "", starwars7_txt, fixed = TRUE)
starwars4_txt <- gsub("u2028", " ", starwars4_txt, fixed = TRUE)
starwars7_txt <- gsub("u2028", " ", starwars7_txt, fixed = TRUE)

# Replace phrases with original comparisons made by fans
starwars7_txt <- gsub("maz\'s castle", "mos eisley", starwars7_txt, fixed = TRUE)
starwars4_txt <- gsub("death star", "deathstar", starwars4_txt, fixed = TRUE)
starwars7_txt <- gsub("starkiller base", "deathstar", starwars7_txt, fixed = TRUE)
starwars7_txt <- gsub("starkiller", "deathstar", starwars7_txt, fixed = TRUE)
starwars7_txt <- gsub("jakku", "tatooine", starwars7_txt, fixed = TRUE)

# Read in two screenplays and make them lowercase
dune1984_txt <- tolower(read.delim("data/dune1984.txt"))
dune2021_txt <- tolower(read.delim("data/dune2021.txt"))

# Get rid of problematic punctuation/phrasing
dune1984_txt <- gsub(".", " ", dune1984_txt, fixed = TRUE)
dune2021_txt <- gsub(".", " ", dune2021_txt, fixed = TRUE)
dune1984_txt <- gsub("u2028", " ", dune1984_txt, fixed = TRUE)
dune2021_txt <- gsub("u2028", " ", dune2021_txt, fixed = TRUE)
dune1984_txt <- gsub("[0-9]+", " ", dune1984_txt)
dune2021_txt <- gsub("[0-9]+", " ", dune2021_txt)
dune2021_txt <- gsub("Salmon Rev. (06/19/2020)", " ", dune2021_txt)

# Read in two screenplays and make them lowercase
raiders_txt <- tolower(read.delim("data/raidersofthelostark.txt"))
crystal_txt <- tolower(read.delim("data/kingdomofthecrystalskull.txt"))

# Get rid of problematic punctuation/phrasing
raiders_txt <- gsub(".", " ", raiders_txt, fixed = TRUE)
crystal_txt <- gsub(".", " ", crystal_txt, fixed = TRUE)
raiders_txt <- gsub("u2028", " ", raiders_txt, fixed = TRUE)
crystal_txt <- gsub("u2028", " ", crystal_txt, fixed = TRUE)
