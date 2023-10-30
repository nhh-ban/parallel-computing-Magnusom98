library(tictoc)

# Initialize a list to store timing results
timings <- list()

# Method 1: Original Script
tic("Original Script")
source("scripts/original_script.R")
timings$original <- toc(log = TRUE)

# Method 2: Final Loop Parallel
tic("Final Loop Parallel")
source("scripts/Parallel_Loop_Script.R")
timings$final_loop_parallel <- toc(log = TRUE)

# Method 3: MTweedieTests Parallel
tic("MTweedieTests Parallel")
source("scripts/MTweedieTests_parallel.R")
timings$MTweedieTests_parallel <- toc(log = TRUE)

# Print the timing results
print(timings)
