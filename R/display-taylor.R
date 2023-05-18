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
display_taylor_all <- function (n=NULL, select=NULL, exact.n=TRUE) {

    totallist <- names(taylor_palettes)
    totnum <- length(totallist)

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

    if(exact.n){
      keep <- n<=10
      totallist <- totallist[keep]
      n <- n[keep]
      totnum <- totnum[keep]
    }
    maxnum <- 10
    colorlist <- rev(totallist)
    if (any(n < 3) | exact.n & any(n>maxnum)|
        length(n)!=length(colorlist)){
      warning("Illegal vector of color numbers")
      print(paste(n, collapse=" "))
    }
    n[n<3] <- 3
    n[n>maxnum] <- maxnum[n>maxnum]

    nr <- length(colorlist)
    nc <- max(n)

    ylim <- c(0,nr)
    oldpar <- par(mgp=c(2,0.25,0))
    on.exit(par(oldpar))
    plot(1,1,xlim=c(0,nc),ylim=ylim,type="n", axes=FALSE, bty="n",
         xlab="",ylab="")
    for(i in 1:nr)
    {nj <- n[i]
    if (colorlist[i]=="") next
    shadi <- taylor_palette(colorlist[i], nj)
    rect(xleft=0:(nj-1), ybottom=i-1, xright=1:nj, ytop=i-0.2, col=shadi,
         border="light grey")
    }
    text(rep(-0.1,nr),(1:nr)-0.6, labels=colorlist, xpd=TRUE, adj=1)
}
