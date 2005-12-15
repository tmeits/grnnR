"compute_SIGMA" <-
function (C) {

    # INITIALIZATION

    n <- dim (C)[2];

    # MAIN

    dist1 <- abs (2*max ( max (C), min (C)));
    SIGMA <- dist1 / ( sqrt (2*n));

    # RESULTS

    rslt <- list (SIGMA=SIGMA);

}

