Ruby Practice
==================

This folder contains practice Ruby problems from exercism.io. I'll be using this readme to keep track of my thoughts on each assignment, just as a reference for development in the future.

#####assignment 1: hello-world
* Goal – Greet the user by name, or say "Hello, World!" if no name is provided.
* Comments
 * Default variable values can be assigned in the method parameters.
 * Use double quotes to do string interpolation. Single, otherwise.
 * `return` doesn't need to be explicit.

#####assignment 2: hamming
* Goal – Count the number of nucleotide differences between two strands of DNA.
* Comments
 * `zip` method useful for pairing up all corresponding nucleotides. 
 * `count` method useful for comparing the pairs.

#####assignment 3: gigasecond
* Goal – Calculate the date of a person's 1 gigasecond anniversary.
* Comments
 * As simple as adding the number of seconds to the birthday. Ruby is nice :-)

#####assignment 4: rna-transcription
* Goal – Given a DNA strand, return its RNA complement, and vice versa.
* Comments
 * `tr` method made this extremely simple after a lot of pain. Should probably read the docs. Useful for replacing chars with other chars.

#####assignment 5: raindrops
* Goal – If the provided number contains `3`, `5`, or `7` as a prime factor, then append to the output string `'Pling'`, `'Plang'`, and `'Plong'`, respectively.
* Comments
 * Generated a huge list of prime factors at first, which was very silly because `%` can handle the three cases just as well, but with significantly less work.

#####assignment 6: difference-of-squares
* Goal – Find the difference between the sum of squares and the square of sums of the first `n` natural numbers.
* Comments
 * Needed an `initialize` method this time because we want to create an object that retains the provided value of `n`. 
 * `inject` is a very nice method for summing values.

#####assignment 7: roman-numerals
* Goal – Convert the provided number to Roman Numerals.
* Comments
 * Use a `#Hash` to store `<key, value>` pairs.
 * Use a `_` to denote block arguments that aren't used.
 * Had to monkey patch class `Fixnum`, which is kind of gross.

#####assignment 8: robot-name
* Goal – Generate random robot names, consisting of two letters followed by 3 numbers. 
* Comments
 * `sample` method useful for generating random values in a range.
 * `x ||= y` used to say "assign `x` equal to `y` but only if `x` has no value".
 
#####assignment 9: nth-prime
* Goal – Determine what the `nth` prime number is.
* Comments 
 * Contains syntax for marking a method private.
 
#####assignment 10: leap
* Goal – Given a year, determine whether or not it is a leap year.
* Comments
 * Originally tried a convoluted `case` expression but it ended up being much simpler than I thought (after realizing the overlap). 
 
#####assignment 11: grains
* Goal – Calculate the number of grains of wheat on a chessboard given that the number on each square doubles.
* Comments
 * After assuming that the total will always consist of 64 squares, the `total` method became incredibly simple (and fast).
 
#####assignment 12: word-count
* Goal – Given a phrase, count the occurrences of each word in that phrase.
* Comments
 * Learned about regex and the `scan` method.

#####assignment 13: bob
* Goal – Implement Bob's 4 unique responses depending on how he is addressed (question, yelling, silence, anything else).
* Comments
 * Contains syntax for a `case` expression.
 * Learned that comparing `digit` and `digit.upcase` or `digit.downcase` results in `true`.
 
#####assignment 14: food-chain
* Goal – Read in a `.txt` file containing a song and output the lyrics line by line.
* Comments
 * Contains syntax for reading in a `File`

#####assignment 15: sieve
* Goal – Find all primes from 2 up to a given number (Sieve of Eratosthenes algorithm).
* Comments
 * `select` method useful for collecting specific elements from a larger set

#####assignment 16: binary
* Goal – Given a number, return its value in binary.
* Comments
 * Learned that you can call an Enumerable method without a block, and essentially combine the functionality of two methods. 
 * Contains syntax for the ternary `?` operation.

#####assignment 17: accumulate
* Goal – Given a collection and an operation to perform on each element of the collection, return the resulting collection.
* Comments
 * Had to monkey patch class `Array`.
 * `yield` method useful for applying the block manipulation to the element. 

#####assignment 18: sum-of-multiples
* Goal – Given a number, calculate the sum of all multiples of 3 or 5 up to but not including that number. Expand this to work for any user-specified multiples.
* Comments
 * Use a `Set` to contain information without duplicates.
 * Arguments can be made optional by preceding them with a `*`.

#####assignment 19: grade-school
* Goal – Write an archiving program that keeps track of students' names and the grade that they are in.
* Comments
 * `sort` method useful for organizing lists

#####assignment 20: series
* Goal – Given a string of digits and a number `n`, return all possible consecutive number series of length `n` contained in that string. 
* Comments
 * `map` method useful for calling a method on each element in a large collection of values.

#####assignment 21: phone-number
* Goal – Clean up a user-entered phone number.
* Comments
 * `=~` is shorthand for a regex `scan`.
 * `slice` method useful for removing a char.

#####assignment 22: prime-factors
* Goal – Compute the prime factors of a given natural number.
* Comments
 * `redo` allows you to repeat re-call a block using the same element.
 * `break` allows you to jump out of a block when a certain condition is met.

#####assignment 23: strain
* Goal – Implement the `keep` and `discard` methods. Given a collection and a condition, `keep` returns a new collection containing all the elements that make the condition true, and vice versa for `discard`.
* Comments
 * Had to monkey patch class `Array`.
 * You can 'pass' a block as an argument using `def function(&block)` and then refer to it using `block.call(element)`.

#####assignment 24: etl
* Goal – Transform the legacy data format (point value => letters) to the new format (letter => point value).
* Comments
 * `flatten` method is useful for extracting all data from nested arrays into the same level.

#####assignment 25: trinary
* Goal – Given a trinary number, return its value in base 10.
* Comments
 * Took a very similar approach as I did in assignment 16 (binary).

#####assignment 26: beer-song
* Goal – Write a program that will output the lyrics of the "99 bottles of beer on the wall" song.
* Comments
 * Not difficult but this could be a lot cleaner and refactored into multiple methods. Will likely return to this later.

#####assignment 27: space-age
* Goal – Write a program that, given an age in seconds, calculates how old someone is in terms of a given planet's solar years.
* Comments
 * `to_f` converts to type `float`, which is needed for precise division
 * `attr_accessor` allows access to particular variables within the object