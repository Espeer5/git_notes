# Arithmetic Expansion
- "$((Arithmetic expression))
- ex:
    - echo $(( 4 + 2 ))
    - echo (( 4 * 2 ))
    - echo (( $x + $y )) = echo (( x + y ))
- Follows order of operations
- exponentiation is **
- Modulus is %
- These operations are for __integer__ operations only
- bc command
    - This is a basic calculator for working with floating point values
    - "echo "5/2" | bc" -> 2
    - Scale value - determines preceision of given result
    - "echo "scale=2; 5/2" | bc" -> 2.50