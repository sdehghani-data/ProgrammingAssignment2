## Hi...In this Rscript we want to define 2 functions named "makeCacheMatrix" which caches 
## a reversible matrix and "cacheSolve" function which calculates the reverse of matrix cached
## in first matrix

## caching a reversible matrix!

makeCacheMatrix <- function(x = matrix()) {
  mat <- NULL
  set <- function(y) {
    x <<- y
    mat <<- NULL
  }
  get <- function() {x}
  setsolve <- function(solve) {mat <<- solve}
  getsolve <- function() {mat}
  list(set = set, get = get,setsolve = setsolve,getsolve = getsolve)
}


## calculating the reverse of matrix cached in first matrix

cacheSolve <- function(x, ...) {
  
  mat <- x$getsolve()
  if(!is.null(mat)) {
    message("getting cached data")
    return(mat)
  }
  data <- x$get()
  mat <- solve(data, ...)
  x$setsolve(mat)
  mat
}
