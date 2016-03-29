# DNSMasq-in-a-Box
A [shipit](https://github.com/padthaitofuhot/shipit)-ized dnsmasq container for whatever needs doing.

**Does not currently support PXE booting** because I haven't implemented it yet. Feel free to submit a PR against `box/hostconfig.sh` with whatever gets the job of adding  bootfiles for your favorite distro and I'll work on getting it incorporated.

# How?
```
$ git clone https://github.com/padthaitofuhot/dnsmasq-in-a-box
$ cd dnsmasq-in-a-box
$ sudo ./shipit.sh
```

# What's in the box?
* DNSMasq DHCP and DNS
* Plays nicely with unbound-in-a-box
