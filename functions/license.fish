function license
  set -l license $argv[1]
  set -l body (curl --silent --header 'Accept: application/vnd.github.drax-preview+json' https://api.github.com/licenses/$license | jq .'body')
  echo -e $body | sed -e 's/^"//' 's/"$//'
end
