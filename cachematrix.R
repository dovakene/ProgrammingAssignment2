makeCacheMatrix <- function(x=matrix()) {
  inv_mat<<-NULL
  set<-function(y){
   x<<-y
    inv_mat<<- NULL
  }
  get<-function() x
  setinverse<-function(solve) inv_mat<<-solve
  getinverse<-function() inv_mat
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}
cacheSolve <- function(mat, ...) {
  inv_mat<-x$getinverse()
if (!is.null(inv_mat)){
  print("getting cached matrix")
  return(inv_mat)
}
   x<-x$get()
   inv_mat<-solve(x, ...)
   x$setinverse(inv_mat)
   inv_mat
}
