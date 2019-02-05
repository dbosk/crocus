Date: Thu, 31 May 2018 20:19:45 +0200

Salut again, I went through it but I skipped some of the nitty-gritty on
distance bounding and Schnorr, not my field and I ain't got time :p
I scanned the paper with tons of graffitis on it, sorry in advance, but
I put my big comments in this mail. Typing is easier :)

I really like the idea, I think it could fit at an A+ conf but I'm
waiting for the eval to be sure it will pass, because I know they're
going to be nitpicky. I talk about blockchain evaluation below.

===== Co-authority
A design problem that limits PRIMO is the identity
management/certification authority. I remember we talked about this and
having an authority we don't need to trust is hard as fuck to say the
least. The best I've seen is a co-authority, I saw it proposed from the
same people that did OmniLedger, the EPFL team with Bryan Ford.
Omniledger is built upon a co-authority but the very fact of
distributing unique keys to people can be done via proof of personhood
[6] (short paper). It simply states that people must be physically
present at a certain time and place to receive a key, and that prevents
Sypils, and you can have parallel events for more keys. It's basic but I
haven't seen better, and it doesn't need central authorities.
The co-authority in omniledger performs collective signing [7] to
produce blocks.

You could maybe say somewhere that you could use a co-authority with
proof-of-personhood to have a CA, it's a possible enhancement over
centralized authority.

===== Ledger vs blockchain
About the paper itselft, tt would be good to distinguish a ledger (the
abstraction) from a blockchain (an implementation of a ledger using a
specific data structure).
The term DLT for Distributed Ledger Technologies seem to be the one
gaining consensus, it regroups both decentralized and centralized
systems. Typically deploying a proof-of-work blockchain in a centralized
setup is overkill, a strongly consistent database (zookeeper) with a
consensus mechanism (PBFT) is enough.
So it would be good to say that you need a ledger, or even a
decentralized legder, for your time-stamping service and say that
blockchains could fit. Look at the title and abstract of omniledger [5]
that you mention, they only use blockchain as a keyword.

I added ref [47] on service oriented sharding for blockchains, it's
called Aspen, by good researchers from the domain, and it fits perfectly
with your requirements. Short paper @ FC17 [3] with pdf [4].

If you have the extra month, I could propose a few lines for Sec 5F when
you describe the TS service with a blockchain.

===== Eval
For the blockchain part, there is only one thing to evaluate, it's the
throughput of the chain. It would be good to give an example/upper
bound, by using a real life protest size, of the number of commitments
that will be put in the chain. What happens if there are 500k
participants in parallel protests, how many participation proof and
witnesses are committed? Using a cutting-edge ledger (few thousands/s),
how long does it take? I think it's important since since it says that
participants should commit ASAP to the chain, and you clearly will have
peaks of usages of the stamping service which shouldn't limit the
usability of PRIMO.

===== Half-related work
I saw a postdoc offer a while ago on blockchains for voting systems from
people at the university of Surrey. Offer is offline unfortunately, but
the work would have been with François Dupress [1] and Véronique Cortier
[2]. Cortier had papers on voting at S&P 2015, 2016, 2017 so maybe it's
nice related work since voting is about counting people too. Her
systemization of knowledge from 2016 could be nice (haven't read any).

[1] http://fdupress.net/publication/index.html
[2] https://members.loria.fr/VCortier/files/Publications/
[3] https://link.springer.com/chapter/10.1007/978-3-319-70972-7_22
[4] https://arxiv.org/abs/1611.06816
[5] https://eprint.iacr.org/2017/406
[6] https://ieeexplore.ieee.org/abstract/document/7966966/
[7] https://ieeexplore.ieee.org/abstract/document/7546521/
[8] https://ieeexplore.ieee.org/document/7546535/

