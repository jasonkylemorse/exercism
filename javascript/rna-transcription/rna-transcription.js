// file: rna-transcription.js (assignment 4)
// author: Jason Morse
// date: 12/24/2015
//

var DnaTranscriber = function() {
};

var toRnaMap = {G: 'C', C: 'G', T: 'A', A: 'U'};
var toDnaMap = {C: 'G', G: 'C', A: 'T', U: 'A'};

DnaTranscriber.prototype.toRna = function(dna) {
	rna = '';
	for (var i = 0; i < dna.length; i++) {
		rna += toRnaMap[dna.charAt(i)];
	}
	return rna;
}

DnaTranscriber.prototype.toDna = function(rna) {
	dna = '';
	for (var i = 0; i < rna.length; i++) {
		dna += toDnaMap[rna.charAt(i)];
	}
	return dna;
}

module.exports = DnaTranscriber;