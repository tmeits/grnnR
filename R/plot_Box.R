"plot_Box" <-
function (T, T_hat, NOVAL=NA) {

    # INITIALIZATION

    ERR <- abs (T-T_hat);
    ERR [is.na(ERR)] <- NOVAL;
    m <- min (ERR);  
    n <- max (ERR);

    # MAIN

    box1 <- boxplot (ERR, plot=FALSE);

        l1 <- box1$n;
        l2 <- box1$stats[1,1];
        l3 <- box1$stats[2,1];
        l4 <- box1$stats[3,1];
        l5 <- box1$stats[4,1];
        l6 <- box1$stats[5,1];
        l7 <- box1$conf[1,1];
        l8 <- box1$conf[2,1];
        l9 <- max (box1$out);

        box1stats1 <- prettyNum ( c(l3, l4, l5, l6, max (T)), trim=TRUE, 
                digits=3);
        box1text1 <- c("- lower hinge", "- median", "- upper hinge", 
                "- upper wisker extreme");
        box1stats2 <- prettyNum ( c(l1, l2, l7, l8), trim=TRUE, digits=3);
        box1text2 <- c("observations: ", "lwr wisk extrm: ", "lwr notch: ", 
                "upr notch: ");   


    bxp1 <- bxp (box1, notch=FALSE, boxwex=0.2, axes=FALSE);

    box ();

        axis (2, at=box1stats1, labels=TRUE, tick=TRUE, cex.axis=0.6, las=2);
        mtext ( paste ("NOVAL parameter = ", NOVAL), side=3, adj=0.5, cex=0.6);
        text (x= c(1.1,1.1,1.1,1.1), y= c(l3,l4,l5,l6), labels=box1text1, 
                cex=0.6, xpd=NA, pos=4);
                legMatrix <- matrix ( t( c(box1text2, box1stats2)), nrow=4, 
                        ncol=2, byrow=FALSE );
        legend ( 1.1, y=l9, legend=legMatrix, pch=NULL, bty="n", ncol=2, 
                xjust=1, y.intersp=0.9, cex=0.6 );
        title ( "grnnR test-error box/whisker plot" );

}

