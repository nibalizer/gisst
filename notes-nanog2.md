2012 Infrastructure Security Report
===================================

http://www.arbornetworks.com/research/infrastructure-security-report

APT

DDoS attack sizes plateau in Trend Towards complex multi-vector attacks

  2010 100Gig/sec
  2012 60Gig/sec

  HTTP/DNS most common

Data Centers increasingly being victimized

  94% DDoS attacks regularly

Ideology Is Primary DDoS Driver

Mobile Providers continue to be reactive

DNS infra remains Vuln

IPv6 Deployments Quickly Becoming Pervasive
  
  80% of survey respondents already deployed
      (service providers,carriers, network engs)

Operational Security hard - little law enforcement involvement


APT
---

botted or compromised hosts on half of respondents on their internal networks



DDoS
----

4 of top 5 over last 12 months -> DDoS

Next 12 months top 4 perceived threats -> DDoS

5th place is Misconfiguration

100Gig/s -> 2010 highest DDoS

60Gig/s -> Largest DDoS 2012

No need to push beyond this, will fuck anything up

If they needed to - they would.

Also more application layer attacks that can do more dmg with less bandwidth

Number 1 Attack vector -> http

Number 2 Attack vector -> dns

Rise in https attacks

Financial Attacks in Q4
----------------

'old school' DDoS attacks -> compromised PHP, WordPress, Joomla

GET and POSt app layer attacks on HTTP/HTTPS

DNS query app layer attack

Floods on UDP, TCP Syn floods, ICMP and other IP Protocols

Very focused, adaptive, whenever countermeasures were deployed, changed attack


Attack Targets
--------------

e-commerce / business customers are most likely targets

Financial/govt is distant fifth and sixth

media kindof misrepresenting attacks

DDoS hits firewalls highest


Mobile
------

2G 3G LTE

LTE at 52.9%

Very little visibility in the network



DNS
---


81% of respondents run DNS

19% have NO security team

Some visibility


IPv6
----


80% of respondents have ipv6

21% have completed the roll out

Cant blacklist ipv6

IPv4 exhaustion NOT seen as a concert by the majority of respondents

Security in ipv6 stacks not at parity with the ipv4 stack

20-100% growth of ipv6 next year


IPv6 Threats and concerns
-------------------------

Traffic Floods/DDoS

Disparity with ipv4 security


Operational Security Team Headcount
-----------------------------------

25% has no dedicated security team

security team membership down

Attack/Defense Readiness
------------------------

50% of respondents never practice event handling

-not good

- up from last year :)


Law Enforcement Referral
------------------------

50% do not report incidents to law enforcement

Serious burden


Internet Impacts from SuperStorm Sandy
======================================

NYC is a major internet node


Submarine Fiber Optic Cable
===========================

most areas unsaturated

this is because wave division muxers are really really good

30% utilization NY <-> London

10k/month for NY <-> London color

Latin America is the next big source of growth

1-3 pipes to be laid in the next several years

Brazil has high tarrif (100%) on tech

Argentina has lots of red tape


Youtube User Ex
===============

Fuck yea youteeeewb


MPLS HASHING
============


MPLS do not know what type of traffic is going through them(by design)

HASH a packet based on most fields in th header


"what happens when"

ipv6 hash applied to ethernet frame w/ ipv4 TCP


hashing things that arent constant (TCP seq number)


vendors speculating


they might look at first octet


if '4' -> ipv4

if '6' -> ipv6

4 and 6 mac begining mac addrs came out in 2012

in 2010 itf changed system, started giving out random prefixes randomly instead of sequentially

out of order packets is a problem

causes retransmit and slowstart

why do packets arrive out of order

packets that start with 4 or 6 might trick some vendors into applying the wrong hash algorithm

if they hash different, the 'p' router will start sending them out random links

links have different speed "physical length of cable"

MPLS pseudo wire service

Remote peering

6-MAC prevelance on the rise

engineers put 'check mac' on debug list

soultion 1
----------

PW control words can be used, always start with 0, 0 is not a 4 or a 6

control word can take serial numbers, can help with a problem I dont understand, atm was mentioned



solution 2
----------

rfc 6391

fat PWs


solution 3
----------

MPLS entropy labels


rfc 6780


Alternative solutions
---------------------

Better Duck-Typing

improve reliability of the guessing mechanism that P nodes do

- compare length, checksum, etc

More MPLS Ethertypes
--------------------

Currently two Ethertypes used for MPLS

Could create more to identify ethertype

Could fix tcp
-------------

I mean maybe, but probably not

AMS-IX
------

brocade mlx mpls network

no mpls encapsulated ip trafic

only mpls encapustlated ether net traffic

can saefly do 'no load balance speculate mpls ip'

Cisco fixed it
--------------

on asr 9ks 

if started with 6

then check packet length against predicted packet length

wooo



