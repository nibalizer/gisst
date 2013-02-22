#!/usr/bin/env python
#this algorithm reverse engineered from 
#http://www.stoacademy.com/tools/stardate.php
#
# python program to convert between stardate and current date
# also explores the stardate conversion algorithm with graphs!
import datetime
import time

#set this to true to see the graph and formula
visualize = False

date_now = datetime.datetime.now()
d = datetime.date(2002,5,27)
t = datetime.time(5,20)
date_start = datetime.datetime.combine(d, t)


#print "secs since ", (date_now - date_start).total_seconds()

stardate = ((((date_now - date_start).total_seconds()/1000.)/60)/5)*0.009513655
#stardate = (date_now - date_start).seconds * (0.009513655 / 30000) 

#print stardate + 8000

unixdates = []
stardates = []


unixdates.append(datetime.date(2013, 1, 1))
stardates.append(90606.63)              
                                        
unixdates.append(datetime.date(2013, 2, 1))
stardates.append(90691.44)              
                                        
unixdates.append(datetime.date(2013, 3, 1))
stardates.append(90768.05)              
                                        
unixdates.append(datetime.date(2013, 4, 1))
stardates.append(90852.75)              
                                        
unixdates.append(datetime.date(2013, 5, 1))
stardates.append(90934.83)              
                                        
unixdates.append(datetime.date(2013, 6, 1))
stardates.append(91019.65)              
                                        
unixdates.append(datetime.date(2013, 7, 1))
stardates.append(91101.73)

unixdates = [ time.mktime(i.timetuple()) for i in unixdates ]

if visualize:
  from matplotlib import *
  from pylab import *

  ion()
  plot(unixdates,stardates, 'g.')
  ylabel(stardates)
  xlabel(unixdates)
  grid(True)
  draw()


  raw_input("return to close")


#verified that the line is linear
# y = mx + b 

m = (stardates[2] - stardates[1]) / (unixdates[2] - unixdates[1])

#y = mx +b
#mx + b = y
#b = y - mx

b = stardates[1] - m*unixdates[1]

if visualize:
  print "stardate = unixdate * {0} + {1}".format(m, b)

#print time.time()
print "Current stardate is: {0}".format(float(time.time()) * m + b)










