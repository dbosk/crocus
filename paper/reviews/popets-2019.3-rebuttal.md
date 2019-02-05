# Reviewer 1

1) a) Due to the use of anonymous credentials, the central authority cannot 
tell participants from non-participants without extreme measures equivalent to 
arresting people at the protest. Arguably, the chilling effects with this 
system are no more than that of "standard" protests.

To mitigate the risk of having a central authority responsible the IDs, we 
could also replace it by a distributed version composed of several independent 
entities that simulate the work of the central authority in a distributed and 
private manner. 

b) Yes, but the paper also notes that those are detectable and should be 
ignored due to their obvious bias. In particular, those who verify results must 
apply standard source criticism. (c.f., detecting bias in scientific research).

2) Petitions have been viable for a long time but people still arrange protests 
anyway, in part because going physically to a protest in a sense shows much 
more involvement. Our scheme allows for both anonymous verifiable petitions 
(not considering location) and protests (time and location matter).

3-4) We acknowledge that the design of the architecture is complex but we need 
all parts to reach the desired security and privacy properties. To improve the 
clarity of the paper, we agree that we need to present the adversaries better. 
The objective of introducing A2 was to show the limitations of our approach. 
While CROCUS cannot make physical protests safer, we wanted to ensure that it 
does make it worse.

5) This is the main reason for distance-bounding as it allows the witness to 
verify that it is within a given distance from the prover.  Why a verifier 
accepts this claim is up to the trust assumptions for which we provide two 
cases. One in which the verifier trusts a particular witness and the other in 
which the verifier believes that collusion beyond a threshold is not likely.

6) Trusted by a verifier. Anyone can define whom they trust and how they want 
to be counted. We _do_ use trusted witnesses for counting.

7) Strength: yes.


# Reviewer 2

If there are specific parts that should be more formalized, we will be happy to 
do this in the revised version of the paper. 

With respect to a single participant gathering proof shares for friends, 
distance-bounding prevents this. In addition, the terrorist-fraud assumption 
also prevents a user giving his private key (or phone containing it) to 
someone. This is realistic in scenario in which the private keys are part of 
the long-term ID credential. In particular as pointed out by reviewer 1 if this 
ID can be used for other things, you will not allow just anyone to use it.


# Reviewer 3

1) Yes, it follows the standard assumption in distance-bounding to prevent 
terrorist fraud (which is distance-bounding terminology for this particular 
case).

Functional encryption will not work against a verifier who performs the 
distance-bounding. We are working on a distance-bounding protocol (in 
preparation for a separate paper) in which the private key can be computed by 
joining two different (required) outputs from the functional encryption of the 
private key, the terrorist-fraud assumption prevents this.

2) This is an extreme case: it's possible that an adversary can jam signals for 
wireless communication, but it's unheard of. However, it could be potentially 
mitigated by using e.g. NFC.

3) There is principled way given online mobs, but different counts are 
possible. As long as these parameters are published, the counts can be 
verified. Requests for sizeable collusion are made in public, which risk being 
found by the verifier --- thus invalidating the count in the verifier's eyes.

4) 5G is built for scale but currently not for the D2D scenario without 
provider, but again NFC is an option. For overall performance, we could 
evaluate AnonPass on phones, example distance-bounding computation, collect 
density and scalability from the literature (protests and wireless), and 
measure NFC delays, which we could do if deemed useful by the reviewers.
