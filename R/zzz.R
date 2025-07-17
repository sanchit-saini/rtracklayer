.onUnload <- function(libpath)
{
    library.dynam.unload("rtracklayer", libpath)
}

setUserUdcDir <- function() {
    dir <- paste0("/tmp/udcCache_", Sys.info()[["user"]])
    .Call(R_setUserUdcDir, dir)
}

.onLoad <- function(libname, pkgname) 
{
    S7::methods_register()
    setUserUdcDir()
}
