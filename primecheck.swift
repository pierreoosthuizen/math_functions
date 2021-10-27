extension Int {
    
    /// Check if the integer is a prime number.
    /// - Returns: True if the number is prime. False if it is not prime.
    func isPrime() -> Bool {
    
        // If the number is 1,2, or 3 then it is prime.
        if (self == 2) || (self == 3) {
            return true
        }
        
        // All primes greater than 3 are of the form 6k ± 1, where k is any
        //  integer greater than 0.
        
        // Note that 2 divides (6k + 0), (6k + 2), and (6k + 4) and 3 divides
        //  (6k + 3). So, a more efficient method is to test whether n is
        //  divisible by 2 or 3.
        if (self <= 1) || (self % 2 == 0) || (self % 3 == 0) {
            return false
        }
        
        //  Then to check through all numbers of the
        //  6k ± 1 ≤ √n
        var integer = 5
        while integer <  (integer * integer) {
            
            if (self % integer == 0) || (self % (integer + 2) == 0) {
                return false
            }
            
            integer += 6
        }
        
        // All checks done, can return true.
        return true
    }
}
