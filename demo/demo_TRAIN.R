### Name: demo_TRAIN
### Title: Synthesize a Generalized Regression Neural Network
### Aliases: demo_TRAIN
### Keywords: neural

### ** Examples

#==============================================================================+
# Script demo_TRAIN.R synthesizes a grnn (C, W, SIGMA) using the
#   set of supplied training data contained in P_trn and T_trn,
#   representing the training patterns and training targets, respectfully.
#   The Gaussian spread value can be either supplied (SIGMA_inp) or computed
#   empirically from the center points (SIGMA_flag=1)
#==============================================================================+

#       read training data into workspace

    data (P_trn)
    data (T_trn)
    
    P <- t(P_trn)
    T <- t(T_trn)

#       mean-centering

    mean_P <- mean_center_X (P)
#    mean_T <- mean_center_X (T)
    P <- mean_P$X_mc
#    T <- mean_T$X_mc

#       clean workspace

    rm (P_trn, T_trn, mean_P)
#    rm (P_trn, T_trn, mean_P, mean_T)

#------------------------------------------------------------------------------#
#       enter spread flag/VALUE
#------------------------------------------------------------------------------#

    SIGMA_flag <- 1 
    SIGMA_inp <- 1

#------------------------------------------------------------------------------#

#       train (synthesize) grnn and place C, W, and SIGMA in workspace

    TRAIN <- grnn_Train (P, T, SIGMA_flag, SIGMA_inp) 
    
    C <- TRAIN$C
    W <- TRAIN$W
    SIGMA <- TRAIN$SIGMA

#       clean workspace

    rm (P, T, SIGMA_flag, SIGMA_inp, TRAIN)

#EOS

#==============================================================================+
