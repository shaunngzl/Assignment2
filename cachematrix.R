## makeCacheMatrix is a function which creates a special "matrix" object that can 
## cache its inverse for the input (which is an invertible square matrix)

makeCacheMatrix <- function(x = matrix()) {
  a <- NULL
  set <-function(z){
    x <<- z
    a <<- NULL
  }
  get <- function() x
  setInverse <- function(IMatrix) a <<- IMatrix
  getInverse <- function() a 
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## cacheSolve is a function that solve and return a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
inv <- x$getInverse()
if(!is.null(inv)){
  message("getting cached data")
  return(a)
}
M <- x$get()
a <- solve(M,...)
x$setInverse(a)
a
}

