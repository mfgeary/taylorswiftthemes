#' Display the color palette
#'
#' @param name The name of the palette
#' @param n The number of values to display from the palette
#'
#' @return An image showing the given palette
#' @export
display_taylor_pal <- function(name, n = 10){
  if(!(name %in% names(taylor_palettes))){
    stop(paste(name,"is not a valid palette name for taylor_palette"))
  }

  if(n < 3){
    warning("minimal value for n is 3, displaying requested palette with 3 different levels\n")
    return(display_taylor_pal(name, 3))
  }
  if (n > length(taylor_palettes[[which(name==names(taylor_palettes))]])) {
    warning(paste("n too large, allowed maximum for palette",name,"is",length(taylor_palettes[[which(name==names(taylor_palettes))]])),
            "\nDisplaying the palette you asked for with max numbers of colors\n")
    return(display_taylor_pal(name, length(taylor_palettes[[which(name==names(taylor_palettes))]])))
  }

  image(1:n,1,as.matrix(1:n),col=taylor_palette(name, n, type ="discrete"),
        xlab=name,ylab="",xaxt="n",yaxt="n",bty="n")

}

#' Display all color palettes
#'
#' @param n The number of values to display from the palette
#' @param select A list of names of existing palettes to select
#' @param exact.n If TRUE, only display palettes with a color number given by n
#'
#' @return An image showing all palettes
#' @export
display_taylor_all <- function (n=NULL, select=NULL, exact.n=FALSE) {
    gaplist <- ""
    totallist <- c(
      taylor_palettes[grep("debut", names(taylor_palettes))],
      gaplist,
      taylor_palettes[grep("fearless", names(taylor_palettes))],
      gaplist,
      taylor_palettes[grep("speak_now", names(taylor_palettes))],
      gaplist,
      taylor_palettes[grep("red", names(taylor_palettes))],
      gaplist,
      taylor_palettes[grep("nineteen", names(taylor_palettes))],
      gaplist,
      taylor_palettes[grep("reputation", names(taylor_palettes))],
      gaplist,
      taylor_palettes[grep("lover", names(taylor_palettes))],
      gaplist,
      taylor_palettes[grep("folklore", names(taylor_palettes))],
      gaplist,
      taylor_palettes[grep("evermore", names(taylor_palettes))],
      gaplist,
      taylor_palettes[grep("midnights", names(taylor_palettes))],
      gaplist,
      taylor_palettes[grep("all_albums|eras|karma", names(taylor_palettes))]
    )

    names(totallist) <- c(
      names(taylor_palettes[grep("debut", names(taylor_palettes))]),
      "gap1",
      names(taylor_palettes[grep("fearless", names(taylor_palettes))]),
      "gap2",
      names(taylor_palettes[grep("speak", names(taylor_palettes))]),
      "gap3",
      names(taylor_palettes[grep("red", names(taylor_palettes))]),
      "gap4",
      names(taylor_palettes[grep("nineteen", names(taylor_palettes))]),
      "gap5",
      names(taylor_palettes[grep("reputation", names(taylor_palettes))]),
      "gap6",
      names(taylor_palettes[grep("lover", names(taylor_palettes))]),
      "gap7",
      names(taylor_palettes[grep("folklore", names(taylor_palettes))]),
      "gap8",
      names(taylor_palettes[grep("evermore", names(taylor_palettes))]),
      "gap9",
      names(taylor_palettes[grep("midnights", names(taylor_palettes))]),
      "gap10",
      names(taylor_palettes[grep("all|eras|karma", names(taylor_palettes))])
    )

    totallist <- rev(totallist)
    totnum <- lengths(totallist, use.names = FALSE)
    totnum[totnum == 1] <- 5

    if (!is.null(select)) {
      totallist <- totallist[select]
      totnum <- totnum[select]
    if(any(is.na(totallist)))
      stop(paste("Illegal value(s) of select: ",
                 paste(select[is.na(totallist)],
                       collapse=" ")))
    }

    if(is.null(n)) n <- 10
    if(length(n)==1) n <- rep(n, length(totallist))

    if(exact.n) {
      keep <- n <= totnum
      totallist <- totallist[keep]
      n <- n[keep]
      totnum <- totnum[keep]
    }

    if (any(n < 3) | exact.n & any(n > totnum)|
        length(n) != length(totallist)){
      warning("Illegal vector of color numbers")
      print(paste(n, collapse=" "))
    }
    n[n < 3] <- 3
    n[n > totnum] <- totnum[n > totnum]


    nr <- length(totallist)
    nc <- max(n)

    totallist <- names(totallist)
    ylim <- c(0,nr)
    oldpar <- par(mgp=c(2,0.25,0))
    on.exit(par(oldpar))
    plot(1,1,xlim=c(0,nc),ylim=ylim,type="n", axes=FALSE, bty="n",
         xlab="",ylab="")
    for(i in 1:nr) {
      nj <- n[i]
      if (grepl("gap", totallist[i])) next
      shadi <- taylor_palette(totallist[i], nj)
      rect(xleft=0:(nj-1), ybottom=i-1, xright=1:nj, ytop=i-0.2, col=shadi,
         border="light grey")
    }

    labellist <- ifelse(grepl("gap", totallist), "", totallist)
    text(rep(-0.1,nr),(1:nr)-0.6, labels=labellist, xpd=TRUE, adj=1)
}
