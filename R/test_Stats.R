"test_Stats" <-
function (T, T_hat, NOVAL=NA) {

    # INITIALIZATION

    ERR <- abs (T-T_hat);
    ERR [is.na(ERR)] <- NOVAL;
    m <- dim (ERR)[1];  
    n <- dim (ERR)[2];

    # MAIN

    par (mfrow= c(2,2));

        plot_Targets (T, T_hat, 1);

        plot_Box (T, T_hat, NOVAL);

        hist1 <- hist (ERR, probability=FALSE);

        stats1 <- density (ERR);
        plot (stats1);

    dev.print (device=postscript, "grnnR_plot.eps", onefile=FALSE, 
        horizontal=FALSE, paper="special");
 
    par (mfrow= c(1,1));

}

