### Name: demo_TEST
### Title: Demo, Batch Testing on a GRNN
### Aliases: demo_TEST
### Keywords: neural

### ** Examples

#==============================================================================+
# Script demo_TEST.R performs batch-mode testing on the synthesized 
#   grnn defined by C, W, and SIGMA. Test patterns are contained in P_tst.
#   Test error results are computed against test targets in T_tst. Error
#   plots are displayed to the terminal and written to file grnn_plot.eps.
#==============================================================================+

#       read test data into workspace

    data (P_tst)
    data (T_tst)
    
    P <- t(P_tst)
    T <- t(T_tst)

#       mean-centering

    mean_P <- mean_center_X (P)
#    mean_T <- mean_center_X (T)
    P <- mean_P$X_mc
#    T <- mean_T$X_mc


#       clean workspace

    rm (P_tst, T_tst, mean_P)
#    rm (P_tst, T_tst, mean_P, mean_T)

#       perform batch test using test data and grnn (predefined in workspace as
#           C, W, and SIGMA)

    BATCH <- 1
    BATCH_TEST <- grnn (P, C, W, SIGMA, BATCH)
    
    T_hat <- BATCH_TEST$T_hat

#       plot and save error results

    TEST_STATS <- test_Stats (T, T_hat)

#       clean workspace

    rm (P, T, T_hat, BATCH, BATCH_TEST, TEST_STATS, C, W, SIGMA)

#EOS

#==============================================================================+
