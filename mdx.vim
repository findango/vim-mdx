" Vim syntax file
" Language:     MDX (MultiDimensional eXpressions)
" Maintainer:   Finlay Cannon <fin AT finlaycannon DOT com>
" Last Change:  26 Feb 2008

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
    syntax clear
elseif exists("b:current_syntax")
    finish
endif

syn case ignore

" The MDX reserved words, defined as keywords.
syn keyword mdxSpecial false null true

" Functions
syn keyword mdxKeyword absolute actionparameterset addcalculatedmembers after
syn keyword mdxKeyword aggregate all allmembers ancestor ancestors asc
syn keyword mdxKeyword ascendants average axis basc bdesc before
syn keyword mdxKeyword before_and_after bottomcount bottompercent bottomsum by
syn keyword mdxKeyword cache calculationcurrentpass calculationpassvalue
syn keyword mdxKeyword cellformulasetlist chapters children closingperiod
syn keyword mdxKeyword coalesceempty column columns correlation count cousin
syn keyword mdxKeyword covariance covariancen createpropertyset
syn keyword mdxKeyword createvirtualdimension crossjoin current currentcube
syn keyword mdxKeyword currentmember default_member defaultmember desc
syn keyword mdxKeyword descendants description dimension dimensions distinct
syn keyword mdxKeyword distinctcount drilldownlevel drilldownlevelbottom
syn keyword mdxKeyword drilldownleveltop drilldownmember drilldownmemberbottom
syn keyword mdxKeyword drilldownmembertop drilluplevel drillupmember empty 
syn keyword mdxKeyword error except excludeempty extract filter firstchild
syn keyword mdxKeyword firstsibling for freeze generate group grouping head
syn keyword mdxKeyword hidden hierarchize hierarchy ignore iif includeempty
syn keyword mdxKeyword index intersect isancestor isempty isgeneration isleaf
syn keyword mdxKeyword issibling item lag lastchild lastperiods lastsibling
syn keyword mdxKeyword lead leaves level levels linkmember linregintercept
syn keyword mdxKeyword linregpoint linregr2 linregslope linregvariance
syn keyword mdxKeyword lookupcube max measure median members membertostr min
syn keyword mdxKeyword mtd name nametoset nest nextmember no_allocation
syn keyword mdxKeyword no_properties non nonemptycrossjoin not_related_to_facts
syn keyword mdxKeyword openingperiod pages parallelperiod parent pass
syn keyword mdxKeyword periodstodate post predict prevmember properties
syn keyword mdxKeyword property qtd rank recursive relative rollupchildren root
syn keyword mdxKeyword rows sections self self_and_after self_and_before
syn keyword mdxKeyword self_before_after settoarray settostr solve_order sort
syn keyword mdxKeyword stddev stddevp stdev stdevp storage
syn keyword mdxKeyword stripcalculatedmembers strtomember strtoset strtotuple
syn keyword mdxKeyword strtoval strtovalue subset sum tail this
syn keyword mdxKeyword toggledrillstate topcount toppercent topsum totals tree
syn keyword mdxKeyword tupletostr type union unique uniquename use
syn keyword mdxKeyword use_equal_allocation use_weighted_allocation
syn keyword mdxKeyword use_weighted_increment username validmeasure value var
syn keyword mdxKeyword variance variancep varp visual visualtotals wtd ytd

" Operators
syn keyword mdxOperator and is not or xor

" Statements
syn keyword mdxStatement action alter as calculate calculation calculations call
syn keyword mdxStatement case cell clear create cube drillthrough drop end
syn keyword mdxStatement existing from global if member on refresh scope select 
syn keyword mdxStatement session set subcube update where with

" Strings and characters
syn region mdxString    start=+"+  skip=+\\\\\|\\"+  end=+"+
syn region mdxString    start=+'+  skip=+\\\\\|\\'+  end=+'+

" Numbers
syn match mdxNumber     "-\=\<\d*\.\=[0-9_]\>"

" Comments
syn region mdxComment   start="/\*"  end="\*/" contains=mdxTodo
syn match mdxComment    "--.*$" contains=mdxTodo
syn match mdxComment    "//.*$" contains=mdxTodo

syn sync ccomment mdxComment

" TODOs
syn keyword mdxTodo TODO FIXME XXX DEBUG NOTE

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_mdx_syn_inits")
  if version < 508
    let did_mdx_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink mdxComment	Comment
  HiLink mdxKeyword	mdxSpecial
  HiLink mdxNumber	Number
  HiLink mdxOperator	mdxStatement
  HiLink mdxSpecial	Special
  HiLink mdxStatement	Statement
  HiLink mdxString	String
  HiLink mdxTodo	Todo

  delcommand HiLink
endif

let b:current_syntax = "mdx"

