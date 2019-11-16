# Johns Hopkins Data Science Track Coursera
# Course: 2
# Week: 3
#
# User: g9a2hvk9
# email: g9a2hvk9@gmail.com
# github: github.com/g9a2hvk9
#
#
# PROGRAMMING ASSIGNMENT 2 - CACHING THE INVERSE OF A MATRIX
#
# Set of (2) functions to enable matrix creation and caching of the inverse
# The first function creates the matrix, the second checks for cached inverse and returns inverse
# The functuons do not check for the inversability of the given matrices, but assume that the given matrix is inveribl


# creates matrix and implements function vector to enable caching

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y){
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setinverse <- A
        getinverse <- function() inv
        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


# takes function vector creates in "makeCacheMatrix" and returns cached inverse if it exists
# else, it calculates the the inverse and returns the inverse of the given matrix
# takes as an argument the function "makeCacheMatrix" with a given, inversible matrix

cacheSolve <- function(x, ...) {
        inv <- x$getinverse()
        if(!is.null(inv)){
                message("getting cached data")
                return(inv)
        }
        data <- x$get()
        inv <- solve(data)
        x$setinverse(inv)
        print(inv)
}
