## The following functions will will help make a matrix and cache its inverse

## this function will provide functions like creating a matrix and getting its inverse.


makeCacheMatrix <- function(x = matrix()) {
	     inv <- NULL
      set <- function(y){
            x <<- y
            inv <<- NULL
      }
      get <- function() {x}
      setInverse <- function(inverse) {inv <<- inverse}
      getInverse <- function() {inv}
      list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}



## this will cache the data and resolve the "null" we get if try to find the inverse

cacheSolve <- function(x, ...) {
   inv <- x$getInverse()
      if(!is.null(inv)){
            message("data is cached")
            return(inv)
      }
      mat <- x$get()
      inv <- solve(mat, ...)
      x$setInverse(inv)
      inv
}
