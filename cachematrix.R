## Put comments here that give an overall description of what your
## functions do

## Coursera R programming Assignment 

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function (y) {
    x <<- y 
    inv <<- NULL
    
  }
  get <- function() x
  setInverse <- function(matrixInverse) inv <<- matrixInverse
  getInverse <- function () inv 
  list(set = set, get = get, setInverse = setInverse, getInverse= getInverse)
  
}

## Write a short comment describing this function
## This function computes the inverse of the special matrix (matrixInverse) returned 
## by makeCacheMatrix above.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse()
  if (!is.null(inv)){
    message("getting cached data")
    return(inv)
    
  }
  data <- x$get()
  inv <- solve(data)
  x$setInserse(inv)
  inv
}

