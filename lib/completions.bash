_pd_completion()
{
  local cmd cur

  cur=${COMP_WORDS[COMP_CWORD]}
  cmd="${COMP_WORDS[@]: 0:$((${#COMP_WORDS[@]}-1))}"

  case "$cmd" in
    "") COMPREPLY=($(compgen -W "   " -- ${cur})) ;;
    "pd auto-subscription") COMPREPLY=($(compgen -W "create" -- ${cur})) ;;
    "pd component") COMPREPLY=($(compgen -W "create show" -- ${cur})) ;;
    "pd components registry") COMPREPLY=($(compgen -W "show" -- ${cur})) ;;
    "pd components") COMPREPLY=($(compgen -W "registry" -- ${cur})) ;;
    "pd orgs sources") COMPREPLY=($(compgen -W "list" -- ${cur})) ;;
    "pd orgs subscriptions") COMPREPLY=($(compgen -W "list" -- ${cur})) ;;
    "pd orgs") COMPREPLY=($(compgen -W "sources subscriptions" -- ${cur})) ;;
    "pd source events") COMPREPLY=($(compgen -W "delete" -- ${cur})) ;;
    "pd source") COMPREPLY=($(compgen -W "delete event-summaries events update" -- ${cur})) ;;
    "pd sources ") COMPREPLY=($(compgen -W "create" -- ${cur})) ;;
    "pd subscription") COMPREPLY=($(compgen -W "create" -- ${cur})) ;;
    "pd subscriptions") COMPREPLY=($(compgen -W "delete" -- ${cur})) ;;
    "pd users me") COMPREPLY=($(compgen -W "sources subscriptions webhooks" -- ${cur})) ;;
    "pd users") COMPREPLY=($(compgen -W "me" -- ${cur})) ;;
    "pd v1") COMPREPLY=($(compgen -W "workflow" -- ${cur})) ;;
    "pd webhook") COMPREPLY=($(compgen -W "create delete" -- ${cur})) ;;
    "pd workflow") COMPREPLY=($(compgen -W "event-summaries" -- ${cur})) ;;
    "pd") COMPREPLY=($(compgen -W "auto-subscription component components orgs source sources subscription subscriptions users webhook workflow" -- ${cur})) ;;
    *) COMPREPLY=() ;;
	esac
}

complete -F _pd_completion pd
