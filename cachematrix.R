## The purpose of this pair of functions is to avoid duplicating the 
## calculations involved in inverting a matrix.  If one requires the inverse  
## an invertible matrix for which the inverse has already been found, this
## pair of functions enable one to retrieve the previously determined
## inverse from a cache.

## This function produces a list of objects to be passed to cacheSolve which
## will in turn use the objects in the determination of the inverse of a
## given matrix either by retrieval from a cache or direct calculation. 

makeCacheMatrix <- function(x = matrix()) {
      inv <- NULL
      set <- function(y) {
            x <<- y
            inv<<- NULL
      }
      get <- function() x
      setinv <- function(inverse)   inv<<- inverse
      getinv <- function() inv
      list (set = set, get = get,
            setinv = setinv,
            getinv = getinv)
}


## cacheSolve calculates the inverse of the matrix created above. 
## It first checks to see if the inverse has already been calculated.
## If so, it gets the inverse from the cache and skips the computation.
## Otherwise, it calculates the inverse of the matrix and sets the value
## of the inverse in the cache via the setinv function.

cacheSolve <- function(x, ...) {
        inv <- x$getinv()
        if(!is.null(inv)) {
              message("getting cached data")
              return(inv)
        }
        data <-x$get()
        inv <- solve(data, ...)
        x$setinv(inv)
        inv
}
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
               
             
              
              
      
              
              
              
              
              
              
              
              
              
              
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        

