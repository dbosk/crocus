Reviewer 1
1) a) Due to  unlinkability properties (anonymous credentials and pseudonyms), the central authority cannot tell participants from non-participants without extreme measures equivalent to arresting people at the protest. Arguably, the chilling effects with this system are no more than that of "standard" protests. We give the national ID as an example, but any logically centralized entity would work. 

b) Yes, but the paper also notes that those are detectable and should be ignored due to their obvious bias (e.g. as for detecting bias in science).

2) Petitions have been viable for a long time but people still arrange protests anyway.
Our scheme allows for both anonymous verifiable petitions (skip location) and protests (time and location matter).

3-4) We acknowledge that the design of the architecture is complex but we need all parts to reach the desired properties. Governments can already now make examples of people; Crocus cannot make physical protests safer, we only want to not make it worse.

5) This is the main reason for distance-bounding as it allows the witness to verify that it is within a given distance from the prover. Why a verifier accepts this claim is up to the trust assumptions for which we provide two cases, trusted witness and threshold.

6) Trusted by a verifier. Anyone can define whom they trust and how they want to be counted. We do use trusted witnesses for counting.

7) Strength: yes.

Reviewer 2

If there are specific parts that should be more formalized, we will be happy to do this in the revised version of the paper.

With respect to a single participant gathering proof shares for friends, terrorist-fraud resistance in distance bounding prevents relays and users giving  private keys (or phones) to someone. As pointed out by Reviewer 1, this is realistic in scenarios in which the private keys are part of the long-term ID credential.

Reviewer 3

1) While FE is a valid concern, we need to carefully select DB protocol for terrorist-fraud resistance which includes FE. We are working on a distance-bounding protocol (in preparation for a separate paper) in which two outputs from the FE function needed would enable the calculation of the private key, thus again reducing to terrorist-fraud.


2) This extreme case in which no type of wireless communication works is possible but unheard of. Potentially using NFC solves this, but with usability consequences.

3) There is no principled way given online mobs, but different counts are possible and as long as the parameters are published, the counts can be verified. Requests for sizeable collusion are made in public, which risk being found by the verifier --- thus invalidating the count in the eyes of the verifier.

4) For overall performance, we could evaluate AnonPass on phones, example distance-bounding computation, collect density and scalability from the literature (protests and wireless), and measure NFC delays, which we could do if deemed useful by the reviewers. 5G is built for scale but not for the D2D scenario; again, NFC is possible.
