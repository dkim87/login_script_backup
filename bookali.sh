#!/bin/sh

# how to open a pdf with a specific page. not used quite often anymore.
alias skimpage="osascript ~/runtime_config/mac/skim/pdfpage.scpt"
alias skimp="osascript ~/runtime_config/mac/skim/pdfpage.scpt"

if [[ $platform == "macos" ]]; then
    alias open_pdf="open"
    open_pdf() { open "$@" }
elif [[ $platform == "linux" ]]; then
    open_pdf() {
        okular "$@" &
    }

else
    echo "warning: open_pdf not defined yet."
fi

#####
alias hw='skimp ~/Downloads/hs-homework.pdf 1'

# econ
econdir=~/books/econ

## econometrics
alias econometricsdir='cl ~/books/econ/econometrics'

## exam
alias econometrics_exam_dir='~/courses/econ468/'


## dummies
alias econometrics_dummie='open_pdf ~/books/econ/econometrics/dummies/dummies.pdf'
alias dummie='econometrics_dummie'

##### Ben Lambert videos
alias econometrics_videos='open_pdf -a "/Applications/Google Chrome.app" "https://www.youtube.com/watch?v=M_5SLG7sUa0&index=1&list=PLwJRxp3blEvZyQBTTOMFRP_TDaSdly3gU"'
alias econometrics_videos_list='oac "https://www.youtube.com/playlist?list=PLwJRxp3blEvZyQBTTOMFRP_TDaSdly3gU"'
alias econometrics_progress='https://www.youtube.com/watch?v=Hi5EJnBHFB4&list=PLwJRxp3blEvZyQBTTOMFRP_TDaSdly3gU&index=15'
alias progress='econometrics_progress'

alias econometrics_videos_asymptotic='oac "https://www.youtube.com/playlist?list=PLwJRxp3blEvZBAn3bwAAtdJqotRPBWBlP"'
alias econometrics_videos_asymptotic_progress='oac "https://www.youtube.com/watch?v=4QAeBJVn9WI&list=PLwJRxp3blEvZBAn3bwAAtdJqotRPBWBlP&index=8"'

## modu videos
alias instrument_variable_videos='oac "https://www.youtube.com/playlist?list=PL1M5TsfDV6VsE11CCeMuBL0owBpwp4xru"'

## notes
alias econometrics_notes='$myvi ~/Google\ Drive/econometrics_notes.md'
alias econometrics_questions='$myvi ~/Google\ Drive/econometrics_questions.md'

### stock book
stockdir=~/books/econ/econometrics/stock
alias stock='open_pdf $stockdir/stock3rdUpdate.pdf'
alias stockcopy='open_pdf $stockdir/intro.pdf'
alias stockNoUpdate='open_pdf $stockdir/stock_intro_3rd.pdf'
alias stockNoUpdateCopy='open_pdf $stockdir/noupdate.pdf'
alias stockSolution='open_pdf $stockdir/solution.pdf'
alias stockall='stock; stockcopy; stockNoUpdate; stockSolution; stockNoUpdateCopy;'

# comp
compdir=~/books/comp
alias compdir='cl $compdir'
## langauges
alias tcpl="open_pdf ~/books/comp/c-cpp/TCPL/TCPL-c89.pdf"

## functional
alias clojure="skimp ~/Google\ Drive/books/comp/clojure-for-the-brave-and-true.pdf 1"
alias lol="open_pdf ~/Google\ Drive/books/comp/lisp-family/land-of-lisp.pdf"

## compiler + assembly
alias compiler='open_pdf ~/books/comp/compiler/aho.pdf'
alias assem="open_pdf ~/Google\ Drive/books/comp/assembly-language-step-by-step_new.pdf"
alias assem="open_pdf ~/books/comp/assembly-language/assembly-language-step-by-step_new.pdf"

## bibles
alias csapp="open_pdf ~/Google\ Drive/books/comp/bibles/csapp/csapp-bryant-2nd.pdf"
alias csapp3="open_pdf ~/books/comp/bibles/csapp/3rd-scanned/csapp3.pdf"

alias csappdir="cl ~/Documents/books/csapp/"
alias sicp="skimp ~/Google\ Drive/books/comp/lisp-family/sicp.pdf 1"
alias sicp_easy="open_pdf ~/books/comp/bibles/sicp/sicp_easyread.pdf"
alias sicp_playlist='open_pdf -a "/Applications/Google Chrome.app" "https://www.youtube.com/playlist?list=PLE18841CABEA24090"'
alias sicp_videos='open_pdf -a "/Applications/Google Chrome.app" "https://www.youtube.com/watch?v=2Op3QLzMgSY&index=1&list=PLE18841CABEA24090"'

## c
alias cmacro="open_pdf ~/books/comp/gcc_c_preprocessor.pdf"

## reverse engineer
alias reveng="open_pdf ~/books/comp/RE/reverse-beginner-free.pdf"

alias coding_club="cl ~/books/comp/python/coding_club"
alias lev3="open_pdf $compdir/python/coding_club/"

## lit
litdir=~/books/lit
alias aos='open_pdf $litdir/aos.pdf' # art of seduction

## operating systems
osdir=~/books/comp/OS/
alias operating_systems_three='open_pdf $osdir/os_three.pdf'

## debug
debugdir=~/books/comp/debug
alias aod='open_pdf $debugdir/art_of_debugging.pdf'

