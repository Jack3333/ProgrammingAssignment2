## The purpose of this pair of functions is to avoid duplicating the 
## calculations involved in inverting a matrix.  If one requires the inverse  
## an invertible matrix for which the inverse has already been found, this
## pair of functions enable one to retrieve the previously determined
## inverse from a cache.

## This function provides

makeCacheMatrix <- function(x = numeric()) {
      inv <- NULL
      set <- function(y) {
            x <<- y
            inv<<- NULL
      }
      get <- function() X
      setinv <- function(solve)   inv<<- solve
      getinv - function() inv
      list (set = set, get = get,
            setinv = setinv,
            getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
