# Using foreach for repetitive task
set(A 0;1)
set(B 2 3)
set(C "4 5")
set(D 6;7 8;9 10 11; 25  ;  ; ; ; ; ;)
set(E "")
foreach(X IN LISTS A B C D E)
    message(STATUS "X=${X}")
endforeach()

set(names "Alice" "Bob" "Charlie" "David" "Eve")

message("Using foreach loop after here >>>>>>>>>>>>>")

foreach(name ${names})
    message("Name: ${name}")
endforeach()

message("Using while loop after here >>>>>>>>>>>>>>>")

list(LENGTH names num_names) # Get the number of names in the list
set(counter 0) # Initialize the counter variable
# Create a while loop to iterate through the list of names defined above
while(counter LESS num_names)
    list(GET names ${counter} name) # Get the name from the list at ${counter} index
    message("Name: ${name}") # Print the name
    math(EXPR counter "${counter} + 1") # Increment the counter !
endwhile()