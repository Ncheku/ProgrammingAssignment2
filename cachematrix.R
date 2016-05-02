## Below are 2 special functions that are used to create a special object that stores a square matrix and 
##caches its inverse.

## This first function creates a special square matrix
makeCacheMatrix <- function(x = matrix()) {
m<-NULL
set<-function(y){
x<<-y
m<<-NULL
}
get<-function() x
setmatrix<-function(solve) m<<-solve
getmatrix<-function() m
list(set=set,get=get,
setmatrix=setmatrix,
getmatrix=getmatrix)
}

## This function computes the inverse of the special matrix returned by the makecacheMatrix above.
cacheSolve <- function(x, ...) {
m<-x$getmatrix()
if(!is.null(m)){
message("getting cached data")
return(m)
}
matrix<-x$get()
m<-solve(matrix,...)
x$setmatrix(m)
m
}
        

