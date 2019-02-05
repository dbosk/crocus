Date: Tue, 8 Jan 2019 04:27:06 -0500
From: pets19-chairs@petsymposium.org
Subject: [PoPETs 2019.3B] Rebuttal phase - Paper #55 "From grassroots to
 CROCUSes:..."

===========================================================================
                        PoPETs 2019.3B Review #55A
---------------------------------------------------------------------------
Paper #55: From grassroots to CROCUSes: privacy-preserving CROwd Counting
           Using Smartphones
---------------------------------------------------------------------------

                      Overall merit: 1. Reject
                 Reviewer expertise: 2. Some familiarity
                Reviewer confidence: 2. Medium
                  Relevance to PETS: 3. Directly related to PETs (scope is
                                        not an issue)

                         ===== Paper summary =====

This paper proposes a crowd counting (specifically in sensitive settings like politically motivated protests) scheme utilising smartphones, unique ids, and a distance bounding protocol that is meant to be secure against sybil attacks, count manipulation, and verifiable by the general public and the participants.

                      ===== Comments for author =====

While the paper looks at an interesting and relevant topic: privacy-preserving crowd counting, I am not sold on the scheme that is presented.

The main concerns are:
1) The dependence on unique IDs issued by some government body or, more generically, some central authority that can prevent sybil-type attacks. Basically, the system can not protect against that central authority influencing participation for reasons like a) chilling speech since the national ID in many places is linked to many things necessary for quality of life like credit, housing, banking, and it being linked to protest may well cause harm for the participant and b) the national issuer can just create sybil identities for itself and create counter manifestos and show larger support for their own selves (which is noted in the paper as well).
2) Let's say the sybil resistance above was not already problematic, then can't people then sign a petition using their unique ID to have their vote count for that manifesto online (where they would have to find out about the manifesto in the first place anyway to find out its CID). Why is this not viable?
3) The overly-complex design that assumes as-yet-to-be designed distance bounding protocols, combined with anonymous credentials, and distributed ledgers and yet 
4) Can not defend against an adversary (A2) that the authors themselves present. Indeed, to me it seems that A1 and A2 are arbitrary distinctions and to be actually addressing the problem of protesting against powerful entities (like the government who issues IDs and is the CA, and that can watch you and make examples of people using the crowd counting protocol to chill future participation) is the one that has to be addressed. 

In the current presentation of the scheme I am not sure that it actually provides the stated properties or achieves its goals.

Some other thoughts about this crowd attestation idea. What stops a protest organiser from hiring a smart-phone farm to "participate" in the protest? The scheme doesn't have any way to know where the phones are, and even if it did use location information, the phones can just lie about their locations, and attest each other and then their participation counts. 

What role is the trusted person supposed to play? Trusted by whom? The organiser, the protest target, or the general public who is wondering which side to support? Also, this person can only be witness to a very small fraction of the protesters present, and we already know that you will not be using them to estimate the size of the crowd. So what do they bring?

Also, what is the strength parameter supposed to help with? Is it to ensure that there are sufficiently many witnesses for each participant to ensure they were really there?

===========================================================================
                        PoPETs 2019.3B Review #55B
---------------------------------------------------------------------------
Paper #55: From grassroots to CROCUSes: privacy-preserving CROwd Counting
           Using Smartphones
---------------------------------------------------------------------------

                      Overall merit: 2. Reject and Resubmit
                 Reviewer expertise: 3. Knowledgeable
                Reviewer confidence: 2. Medium
                  Relevance to PETS: 3. Directly related to PETs (scope is
                                        not an issue)

                         ===== Paper summary =====

This paper looks at the problem of estimating the size of crowds at public events like protests and marches.  The goal is to provide a way of measuring the size of a crowd that is robust against adversarial behavior trying to raise or lower the estimate, that protects privacy of the event participants, and that produces results that are publicly verifiable.  

The authors define an event as a group of people at a particular set of locations at particular times for a particular goal.  The authors first define the problem, then They provide a protocol which combines anonymous credentials (to prevent doublecounting parcipants), and a distributed ledger (for timestamping).  Their approach to ensuring that all participants are at the location is to have other witnesses at the location vouch for them.

                      ===== Comments for author =====

The problem is definitely in scope and I thought the authors did a good job of presenting and defining it (although the definitions are not entirely formal).  The use of credentials and ledgers is straightforward, but required some thinking through.  The one aspect that I was not convinced by was the location proofs  - in the setting without trusted witnesses or some kind of hardware solution, what prevents a group of non participants from all vouching for one another being at the event?  Even in the setting with trusted witnesses, what would prevent a single participant from gathering participation proof shares for a bunch of his friends?

===========================================================================
                        PoPETs 2019.3B Review #55C
---------------------------------------------------------------------------
Paper #55: From grassroots to CROCUSes: privacy-preserving CROwd Counting
           Using Smartphones
---------------------------------------------------------------------------

                      Overall merit: 3. Major Revisions needed
                 Reviewer expertise: 2. Some familiarity
                Reviewer confidence: 2. Medium
                  Relevance to PETS: 3. Directly related to PETs (scope is
                                        not an issue)

                         ===== Paper summary =====

The paper presents a protocol for counting protestors in rallies.
The authors' protocol provides privacy guarantees such as unlinking protestors in multiple rallies, allows a protestor to check that they were indeed counted, and allows to avoid counting errors that persist in techniques that are based on image analysis.

                      ===== Comments for author =====

I appreciate the principled way the authors take towards their goal of counting participants in protests. They provide an interesting approach to solve a timely problem.

I would have liked to see a clear discussion of the limitations of this approach. For example, I think that the paper assumes that a protestor wouldn't reveal their private key to the organizer so that even if they support the cause they will have to be physically present in the rally to be counted. However, using functional encryption, for example, protestors can allow the organizers to run the protocol with the witnesses on their behalf. And, on the other hand, wouldn't a nation state be able to disturb communication between the protestors and the witnesses?

Assuming no trusted witness, is there a principled way to determine the threshold for the number of witnesses?


In contrast to existing techniques, this approach involves an interactive protocol between protestors and witnesses. This change in approach makes a practical evaluation very important.
The performance section relies on pieces of individually evaluated primitives that were presented in other works. While the current discussion does give a sense for the performance one would expect, it would be far more convincing that this approach is feasible if the authors would take a step further and implement the key modules in their protocol. (for example, would even local communication with tens of thausands of condensed cell phones be feasible?)


