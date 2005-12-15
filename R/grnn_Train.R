"grnn_Train" <-
function (P, T, SIGMA_flag=1, SIGMA_inp=1) {

    # INITIALIZATION

    # MAIN

    #   store training set in network (centers, weights)

    C <- P;
    W <- T;

    #   if required (SIGMA_flag=1), compute spread, SIGMA

    if (SIGMA_flag==1) {

        SS <- compute_SIGMA (C);
        SIGMA <- SS$SIGMA;

    } else {

        SIGMA <- SIGMA_inp;
    }

    # RESULTS

    rslt <- list (C=C, W=W, SIGMA=SIGMA);

}

