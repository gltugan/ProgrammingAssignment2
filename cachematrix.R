## Coursera R programming Week3 Assignment 2

## The function makeCacheMatirx creates a special matrix object which cache its inverse.
## A special operator "<<-" used here to assign a value to an an object
## in an environment that is different from the current environment.



## taking a matrix as an input.
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  
## setting the value of the matrix
  set <- function (y) {
    x <<- y 
    inv <<- NULL
    
  }
  
    ## get the value of the matrix.
    get <- function() x
    
    ##set the value of the invertible matrix.
    setInverse <- function(matrixInverse) inv <<- matrixInverse
  
    ## get the value of the invertible matrix.
    getInverse <- function () inv 
    
  list(set = set, get = get, setInverse = setInverse, getInverse= getInverse)
  
}

## This function computes the inverse of the special matrix returned by makeCacheMatrix above.
## Checks the inverse of the matrix has any value calculated or not.


cacheSolve <- function(x, ...) {
  
  ## getting the value of the inverse matrix from makeCacheMatrix above.
  inv <- x$getInverse()
  
 
   ##if the inverse of the matrix has been calculated and has some value give message and
  ## return the cached object.
  
  if (!is.null(inv)){
    
    message("getting cached data")
    return(inv)
    
  }
  
  ## if the inverse of thecurrent matrix is NULL take the data from matrix.
  data <- x$get()
  
  ## take inverse of the matrix using solve function.
  inv <- solve(data)
  
  ## set the inverse of the matrix.
  x$setInserse(inv)
  
  ## return the valuu of the inverse of the matrix.
  inv
}

