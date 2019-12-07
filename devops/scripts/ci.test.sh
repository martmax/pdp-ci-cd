#! /bin/bash

function lintApps() {
   arr=("$@")
   for i in "${arr[@]}";
      do
          if ./devops/scripts/check-target-changes.sh $i; then ./devops/scripts/ci.run-target.test.sh $i; else echo "$i app - IS NOT BEING CHANGED"; fi
      done

}


lintApps "${$APPS[@]}"
