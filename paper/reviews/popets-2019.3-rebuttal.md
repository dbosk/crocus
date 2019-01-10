Reviewer 1

1)
a) Therefore anonymous credentials and unlinkability properties: the central authority cannot tell participants from non-participants without extreme measures which are equivalent to arresting people at the protest. Arguably, the chilling effects with this system are no more than that of protests alone already.

b) Yes, but the paper also notes that those are detectable and should be ignored due to their obvious bias. Those who verify results must apply the standard source criticism. e.g. as for detecting bias in scientific research.

2) Petitions have been viable for a long time, but people arrange protests anyway. Our scheme allows for both anonymous verifiable petitions (skip location) and protests (time and location matter).

3) Agreed, but we need all parts.

4) Agreed, we need to present the adversaries better. A2 was to show limitations. Grace can already now make examples of people; crocus cannot make physical protests safer, we only want to not make it worse.

5) That’s the reason for distance bounding. Then any witness will know that it’s within a given distance from the witness’ own position. Why a verifier accepts this is up to the trust assumptions: we give two cases, the verifier trusts the particular witness; or the verifier “trusts” that a threshold of witnesses is probably true.

6) Trusted by a verifier. Anyone can define whom they trust and how they counted. We _do_ use trusted witnesses for counting.

7) Strength: yes.


Reviewer 2

Definitions not entirely formal: working on it.

Single participant gathering proof shares for friends: The distance bounding prevents this being done by relaying messages. The terrorist-fraud assumption from distance bounding also prevents giving the private key (or phone containing it) to someone: the private keys are part of the long-term ID credential, if this ID can be used for other things, as pointed out by Reviewer 1, then you will not allow just anyone to use it.


Reviewer 3

1) Yes, following the standard assumption in distance bounding to prevent 
terrorist fraud (which is distance-bounding terminology for this particular 
case).

Functional encryption will not work against an honest verifier in the general 
case. We are working on a distance bounding protocol (it requires a separate 
paper) and in that scheme the private key can be computed by joining two 
different outputs from the functional encryption of the private key. Hence it's 
reduced to the terrorist-fraud case again.

2) This extreme case where no type of wireless communication works, not even the short range needed here, is possible but not heard of. Perhaps NFC could help.

3) No principled way given online mobs, but different counts are possible and as long as the parameters are published, the counts can be verified. Requests for sizeable collusion are made in public, which risk being found by the verifier --- thus invalidating the count in the eyes of the verifier.

4) 5G is built for scale but currently not for the D2D scenario; again, NFC is 
an option.
