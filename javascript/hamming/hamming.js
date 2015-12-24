// file: hamming.js (assignment 3)
// author: Jason Morse
// date: 12/24/2015
//

var Hamming = function() {
};

Hamming.prototype.compute = function(strand1, strand2) {

	// throw exception if lengths don't match
	if (strand1.length != strand2.length) {
		throw new Error('DNA strands must be of equal length.');
	}

	// iterate through chars and increment counter for each discrepency
	var mutations = 0;
	for (var i = 0; i < strand1.length; i++) {
		if (strand1.charAt(i) != strand2.charAt(i)) {
			mutations++;
		}
	}

	return mutations;
}

module.exports = Hamming;