## Put comments here that give an overall description of what your functions do

##  Below describes catch matrix R function to cache time consuming computation
##    lines with #> is printed in the output
##    lines with # indicates comments

##  two functions are used to calculate the inverse of the matrix
##  makeCacheMatrix () and cacheSolve to cache and calculate the inverse
##    of given matrix- 
##   if matrix has been catched before the inverse of the the matrix is returned
##   create "square" matrix (equal no of rows and columns)
##   the first vector is a list containg function 
##      

## Write a short comment describing this function
##    The makeCatchMatrix is a list containing function 
##    Special matrix object that can cache its inverse    

makeCacheMatrix <- function(x = matrix()) {

  
##    Initialise the inverse property
    i <- NULL
  
##  Set the matrix
    set <- function ( matrix )  {
    m <<- matrix
    i <<- NULL
  }

## Get matrix 
  get <- function () {
  ## Return the matrix
    m
}

## Set the inverse of the matrix
setInverse <- function (inverse) {
  i <<- inverse
}


## Get inverse of the matrix
getInverse <- function ()  {
  ## Return the inverse property
  i
  
}

## Return a list
list(set = set, get = get, 
     setInverse = setInverse,
     getInverse = getInverse)


}
## Write a short comment describing this function

##  Function cacheSolve () calculates the inverse of the matrix passed by 
##  makeCatchMatrix().
##  If the inverse has already calculated and matrix has not changed than 
##  cacheSove should retrieve the inverse from the cache


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getInverse()
    
    ## Return inverse if already set
    if ( !is.null(m)) {
      message ("retrieve cache data")
      return(m)
      
    }
  
      ## get matrix from object
    data <- x$get()
    
    ## calculate inverse using matrix
    m <- solve(data) %*% data
    
    ## Set the inverse to the object
    x$set(Inverse(m)
          
          ## Return the matrix
          m
}
