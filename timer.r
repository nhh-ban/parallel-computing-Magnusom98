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

# After running the timer.r script, I found that the "MTweedieTests Parallel" method was the fastest,
# completing the task in 27.28. This improvement in speed can be attributed to the parallelization
# of the M simulations in the MTweedieTests function, allowing the workload to be distributed across 
# multiple cores. This approach is more efficient than parallelizing the final loop since the
# MTweedieTests function involves a larger number of independent simulations, providing more opportunities
# for performance gains through parallel computing. The original script, without any parallelization,
# was the slowest, highlighting the benefits of leveraging parallel computing in R for computationally
# intensive tasks.