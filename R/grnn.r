"grnn" <-
function (P, C, W, SIGMA, BATCH=1) {

    # INITIALIZATION

    n <- dim (C)[2];
    r <- dim (W)[1];

    if (BATCH==1) {

        #   batch mode inits

        N <- dim (P)[2];
        d <- dim (P)[1];
        T_hat <- matrix (nrow=r, ncol=N);

    } else {

        #   on-line mode inits
 
        N <- 1;
        d <- length (P);
        T_hat <- numeric (N);

    }

    # MAIN

    #   present pattern(s), compute output
 
    for (j in 1:N) {

        #   initialize parameters

        if (BATCH==1) {

            p <- P[ ,j];

        } else {

            p <- P;

        }

        s <- 0;
        expRes <- numeric (n);

        #   compute summation neuron output

        for (i in 1:n) {

            normArg <- (p - C[ ,i]);
            normRes <- drop ( sqrt (normArg %*% normArg));
            expArg <- (-(normRes / SIGMA^2));
            expRes[i] <- exp (expArg);
            s <- s + expRes[i];

        }

        rbf_Out <- numeric (r);

        #   compute numerator

        for (i in 1:n) {

            sumArg <- expRes[i] * W[ ,i];
            rbf_Out <- rbf_Out + sumArg;

        }

        #   compute output

        if (BATCH==1) {

            T_hat[ ,j] <- rbf_Out / s;

        } else {

            T_hat <- rbf_Out / s;

        }

    }

    # RESULTS

    rslt <- list (T_hat=T_hat);
    
}

