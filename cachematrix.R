## Function to store matrix and its inverse matrix

makeCacheMatrix <- function(x = matrix()) {

inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
                get <- function() x
                setinverse <- function(solve) inv <<- solve
                getinverse <- function() inv
                list(set = set, get = get,
                setinverse = setinverse,
                getinverse = getinverse)
                
}


## Function to calculate inverse matrix and check the catche

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
                inv <- x$getinverse()
                if(!is.null(inv)) {
                        message("getting cached data")
                        return(inv)
                }
                data<-x$get()
                inv<-solve(data)
                x$setinverse(inv)
                inv
}
