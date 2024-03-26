# Tokenize the script    
starwars4_tokens <- starwars4_txt %>%
  corpus() %>%
  tokens(remove_punct = TRUE, remove_symbols = TRUE, what = "word") %>%
  tokens_tolower()

# Create collocations based on the protagonist
starwars4_collocations <- collocates_by_MI(starwars4_tokens, "luke")

# Tokenize the script
starwars7_tokens <- starwars7_txt %>%
  corpus() %>%
  tokens(remove_punct = TRUE, remove_symbols = TRUE, what = "word") %>%
  tokens_tolower()

# Create collocations based on the protagonist
starwars7_collocations <- collocates_by_MI(starwars7_tokens, "rey")

# Filter collocations by tuning frequencies
sw4c <- starwars4_collocations %>% filter(col_freq >= 2 & MI_1 >= 5)
sw7c <- starwars7_collocations %>% filter(col_freq >= 2 & MI_1 >= 5)
net <- col_network(sw4c, sw7c)

# Graph the network
ggraph(net, weight = link_weight, layout = "stress") +
  geom_edge_link(color = "gray80", alpha = .75) +
  geom_node_point(aes(alpha = node_weight, size = 3, color = n_intersects)) +
  geom_node_text(aes(label = label), repel = T, size = 3) +
  scale_alpha(range = c(0.2, 0.9)) +
  theme_graph() +
  theme(legend.position = "none")

# Tokenize the script
dune1984_tokens <- dune1984_txt %>%
  corpus() %>%
  tokens(remove_punct = TRUE, remove_numbers = TRUE, remove_symbols = TRUE, what = "word") %>%
  tokens_tolower()

# Create collocations based on the protagonist
dune1984_collocations <- collocates_by_MI(dune1984_tokens, "paul")

# Tokenize the script
dune2021_tokens <- dune2021_txt %>%
  corpus() %>%
  tokens(remove_punct = TRUE, remove_numbers = TRUE, remove_symbols = TRUE, what = "word") %>%
  tokens_tolower()

# Create collocations based on the protagonist
dune2021_collocations <- collocates_by_MI(dune2021_tokens, "paul")

# Filter collocations by tuning frequencies
d84c <- dune1984_collocations %>% filter(col_freq >= 4 & MI_1 >= 4)
d21c <- dune2021_collocations %>% filter(col_freq >= 4 & MI_1 >= 4)
net2 <- col_network(d84c, d21c)

# Graph the network
ggraph(net2, weight = link_weight, layout = "stress") +
  geom_edge_link(color = "gray80", alpha = .75) +
  geom_node_point(aes(alpha = node_weight, size = 3, color = n_intersects)) +
  geom_node_text(aes(label = label), repel = T, size = 3) +
  scale_alpha(range = c(0.2, 0.9)) +
  theme_graph() +
  theme(legend.position = "none")

# Tokenize the script
raiders_tokens <- raiders_txt %>%
  corpus() %>%
  tokens(remove_punct = TRUE, remove_numbers = TRUE, remove_symbols = TRUE, what = "word") %>%
  tokens_tolower()

# Create collocations based on the protagonist
indiana1_collocations <- collocates_by_MI(raiders_tokens, "indiana")

# Tokenize the script
crystal_tokens <- crystal_txt %>%
  corpus() %>%
  tokens(remove_punct = TRUE, remove_numbers = TRUE, remove_symbols = TRUE, what = "word") %>%
  tokens_tolower()

# Create collocations based on the protagonist
indiana4_collocations <- collocates_by_MI(crystal_tokens, "indiana")

# Filter collocations by tuning frequencies
i1c <- indiana1_collocations %>% filter(col_freq >= 0 & MI_1 >= 5)
i4c <- indiana4_collocations %>% filter(col_freq >= 0 & MI_1 >= 5)
net3 <- col_network(i1c, i4c)

# Graph the network
ggraph(net3, weight = link_weight, layout = "stress") +
  geom_edge_link(color = "gray80", alpha = .75) +
  geom_node_point(aes(alpha = node_weight, size = 3, color = n_intersects)) +
  geom_node_text(aes(label = label), repel = T, size = 3) +
  scale_alpha(range = c(0.2, 0.9)) +
  theme_graph() +
  theme(legend.position = "none")
