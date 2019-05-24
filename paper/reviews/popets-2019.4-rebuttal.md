REVIEWER 1:

-- “the authors need to reconsider their blockchain design. It seems like they aim to set up a blockchain only for this application. It is unclear who runs the blockchain and who pays the miners of the transactions. Given that it is likely a small blockchain, it seems like it would be easy for Grace to take it over and prevent the inclusion of proofs. Even if Grace cannot control the blockchain, she might create congestion on the chain that prevents the inclusion of real proofs. An alternative is running the scheme on a public blockchain but that will definitively cost fees participants are probably unwilling to pay.”

No separate blockchain. Transaction fees are a concern, but solvable by using social (or public-permissioned) blockchains (WWF Consensys/Ethereum for fish-provenance), no-fee-blockchains (Steem, IOTA, Nano), or indirection:  pool (+check) proof-shares at, say, NGOs or volunteers who upload proof-share-batches in transactions to public blockchains (Ethereum at 3cents) with privacy by extending anonymous submission (Tor) to the indirection, integrity by the NIZK-proofs, DOS (dropping) potentially by redundancy.  

-- “the proofs are quite informal and mainly just refer to the properties of the anonymous credential scheme”

We are working on formalizing and proving CROCUS. We  currently have model-syntax and some cryptographic games defined. We still need to capture more properties as games before proving the whole. We intend to include this in a long version (beyond page limits of PETS) on arXiv.

-- “The adversarial model is a bit confusing as it does not state adversarial goals and Fig. 1 does not explain the entity A.”

We’ll add objectives and revise the figure. Overhearing all local communications is OK (no proof-shares-to-identities mapping). As established blockchains are international, only a truly global (i.e., international) passive adversary could infer which (home) IP-address (and identity) uploaded a proof share.

REVIEWER 2:

-- “It's not entirely clear that these properties are in fact the right ones to solve the problem the paper purports to solve.”

We used e-voting as a start. Although there is no consensus on properties, we took a widely-accepted formalized set. We added 4.3 to counter the potential attack-surface from interaction-graphs with witnesses, similarly to E-cash, another related, mature concept, and we can likewise map the properties: 
Weak anonymity ~ Pseudonym-unlinkability
Strong anonymity ~ Unlinkability between protests/witnesses
Unforgeability/No double spending ~ Eligibility
Exculpability ~ Verifiability
The building-block properties are motivated in the security analysis; formalization ongoing.  If reviewers identify missing/superfluous properties, we’ll address them.

-- “the paper also postulates a sybil-proof anonymous credential system. While the proposed approach achieves non-linkability across different crowd event, the anonymity set for any participant who contributes to the count is limited to the set of all those who have obtained these credentials. In other words, in order to achieve meaningful privacy for the proposed use case, these credentials need to not just widely available, but also widely issued. That seems like a huge step to simply assume.”

Yes, hence adoption rate examples of the Swedish BankID (98%, ages 21--50) and Estonia’s e-identity (98% of population), which we found encouraging extrapolating to CROCUS.

REVIEWER 3: 

-- “I do not see how untrusted witnesses can lead to a secure outcome, even if there is a large number of them, since there is no reason not to believe that all of them are colluding to inflate the crowd size.” 

Agreed, we also mention that a large-enough collusion either happens in public forums (e.g., Reddit), thus detectable by or told to any verifier, or secret forums --- still hard to keep completely secret. While potentially useful, we do not know without research.

-- “Using trusted witnesses [...] it is hard to scale this approach to large crowds. Since the distance-bounding protocol is not specified in this paper, it is hard to assess its practical limitations, but typical phone-to-phone communications have relatively small range, so to count all participants in a large protest witnesses need to be deployed throughout the protest.”

Agreed, trusted witnesses need to move around or be easily visible to approach. No need to agree on trusted witnesses (though more scalable); one can limit trust to counts using witnesses one trusts. According to [29], a SamsungGalaxy ran Idemix in 153ms in 2014. 3DB-access says the DB part takes < 1ms and can do > 120m (line of sight, max 200m). Then fixed witnesses can cover 45216m^2 (120m radius), which [42] says fit max 137018 protesters. Thus one witness can witness these in 5.8 h, witness 188235 protesters in 8h and thus 5.3 witnesses could witness 1,000,000 protesters in an 8-h-day. More (sets of) witnesses allow for trust variations. 
 
-- “An important question not considered in this paper is deniability.”

As we argue, for verifiability (no double-counting, Sybil-proof) receipt-freeness is inherently impossible: an adversary that can coerce people, could force them to check whether they participated already. Ideas on how to better deal with the verifiability/receipt-freeness conflict would be welcome.

-- “Finally, the paper acknowledges in section 9.1 that the technologies needed to support it [...] are not yet available. It makes some arguments for why this system may be practical in the near future, by extrapolating some results from prior work. This suggests to me that this paper is better suited for a workshop, such as HotPETS, where these speculative ideas can generate discussion, rather than PETS, which typically expects more fully specified and evaluated work.”

We see workshops-vs-conferences more as how mature the research in the paper itself is, not maturity of technologies needed to use the work or closeness to deployment of research results --- that would preclude many theoretical papers from PETS.

