## Put comments here that give an overall description of what your
## functions do

## creates the special matrix
makeCacheMatrix<-function(x=matrix()){
	inv<-NULL
	set<-function(y){
		x<<-y
		inv<<-NULL
		}
	get<-function() x
	setsolve<-function(solve) inv <<-solve
	getsolve<-function() inv
	list(set=set,get=get,setsolve=setsolve,getsolve=getsolve)
	}



## Return a matrix that is the inverse of 'x'. Calculates it only if it is not cached yet
cacheSolve<-function(x, ...){
	inv<-x$getsolve()
	if(!is.null(inv)){
		message("setting inverse data")
		return(inv)
	}
	data<-x$get()
	inv<-solve(data, ...)
	x$setsolve(inv)
	inv
	}

#sm<-makeCacheMatrix(matrix(rnorm(25), 5, 5))
#cacheSolve(sm)

#makeCacheMatrix <- function(x = matrix()) {
#
#}
#cacheSolve <- function(x, ...) {
#        ## Return a matrix that is the inverse of 'x'
#}



