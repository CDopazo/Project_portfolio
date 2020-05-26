## this funciton makes a cashe matrix that allows the cacheSolve function to check if the inverse of the matrix has already been computed 

#making an empty matrix
makeCacheMatrix <- function(x = matrix()) { 
  m <- NULL
  set <- function(y) { 
    
    # clears any value of m that had been cached by a prior execution of cacheSolve
    x <<- y
    m <<- NULL 
  }
  # gets the value of x from the paternal enviroment of makeCacheMatrix
  get <- function() x 
  
  #defines the setter for the solve m
  setsolve <- function(solve) m <<- solve
  
  #defines geter for the solve m
  getsolve <- function () m 
  
  #assigns each of the created function as an element in a list and returns it to the parent enviroment    
  list( set = set, get = get, 
        setsolve = setsolve, 
        getsolve = getsolve)
}


## The cacheSolve function either populates and/or retrives the inversted matrix

cacheSolve <- function(x, ...) {
  
  #retrive the inverse matrix from the object passed in the arugemnt 
  m <- x$getsolve() 
  
  #checks if the result is NULL, if it is not NULL it will return the cashed matrix to the parent enviroment
  if(!is.null(m)) { 
    message("getting cached data")
    return(m)
  }
  
  #if the result of !is.null(m) is FALSE cacheSolve gets the matrix from the input object, calcualtes the inverse matrix and returns it to the parent enviroment 
  data <- x$get() 
  m <- solve(data, ...)
  x$setsolve(m)
  m
}