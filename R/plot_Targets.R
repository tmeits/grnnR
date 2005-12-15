"plot_Targets" <-
function (T, T_hat, BATCH) {

    # INITIALIZATION

    if (BATCH==1) {

        r <- dim (T_hat)[1];
        m <- dim (T_hat)[2];

    } else {

        r <- length (T);
        m <- 1;

    }

    # MAIN
  
    A1 <- range (T);
    A2 <- range (T_hat);
    a <- min ( c(A1[1], A2[1]));
    b <- max ( c(A1[2], A2[2]));
    p <- 1;
    x <- seq (from=a, to=b, length.out=2);

    plot (x, x, , xlab="Target value", ylab="grnnR estimate", type="n");

        lines (x, x, col="gray");

        for (i in 1:r){

            if (BATCH==1) {

                points ( unlist (T[i, ]), unlist (T_hat[i, ]), pch=p);
                legend (a, (b-((i-1)*par ("cxy")[2])), 
                        paste ("- dimension ", i), bty="n", pch=p, cex=0.6);

            } else {

                points (T[i], T_hat[i], pch=p);

            }

        p=p+1;

        if (p>25) p=1;

        }

    mtext ( paste ("Total Nr targets = ", r*m), side=3, adj=0.5, cex=0.8);
    title ("Test data targets vs. grnnR estimates");

}

