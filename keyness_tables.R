# Initialize dfm for both screenplays
starwars4_dfm <- dfm(starwars4_tokens) %>% dfm_trim(min_termfreq = 1)
starwars7_dfm <- dfm(starwars7_tokens) %>% dfm_trim(min_termfreq = 1)

# Create and visualize keyness table
starwars_kw <- keyness_table(starwars4_dfm, starwars7_dfm)
starwars_kw

# Initialize dfm for both screenplays
raiders_dfm <- dfm(raiders_tokens) %>% dfm_trim(min_termfreq = 1)
crystal_dfm <- dfm(crystal_tokens) %>% dfm_trim(min_termfreq = 1)

# Create and visualize keyness table
indiana_kw <- keyness_table(raiders_dfm, crystal_dfm)
indiana_kw

# Initialize dfm for both screenplays
dune1984_dfm <- dfm(dune1984_tokens) %>% dfm_trim(min_termfreq = 1)
dune2021_dfm <- dfm(dune2021_tokens) %>% dfm_trim(min_termfreq = 1)

# Create and visualize keyness table
dune_kw <- keyness_table(dune1984_dfm, dune2021_dfm)
dune_kw
