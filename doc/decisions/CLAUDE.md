# ADRs

Always find the next unused number in the sequence before creating an ADR:
= `fd ADR-\\d doc/decisions/ | sort --reverse | cut -d '-' -f 2 | head -n 1` + 1
