"mean_center_X" <-
function (X) {
  
    # INITIALIZATION

    d <- dim (X)[1];
    X_mc <- X;
    mn_Vect <- numeric (d);

    # MAIN

    #   for each variable, subtract row mean from each element

    for (k in 1:d) {

        mn_Vect[k] <- mean ( unlist (X[k, ]));
        X_mc[k, ] <- unlist (X[k, ]) - mn_Vect[k];

    }

    # RESULTS

    rslt <- list (X_mc=X_mc, mn_Vect=mn_Vect);

}

