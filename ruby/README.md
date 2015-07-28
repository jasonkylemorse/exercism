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

#####assignment 28: anagram
* Goal – Write a program that, given a word and a list of possible anagrams, selects the correct sublist.
* Comments
 * Apparently case must match at the same char index (ex: Orchestra & Carthorse). That's why I wrote the `case` method and used it in line 17. 
 * As seen before in assignment 20, you can make a shorthand `map` call as follows: `map(:&downcase)`.


#####assignment 29: binary-search-tree
* Goal – Write a program that inserts numbers and searches in a binary tree.
* Comments
 * At first I made a separate class file to represent a `Node` object. Later realized how much more sense it makes to simply nest `Bst` objects onto the left and right branches of the parent.
 * Stole the `each` function from the problem's solution. Still not entirely sure how `&block` as an argument works. I do understand conceptually that this performs an in-order traversal of the tree but can't find any good sources at the moment.

#####assignment 30: crypto-square
* Goal – Implement the classic method for composing secret messages called a square code.
* Comments
 * It's much easier to just normalize the ciphertext within the same method, but I had to leave `ciphertext` in there to make all the tests pass. Normalizing just involves adding spaces, so it makes more sense to add these spaces in while looping through the chars in the first place.
 * `chop` method is useful for removing the final char of a string.
 * `nil?` predicate is more idiomatic than `if x == nil`.
 * `each_slice(x)` method is useful for splitting a string into segments of length `x`.
 * `ceil` method is useful for rounding up to the next integer.
 * Remember that `each` only iterates through a number of elements. If you want to actually manipulate the data, use `map`. (Spent way too long hung up on that.)


#####assignment 31: clock
* Goal – Implement a clock that handles times without dates. You should be able to add and subtract minutes to it. Two clocks that represent the same time should be equal to each other.
* Comments
 * `Time` class made this very nice. `strftime` is really useful because it lets you print time in pretty much any format.
 * You can implement your own versions of `+`, `-`, `==`, etc. without monkey patching.
 * You can force initialization if the user doesn't create objects with `Class.new` by simply calling `new` in whatever function they call first.

#####assignment 32: acronym
* Goal – Help generate some jargon by writing a program that converts a long name
like Portable Network Graphics to its acronym (PNG).
* Comments
 * Spent most time on this one coming up with the proper regex (needed to account for words like 'HyperText', which contain an internal capital letter).
 * `collect` method is a cleaner way of doing something like `result = ''` and then appending to `result` during each iteration of an enumerable object.

#####assignment 33: scrabble-score
* Goal – Write a program that, given a word, computes the scrabble score for that word.
* Comments
 * `gsub` method useful for replacing all matches in a string with something else.

#####assignment 34: nucleotide-count
* Goal – Given a DNA string, compute how many times each nucleotide occurs in the string.
* Comments
 * Not much new here.
 * `histogram` method wasn't recognized until I rebuilt the program with an initializer.

#####assignment 35: hexadecimal
* Goal – Write a program that will convert a hexadecimal number, represented as a string (e.g. "10af8c"), to its decimal equivalent using first principles.
* Comments
 * Same approach I used in binary and trinary. This time I used a hash to store values for `0-9a-f` since there are letters in base 16. 

#####assignment 36: say
* Goal – Write a program that will take a number from 0 to 999,999,999,999 and spell out that number in English.
* Comments
 * This was pretty difficult mainly because there were many scenarios to take into account. For example, preventing things like: `101` --> `one hundred zero one`. Almost all aggravations involved `zero` messing things up, actually.
 * The way I interweave billion, million, and thousand into the correct spots is really gross. I want to come back to this and make it nicer. It's also too complex according to a `Rubocop` analysis.
 * Also, based on the `Rubocop` analysis, the branch condition size is too large for `translate` and `group_of_3`. Should come back to this. 

#####assignment 37: meetup
* Goal – Calculate the date of meetups. Typically meetups happen on the same day of the week. Examples are: the first Monday, the third Tuesday, the Wednesteenth, the last Thursday.
* Comments
 * `wday` method useful for assigning a numerical value to each weekday (0-6 -> Sunday-Saturday).
 * Cyclomatic complexity of `day` is too high, but I'm not sure how I could condense that method while still maintaining readability.

#####assignment 38: queen-attack
* Goal – Write a program that positions two queens on a chess board and indicates whether or not they are positioned so that they can attack each other. In the game of chess, a queen can attack pieces which are on the same
row, column, or diagonal.
* Comments
 * This contains a good example of multi-line strings.
 * There should be a better way to check diagonals. If the queens are of equal distance from the center of the diagonal, then the absolute value of `black[1] - black[0]` should equal the absolute value of `white[1] - white[0]`. This seems like a good way to check but it doesn't account for all possiblities--for example [1, 3] and [2, 2]. Can they ever be right next to each other like that? I don't know chess :( (so anyway, right now those methods are wasteful).

#####assignment 39: palindrome-products
* Goal – Write a program that can detect palindrome products in a given range.
* Comments
 * Description was really vague so I cheated on this one. Makes sense after looking at the solution.