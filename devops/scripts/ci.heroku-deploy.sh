if ./devops/scripts/check-target-changes.sh $1; then ./devops/scripts/ci.heroku-deploy-target.sh $1; else echo "$1 - IS NOT BEING CHANGED"; fi
