makeCacheMatrix <- function(mat=matrix()) {
  inv_mat<<-NULL
  set<-function(y){
   mat<<-y
    inv_mat<<- NULL
  }
  get<-function() mat
  setinverse<-function(solve) inv_mat<<-solve
  getinverse<-function() inv_mat
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}
cacheSolve <- function(mat, ...) {
  inv_mat<-mat$getinverse()
if (!is.null(inv_mat)){
  print("getting cached matrix")
  return(inv_mat)
}
   mat<-mat$get()
   inv_mat<-solve(mat, ...)
   mat$setinverse(inv_mat)
   inv_mat
}
