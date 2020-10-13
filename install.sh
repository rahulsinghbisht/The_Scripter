#!/bin/bash                                                                                                        
                                                                                                                   
echo('Installing Stabilize Shell Dependencies')                                                                    
                                                                                                                   
apt-get install xdotool                                                                                            
sudo apt-get install xautomation                                                                                   
                                                                                                                   
echo('Installing SSH Cracker Dependencies')                                                                        
                                                                                                                   
apt-get install john -y                                                                                            
                                                                                                                   
echo('Installing Hash Cracker Dependencies')                                                                       

pip3 install futures
pip3 install argparse
pip3 install requests

