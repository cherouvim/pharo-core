update30564
	"self new update30564"
	self withUpdateLog: '12073 Writing jpeg files to disk
	https://pharo.fogbugz.com/f/cases/12073
	
12051 Add MenuModels
	https://pharo.fogbugz.com/f/cases/12051
	
7021 Remove Time dateAndTimeNow
	https://pharo.fogbugz.com/f/cases/7021
	
12105 Senders does not work in FinderUI from the right click menu
	https://pharo.fogbugz.com/f/cases/12105'.
	self loadTogether: self script220 merge: false.
	SpecInterpreter hardResetBindings.
.
	self flushCaches.