##Function description:To increase the compute execution speed,It is  a good idea to catch something in advance through
##'<<-' operator which can be used to assign a value to an object in an environment that is different from the current environment.
##But there are still questions for me because of confusion about what the environments within the compute exactly means.What is 
##method to realize them,and because all the things about compute excution created by humans,it is possible to look back layer 
##by layer started from the most superficial things.That is to say,from the return from softwares to the basic hardwares,I want to
##know how to actualize them layer by layer.But I have not got it through the course,or just metioned about it ,just tell me where
#to find them.If so,It is quite fine and important for me.

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
  x <<- y
  m <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) m <<- inverse
  getInverse <- function() m 
  list(set = set, get = get, 
  setInverse = setInverse, 
  getInverse = getInverse)
}

##Extract from catch

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
  m <- x$getInverse()
  if(!is.null(m)){
  message("getting cached data")
  return(m)
  }
  mat <- x$get()
  m <- solve(mat,...)
  x$setInverse(j)
  m
}

