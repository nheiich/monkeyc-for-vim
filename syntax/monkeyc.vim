" Vim Syntax file
" Language: Monkey C (Garmin Connect IQ)
" Maintener: nheiich
" Latest Revision: 26 February 2016
" ref: http://vim.wikia.com/wiki/Creating_your_own_syntax_files#Install_the_syntax_file
" ref: syntax/javascript.vim
"

if exists("b:current_syntax")
	finish
endif




syn keyword monkeycStructure class extends
syn keyword monkeycKeywords initialize method invoke weak

syn keyword monkeycConditional	if else
syn keyword monkeycRepeat	while for do in
syn keyword monkeycBranch	break continue
syn keyword monkeycOperator	new delete instanceof has and or
syn keyword monkeycOperator	using as module
syn keyword monkeycType		const final
"syn keyword monkeycType		Array Boolean Date Function Number Object String RegExp
syn keyword monkeycStatement	return with
syn keyword monkeycBoolean	true false
syn keyword monkeycNull		null
syn keyword monkeycIdentifier	self me var 
syn keyword monkeycException	try catch finally throw
"syn keyword monkeycGlobal	
syn keyword monkeycReserved	this let typeof
syn keyword monkeycReserved	stillAlive get
syn keyword monkeycMember	System println
syn keyword monkeycModule	Toybox Lang Application Graphics WatchFace WatchUi
syn keyword monkeycModule	ActivityMonitor Time Gregorian Math AppBase Activity ActivityRecording
syn keyword monkeycMember	setColor drawLine drawText fillPolygon fillRectangle getFontHeight
syn keyword monkeycMember	format toNumber size getWidth getHeight FORMAT_SHORT FORMAT_MEDIUM
syn keyword monkeycMember	getSystemStats loadResource phoneConnected
syn keyword monkeycMember	drawBitmap getTextWidthInPixels .getCoordinates
syn keyword monkeycMember	onStart onStop getInitialView onEnterSleep onExitSleep compute onLayout
syn keyword monkeycMember	getInfo stepGoal steps getHistory getCoordinates
syn keyword monkeycMember	getClockTime getDeviceSettings is24Hour

syn keyword monkeycConstant	TEXT_JUSTIFY_RIGHT TEXT_JUSTIFY_CENTER TEXT_JUSTIFY_LEFT
syn keyword monkeycConstant	COLOR_DK_GRAY COLOR_LT_GRAY COLOR_TRANSPARENT COLOR_BLUE COLOR_RED
syn keyword monkeycConstant	COLOR_YELLOW COLOR_DK_GREEN COLOR_BLACK COLOR_WHITE COLOR_GREEN 
syn keyword monkeycConstant	COLOR_DK_BLUE COLOR_DK_RED COLOR_PINK COLOR_ORANGE
syn keyword monkeycConstant	UNIT_METRIC
syn keyword monkeycConstant	FONT_XTINY FONT_TINY FONT_SMALL FONT_NUMBER_THAI_HOT FONT_MEDIUM
syn keyword monkeycConstant	PI


" reserved
syn keyword monkeycReserved	switch case native
syn keyword monkeycLabel	case default
"syn keyword monkeycReserved	abstract boolean byte char double enum export float goto implements import int interface long native package private protected public short static super synchronized transient volatile this let


" copied & patsted from syntax/javascript.vim

syn keyword javaScriptFunction      function
syn match   javaScriptBraces           "[{}\[\]]"
syn match   javaScriptParens           "[()]"

syn keyword javaScriptCommentTodo      TODO FIXME XXX TBD contained
syn match   javaScriptLineComment      "\/\/.*" contains=@Spell,javaScriptCommentTodo
syn match   javaScriptCommentSkip      "^[ \t]*\*\($\|[ \t]\+\)"
syn region  javaScriptComment	       start="/\*"  end="\*/" contains=@Spell,javaScriptCommentTodo
syn match   javaScriptSpecial	       "\\\d\d\d\|\\."
syn region  javaScriptStringD	       start=+"+  skip=+\\\\\|\\"+  end=+"\|$+	contains=javaScriptSpecial
syn region  javaScriptStringS	       start=+'+  skip=+\\\\\|\\'+  end=+'\|$+	contains=javaScriptSpecial
syn match   javaScriptNumber	       "-\=\<\d\+L\=\>\|0[xX][0-9a-fA-F]\+\>"

"syn region celDescBlock start="{" end="}" fold transparent


syn sync fromstart
syn sync maxlines=100

syn sync ccomment javaScriptComment



"hi def link monkeycDesc        PreProc
"hi def link monkeycNumber      Constant

if version >= 508
  if version < 508
    let did_monkeyc_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink javaScriptComment		Comment
  HiLink javaScriptLineComment		Comment
  HiLink javaScriptCommentTodo		Todo
  HiLink javaScriptFunction		Function
  HiLink javaScriptBraces		Function
  HiLink javaScriptStringS		String
  HiLink javaScriptStringD		String
  HiLink javaScriptNumber		Number

  HiLink monkeycStructure		Structure
  HiLink monkeycConditional		Conditional
  HiLink monkeycRepeat			Repeat
  HiLink monkeycBranch			Conditional
  HiLink monkeycOperator		Operator
  HiLink monkeycType			Type
  HiLink monkeycStatement		Statement

  HiLink monkeycNull			Keyword
  HiLink monkeycBoolean			Boolean
  HiLink monkeycIdentifier		Identifier
  HiLink monkeycException		Exception
  HiLink monkeycConstant		Label
  HiLink monkeycLabel			Label
  HiLink monkeycMember			Keyword
  HiLink monkeycModule			Keyword

  HiLink monkeycKeywords		Keyword
  HiLink monkeycReserved		Keyword

  delcommand HiLink
endif


let b:current_syntax = "monkeyc"

" vim: ts=8
