#!/bin/bash

NOPERMISSION="0 = No Permission ( - )"
EXECUTE="1 = Execute ( x )"
WRITE="2 = Write ( w )"
READ="4 = Read ( r )"

ZERO="0 = ---"
ONE="1 = --x"
TWO="2 = -w-"
THREE="3 = -wx"
FOUR="4 = r-"
FIVE="5 = r-x"
SIX="6 = rw-"
SEVEN="7 = rwx"

USER1="chmod +rwx FILE 	to add permissions."
USER2="chmod -rwx DIRECTORY 	to remove permissions."
USER3="chmod +x FILE 		to allow executable permissions."
USER4="chmod -wx FILE 		to take out write and executable permissions."

GROUP1="chmod g+w FILE"
GROUP2="chmod g-wx FILE"
GROUP3="chmod o+w FILE"
GROUP4="chmod o-rwx DIRECTORY"

GROUP5="chmod ugo+rwx DIRECTORY 	to give read, write, and execute to everyone."
GROUP6="chmod a=r DIRECTORY 		to give only read permission for everyone."

CHANGE1="chgrp GROUP FILE"
CHANGE2="chgrp GROUP DIRECTORY"

OWNER1="chown USER FILE"
OWNER2="chown USER DIRECTORY"
OWNER3="chown -R USER:GROUP /home/USER/DIRECTORY"

NUMERIC1="chmod 777 DIRECTORY 	will give read, write, and execute (r,w,x) permissions for everyone."
NUMERIC2="chmod 700 DIRECTORY 	will give read, write, and execute permissions for the user only."
NUMERIC3="chmod 327 DIRECTORY 	execute(3) permission for user, w(2) for the group, and rwx(7) for users."



echo ".·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.

To change a directory's permissions in Linux, use the following:"

echo "
${USER1}
${USER2}
${USER3}
${USER4}
"

echo 'Note that “r” is for read, “w” is for write, and “x” is for execute. 
This only changes the permissions for the owner of the file.
'
echo '.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.

The command for changing directory permissions for group owners is similar,
but add a “g” for group or “o” for users:'

echo "
${GROUP1}
${GROUP2}
${GROUP3}
${GROUP4}
"

echo 'To change directory permissions for everyone,
use “u” for users, “g” for group, “o” for others, and “ugo” or “a” (for all).'

echo "
${GROUP5}
${GROUP6}
"

echo ".·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.

Issuing these commands change or assign groups to files and directories in Linux. 

${CHANGE1}
${CHANGE2}
Note that the group must exit before you can assign groups to files and directories.
"

echo ".·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.

Another helpful command is changing ownerships of files and directories in Linux:

${OWNER1}
${OWNER2}

These commands will give ownership to someone, but all sub files and directories still belong to the original owner.
You can also combine the group and ownership command by using:

${OWNER3}

This command gives someone the ownership of the directory tsfiles, and all files and subfolders.
The -R stands for recursive, which transfers ownership of all sub directories to the new owner.
"

echo '.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.

You may need to know how to change permissions in numeric code in Linux.
To do this you use numbers instead of “r”, “w”, or “x”:'

echo "
${NOPERMISSION}
${EXECUTE}
${WRITE}
${READ}
"

echo "Basically, you add up the numbers depending on the level of permission you want to give."

echo "${ONE}
${TWO}
${THREE}
${FOUR}
${FIVE}
${SIX}
${SEVEN}
"

echo "[ Example ]
${NUMERIC1}
${NUMERIC2}
${NUMERIC3}
"

echo ".·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.·.

As you can see, there are several options when it comes to permissions.
You have the capability to dictate usability among users.
While it may be easier to just give all permission to everyone, it may end up biting you in the end. So choose wisely."

exit
