## Functions will get the inverse of a matrix and create an object that allows us to store our matrix as and cache´s its inverse.


## Through makeCacheMatrix function we are be able to store our matrix. Within this object, 
#we can find a function that allows us to set and get our matrix, as well as its inverse.

makeCacheMatrix <- function(x = matrix()) {
	m<-NULL
	set<-function(y){
		x<<-y
		m<<-NULL}
	get<-function()x
	setinverse<-function(solve)m<<-solve
	getinverse<-function()m
	list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}




## cacheSolve, calculates the inverse and stores its value in makeCacheMatrix, so that
#is easily accesible in the future.

cacheSolve <- function(x, ...) {
	m<-x$getinverse()
	if(!is.null(m)){
		message("getting cached data")
		return(m)
	}
	mat<-x$get()
	m<-solve(mat,...)
	x$setinverse(m)
	m
} ## Return a matrix that is the inverse of 'x'
