Date: Mon, 8 Apr 2019 12:43:49 -0400
From: pets19-chairs@petsymposium.org
CC: PoPETs Chairs <pets19-chairs@petsymposium.org>
Subject: [PoPETs 2019.4] Rebuttal phase - Paper #90 "CROCUS:
 privacy-preserving CROwd..."

--------------
===========================================================================
                         PoPETs 2019.4 Review #90A
---------------------------------------------------------------------------
  Paper #90: CROCUS: privacy-preserving CROwd Counting Using Smartphones
---------------------------------------------------------------------------

                      Overall merit: 3. Major Revisions needed
                 Reviewer expertise: 2. Some familiarity
                Reviewer confidence: 2. Medium
                  Relevance to PETS: 3. Directly related to PETs (scope is
                                        not an issue)

                         ===== Paper summary =====

The paper describes a privacy-preserving scheme for counting crowds in protests. The goals include i) hiding the participation of a person in a protest, ii) linking participation in multiple protests, iii) ensure that the count is accurate in the presence of attackers that either aim to increase or decrease the count value. 
The proposed scheme relies on anonymous credentials, which are signed by witnesses near to the participant,  and storing credentials on the blockchain.

                      ===== Comments for author =====

I find the idea quite interesting and the use case is important. It's a nice application of anonymous credential. The authors consider a wide range of adversarial parties, both with regard to increasing and decreasing the count. The paper is well written and contains both a performance evaluation and a security/privacy analysis. I appreciate the section clarifying the limitations. 

However, I believe the authors need to reconsider their blockchain design. It seems like they aim to set up a blockchain only for this application. It is unclear who runs the blockchain and who pays the miners of the transactions. Given that it is likely a small blockchain, it seems like it would be easy for Grace to take it over and prevent the inclusion of proofs. Even if Grace cannot control the blockchain, she might create congestion on the chain that prevents the inclusion of real proofs. An alternative is running the scheme on a public blockchain but that will definitively cost fees participants are probably unwilling to pay. The authors completely ignore these issues, which are important for their solution to work. 

Furthermore, the proofs are quite informal and mainly just refer to the properties of the anonymous credential scheme. It would be great if the authors could be more formal. The adversarial model is a bit confusing as it does not state adversarial goals and Fig. 1 does not explain the entity A. 

I have not read the previous version. It seems to me like the authors addressed the concerns regarding readability and structure. For other concerns, it seems more like they declare various problems to be out-of-scope, which in some cases might be appropriate but especially the lack of resistance against a global passive adversary could be problematic in the sense that protests usually focus on certain regions where someone with the capacity to surveil all communication is more likely than on an international scale. 

Nitpicks:

Definition 4: respectively -> respective 

page9: formula goes into opposite column

===========================================================================
                         PoPETs 2019.4 Review #90B
---------------------------------------------------------------------------
  Paper #90: CROCUS: privacy-preserving CROwd Counting Using Smartphones
---------------------------------------------------------------------------

                      Overall merit: 1. Reject
                 Reviewer expertise: 3. Knowledgeable
                Reviewer confidence: 2. Medium
                  Relevance to PETS: 3. Directly related to PETs (scope is
                                        not an issue)

                         ===== Paper summary =====

The paper proposes a privacy-preserving protocol that permits participants in crowd situations (protests or otherwise) to contribute to a verifiable crowd count without having to reveal their identity in participating in that crowd situation. The approach assumes the presence of observers (who can be partially or fully trusted), and requires centrally issued anonymous credentials.

                      ===== Comments for author =====

This paper assembles a number of known but not necessarily widely deployed building blocks (zero-knowledge proofs, anonymous credentials, distributed ledgers, proof-of-proximity hardware in cell phones) to provide a privacy-friendly solution to the problem of counting crowds verifiably, without having to reveal the identity of the members of these crowds.

Unfortunately, the technical design here - while theoretically plausible - feels like a relatively straightforward combination that ultimately renders a set of interesting, but not unexpected properties. It's not entirely clear that these properties are in fact the right ones to solve the problem the paper purports to solve.

Other than the minor issue that proof-of-proximity hardware isn't yet available in widely deployed phones (the authors make a plausible case that this might change; this reviewer has no way to independently assess that), the paper also postulates a sybil-proof anonymous credential system. While the proposed approach achieves non-linkability across different crowd event, the anonymity set for any participant who contributes to the count is limited to the set of all those who have obtained these credentials. In other words, in order to achieve meaningful privacy for the proposed use case, these credentials need to not just widely available, but also widely issued. That seems like a huge step to simply assume.

I encourage the authors to continue their research, and to explore other application scenarios as well.

===========================================================================
                         PoPETs 2019.4 Review #90C
---------------------------------------------------------------------------
  Paper #90: CROCUS: privacy-preserving CROwd Counting Using Smartphones
---------------------------------------------------------------------------

                      Overall merit: 1. Reject
                 Reviewer expertise: 2. Some familiarity
                Reviewer confidence: 2. Medium
                  Relevance to PETS: 3. Directly related to PETs (scope is
                                        not an issue)

                         ===== Paper summary =====

This paper proposes a verifiable and privacy-preserving system for counting participants in physical protests. Participants use anonymous credentials and a distance-bounding protocol to authenticate their presence to witnesses, who then submit reports to a ledger for being counted.

                      ===== Comments for author =====

This paper attacks an interesting problem; certainly crowd size estimates have been subjects of some disputes in the past, and at the same time privacy is important.

A key concern I have is the reliance on witnesses to authenticate participation. The authors suggest that either trusted witnesses are used or some number of untrusted ones. I do not see how untrusted witnesses can lead to a secure outcome, even if there is a large number of them, since there is no reason not to believe that all of them are colluding to inflate the crowd size.

Using trusted witnesses, on the other hand, has similar pitfalls to the existing approaches, as discussed in the prior work section: it is hard to find witnesses that all opposing factions will trust, and it is hard to scale this approach to large crowds. Since the distance-bounding protocol is not specified in this paper, it is hard to assess its practical limitations, but typical phone-to-phone communications have relatively small range, so to count all participants in a large protest witnesses need to be deployed throughout the protest.

An important question not considered in this paper is deniability. Could the government use the presence of a CROCUS app on your phone be used to implicate a protester? Is there other evidence that the app maintains after the protest that could be used here? As an example, if a government deployed a witness at a protest, later, it could ask you to authenticate to this witness using the same protest ID, and only those who had not authenticated previously would be able to do so.

Finally, the paper acknowledges in section 9.1 that the technologies needed to support it, including a widely deployed anonymous credential system, distance bounding on phones, etc., are not yet available. It makes some arguments for why this system may be practical in the near future, by extrapolating some results from prior work. This suggests to me that this paper is better suited for a workshop, such as HotPETS, where these speculative ideas can generate discussion, rather than PETS, which typically expects more fully specified and evaluated work.

Other comments:
- s2.1 talks about Internet connectivity before / after the protests; it is worth noting that many countries often implement high levels of Internet censorship around politically sensitive times
- s3 "CrowdCount CrowdCount" - duplicated word



