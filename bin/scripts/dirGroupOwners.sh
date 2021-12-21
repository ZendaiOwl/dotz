#!/bin/bash

GROUP1="chmod g+w FILE"
GROUP2="chmod g-wx FILE"
GROUP3="chmod o+w FILE"
GROUP4="chmod o-rwx DIRECTORY"

echo '.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.

The command for changing directory permissions for group owners is similar,
but add a “g” for group or “o” for users:'

echo "
${GROUP1}
${GROUP2}
${GROUP3}
${GROUP4}
"

exit
