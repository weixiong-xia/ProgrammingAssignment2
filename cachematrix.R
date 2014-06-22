## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  s <- NULL
  set <- function(y) {
    x <<- y
    s <<- NULL
}
get <- function() x
setsolved <- function(solve) s <<- solve
getsolved <- function() s
list(set = set, get = get,
     setsolved = setsolved,
     getsolved = getsolved)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    s <- x$getsolved()
    if(!is.null(s)) {
      message("getting cached matrix")
      return(s)
    }
    data <- x$get()
    s <- solve(data, ...)
    x$setsolved(s)
    s
    ## Return a matrix that is the inverse of 'x' 
}
      
