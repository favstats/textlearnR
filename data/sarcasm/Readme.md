Sarcasm on Reddit
================

-   [Kaggle Challange](https://www.kaggle.com/danofer/sarcasm#train-balanced-sarcasm.csv)

This dataset contains 1.3 million Sarcastic comments from the Internet commentary website Reddit. The dataset was generated by scraping comments from Reddit (not by me :)) containing the ( sarcasm) tag. This tag is often used by Redditors to indicate that their comment is in jest and not meant to be taken seriously, and is generally a reliable indicator of sarcastic comment content.

``` r
pacman::p_load(tidyverse)
sarcasm_dat <- read_csv("train-balanced-sarcasm.csv") %>% 
  select(label, comment) %>% 
  glimpse
```

    ## Parsed with column specification:
    ## cols(
    ##   label = col_double(),
    ##   comment = col_character(),
    ##   author = col_character(),
    ##   subreddit = col_character(),
    ##   score = col_double(),
    ##   ups = col_double(),
    ##   downs = col_double(),
    ##   date = col_character(),
    ##   created_utc = col_datetime(format = ""),
    ##   parent_comment = col_character()
    ## )

    ## Observations: 1,010,826
    ## Variables: 2
    ## $ label   <dbl> 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,…
    ## $ comment <chr> "NC and NH.", "You do know west teams play against west …

``` r
sarcasm_dat %>% 
  count(label)
```

    ## # A tibble: 2 x 2
    ##   label      n
    ##   <dbl>  <int>
    ## 1     0 505413
    ## 2     1 505413

``` r
# save(sarcasm_dat, file = "sarcasm_dat.Rdata")
```
