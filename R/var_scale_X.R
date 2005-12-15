"var_scale_X" <-
function (X) {

    # INITIALIZATION

    d <- dim (X)[1];
    X_var <- X;
    var_Vect <- numeric (d);

    # MAIN

    #   divide row elements by std. dev. of variable (row)

    for (k in 1:d) {

        var_Vect[k] <- var ( unlist (X[k, ]));
        X_var[k, ] <- unlist (X[k, ]) / var_Vect[k];
 
    }

    # RESULTS

    rslt <- list (X_var=X_var, var_Vect=var_Vect);

}

