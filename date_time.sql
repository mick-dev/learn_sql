/* Date Time >> source: https://www.sqlite.org/lang_datefunc.html

date and time functions
	date(timestring, modifier, modifier, ...)
	time(timestring, modifier, modifier, ...)
	datetime(timestring, modifier, modifier, ...)
	julianday(timestring, modifier, modifier, ...)
	strftime(format, timestring, modifier, modifier, ...)

strftime() substitutions:
	%d		day of month: 00
	%f		fractional seconds: SS.SSS
	%H		hour: 00-24
	%j		day of year: 001-366
	%J		Julian day number
	%m		month: 01-12
	%M		minute: 00-59
	%s		seconds since 1970-01-01
	%S		seconds: 00-59
	%w		day of week 0-6 with Sunday==0
	%W		week of year: 00-53
	%Y		year: 0000-9999
	%%		%

terms of strftime():
	Function			Equivalent strftime()
	date(...)			strftime('%Y-%m-%d', ...)
	time(...)			strftime('%H:%M:%S', ...)
	datetime(...)		strftime('%Y-%m-%d %H:%M:%S', ...)
	julianday(...)		strftime('%J', ...)

A time string formats:
	YYYY-MM-DD
	YYYY-MM-DD HH:MM
	YYYY-MM-DD HH:MM:SS
	YYYY-MM-DD HH:MM:SS.SSS
	YYYY-MM-DDTHH:MM
	YYYY-MM-DDTHH:MM:SS
	YYYY-MM-DDTHH:MM:SS.SSS
	HH:MM
	HH:MM:SS
	HH:MM:SS.SSS
	now
	DDDDDDDDDD

Modifiers
	NNN days
	NNN hours
	NNN minutes
	NNN.NNNN seconds
	NNN months
	NNN years
	start of month
	start of year
	start of day
	weekday N
	unixepoch
	localtime
	utc
*/

SELECT date('now');

SELECT STRFTIME('%Y-%m-%d', 'now');

SELECT date('now', '+10 day'); --day or days
SELECT date('now', 'localtime');
SELECT date('now', 'start of year', '+1 years');

SELECT datetime('now');
SELECT DATETIME('now', 'localtime');

SELECT STRFTIME('%S', 'now');
SELECT STRFTIME('%H:%M:%S', 'now');
SELECT STRFTIME('%H:%M:%S', CURRENT_TIME);

SELECT STRFTIME('%s', 'now') - STRFTIME('%s', '1986-10-24 05:10:00');
SELECT STRFTIME('%Y', 'now') - STRFTIME('%Y', '1986-10-24 05:10:00');