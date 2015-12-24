// file: leap.js (assignment 2)
// author: Jason Morse
// date: 12/24/2015
//

// constructor to create 'Year' objects
var Year = function(year) {
	this.year = year;
};

// define 'isLeap' in the prototype so all 'Year' objects inherit it
Year.prototype.isLeap = function() {
	return ((this.year % 4 == 0) && (this.year % 100 != 0)) || (this.year % 400 == 0);
}

module.exports = Year;