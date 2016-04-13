## Put comments here that give an overall description of what your
## functions do

## takes in a square, invertible matrix
## returns a list to 
##		1. set the matrix
## 		2. get the matrix
##		3. set the inverse
## 		4. get the inverse

makeCacheMatrix <- function(x = matrix()) {
	m <- NULL
	set <- function(y){
		x <<- y
		m <<- NULL
	}
	get <- function() x
	setmatrix <- function(solve) m <<- solve
	getmatrix <- function() m
	list(set=set, get=get,
		setmatrix=setmatrix,
		getmatrix=getmatrix)

}


## takes the results of makeCacheMatrix function
## returns the inverse of the original matrix (cached inverse or calculated)

cacheSolve <- function(x, ...) {
	m <- x$getmatrix()
	if(!is.null(m)){
		message("getting cached data")
		return(m)
	}
	matrix <- x$get()
	m <- solve(matrix, ...)
	x$setmatrix(m)
	m

}
