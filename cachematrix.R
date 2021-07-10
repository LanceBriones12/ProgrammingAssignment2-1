## The project's aim: to utilize the design of functions that either
## store or re-establish an inverse of a matrix

## the function that sequence a matrix object to cache a data’s inverse is "makeCacheMatrix".

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
set <- function(y) {
x <<- y
inv <<- NULL
        
        
}
        
get <- function() x
setInverse <- function(inverse) inv <<- inverse
getInverse <- function() inv
list(set = set,get = get,setInverse = setInverse,getInverse = getInverse)
}



## cacheSolve: the function that validates the matrix’ inverse which was re-established by the makeCacheMatrix is "cacheSolve".
## during the inverse’s calculation, the function, cacheSolve shall try to restore the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
inv <- x$getInverse()
if (!is.null(inv)) {
message("getting cached data")
return(inv)}
mat <- x$get()
inv <- solve(mat, ...)
x$setInverse(inv)
inv}
}
