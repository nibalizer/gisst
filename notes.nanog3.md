Building a Scalable Telemetry Collection Pipeline using Big-Data Approach
=========================================================================

Petr Lapukhov, Microsoft


Takes a lot of data, from iBGP and snmp, about the internal network and moves it into microsofts version of hadoop


A Fresh Look At Scalable Forwarding Through Router FIB Caching
==============================================================


Kaustubh Gadkari, Colorado State University


global rib directly affects fib size


why cache

  - performance

  - cost

  - reduces es memory bandwidth required for fib access


caching can hide a more specific route

solve this by explicitly dividing into subnets and putting all into the cache

only increase of about 6.5%

caching works

cache expiry algorithm is open to exploration

  right now most popular prefixes stay in the cache

  can attack the cache/network by trying to move popular prefixes out of the cache

Lightning
=========

DNS udp ANY requests
====================


attackers use reflection to use your dns servers to participate in DDoS

solutions:

  adding infra

  RRL

  refuse to do udp any (dns provtocol allows you to refuse)
    
    the idea that this is abuesd more than used


udp based any uses

domain name pre-devlegation checks

other stuff


they want to start the conversation about maybe turning it off, knowing there are some earnest uses of it

should we turn off udp on the internet? only dns and ntp use it right....



Clound networks
===============

cloud networks pretty cool

use mpls vpn to link DCs


Assessing IPv6 Adoption
=======================


Datasets woot

more people are using ipv6


Arin Update
===========

John Curran - President and CEO

They still have ipv4 space

2.60 /8s remain

250 requests for ipv4 per month

Allocation spiked in may 27,000 /24s issued

jan - allocated 1,448 /24s

about 60 requests/month for ipv6 addrs

linear increase in ipv6 requets

ipv4 addr transfer market

transfers why:

  bankruptcy related

  large unutilized blocks

  inter-RIR ipv4 transfers

  ASN transfers

why arin says no sometimes

  if you try to transfer it to someone who cant use it
  
  requests to transfer by not the actual registrant

  requests to transfer block sizes smaller than the minimum

  requests to transfer blocks larger than needed by recipient


APNIC sent us 6 or 7 blocks

There are transfer facilitators

  arin has a list



























