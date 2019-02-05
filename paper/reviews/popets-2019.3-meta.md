Date: Fri, 1 Feb 2019 16:42:56 -0500
From: pets19-chairs@petsymposium.org
Subject: [PoPETs 2019.3B] Notification Paper #55 "From grassroots to
 CROCUSes:..."

===========================================================================
PoPETs 2019.3B Review #55A
Updated 12 Jan 2019 8:37:53am EST
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

This paper proposes a crowd counting (specifically in sensitive settings
like politically motivated protests) scheme utilising smartphones, unique
ids, and a distance bounding protocol that is meant to be secure against
sybil attacks, count manipulation, and verifiable by the general public and
the participants.

===== Comments for author =====

While the paper looks at an interesting and relevant topic:
privacy-preserving crowd counting, I am not sold on the scheme that is
presented.

The main concerns are:
1) The dependence on unique IDs issued by some government body or, more
generically, some central authority that can prevent sybil-type attacks.
Basically, the system can not protect against that central authority
influencing participation for reasons like a) chilling speech since the
national ID in many places is linked to many things necessary for quality
of life like credit, housing, banking, and it being linked to protest may
well cause harm for the participant and b) the national issuer can just
create sybil identities for itself and create counter manifestos and show
larger support for their own selves (which is noted in the paper as well).
2) Let's say the sybil resistance above was not already problematic, then
can't people then sign a petition using their unique ID to have their vote
count for that manifesto online (where they would have to find out about
the manifesto in the first place anyway to find out its CID). Why is this
not viable?
3) The overly-complex design that assumes as-yet-to-be designed distance
bounding protocols, combined with anonymous credentials, and distributed
ledgers and yet 
4) Can not defend against an adversary (A2) that the authors themselves
present. Indeed, to me it seems that A1 and A2 are arbitrary distinctions
and to be actually addressing the problem of protesting against powerful
entities (like the government who issues IDs and is the CA, and that can
watch you and make examples of people using the crowd counting protocol to
chill future participation) is the one that has to be addressed. 

In the current presentation of the scheme I am not sure that it actually
provides the stated properties or achieves its goals.

Some other thoughts about this crowd attestation idea. What stops a protest
organiser from hiring a smart-phone farm to "participate" in the protest?
The scheme doesn't have any way to know where the phones are, and even if
it did use location information, the phones can just lie about their
locations, and attest each other and then their participation counts.

What role is the trusted person supposed to play? Trusted by whom? The
organiser, the protest target, or the general public who is wondering which
side to support? Also, this person can only be witness to a very small
fraction of the protesters present, and we already know that you will not
be using them to estimate the size of the crowd. So what do they bring?

Also, what is the strength parameter supposed to help with? Is it to ensure
that there are sufficiently many witnesses for each participant to ensure
they were really there?

===== Response to authors’ rebuttal =====

1) a) Due to  unlinkability properties (anonymous credentials and
pseudonyms), the central authority cannot tell participants from
non-participants without extreme measures equivalent to arresting people at
the protest. Arguably, the chilling effects with this system are no more
than that of "standard" protests. We give the national ID as an example,
but any logically centralized entity would work.

RevA: This centralised entity can still sybil the system, as stated in the
paper so the design depends on there being an entity who 1) is beyond the
coercion of any government, 2) disinterested in the results of any and all
protests, 3) will never itself be the subject of the protest since that
might cause it a conflict of interest, and 4) to which access can not be
blocked, or monitored for later crack-down, by the government.

b) Yes, but the paper also notes that those are detectable and should be
ignored due to their obvious bias (e.g. as for detecting bias in science).

RevA: How is a non-protester, either a voter who intends to figure out
their position or a concerned someone in a distant land), who is watching
the news supposed to tell which of the pro-government or anti-government
protester-counts to believe. Are we to assume that obviously any
pro-government activity is absolutely suspicious and all anti activity is
legitimate? The solution should make it impossible to nay-say the true
counts even if they go against our very beliefs (e.g. as for detecting bias
in science).

2) Petitions have been viable for a long time but people still arrange
protests anyway.
Our scheme allows for both anonymous verifiable petitions (skip
location) and protests (time and location matter).

RevA: In the related works section it is said that other systems do not
work since there is no way to prevent over voting, yet given a government
ID that prevents over-voting would make those systems also workable. See
comments for 5) below for the location and time mattering distinction.

3-4) We acknowledge that the design of the architecture is complex but we
need all parts to reach the desired properties. Governments can already now
make examples of people; Crocus cannot make physical protests safer, we
only want to not make it worse.

RevA: A benefit of the proposed solution seemed that one could have their
vote count and yet also not expose themselves by overt behaviour around a
protest location. Today someone who happened to be detained for being in
the protest area could say they were merely innocent bystanders. However,
in the proposed scheme the protester-catcher can interact using the witness
protocol with these covert protesters (perhaps in a sparse area, e.g. going
to the bathroom or stopping to talk to someone during the march) that is
now providing proof that they were not only present but also for the cause.

5) This is the main reason for distance-bounding as it allows the witness
to verify that it is within a given distance from the prover.
Why a verifier accepts this claim is up to the trust assumptions for which
we provide two cases, trusted witness and threshold.

RevA: DB does not address the issue raised by the reality of mobile phone
farms for hire (and the ability of the centralised authority to issue
credentials falsely) where all the witnesses, and provers could be in a
room far away from the protests since the location is never actually
figured out (since location can be faked anyway). How big a protest does
one need such that the threshold would be beyond the ability of a
government to afford enough fake mobile phones? As for the trusted witness,
how does that scale with the size of the protest?

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

This paper looks at the problem of estimating the size of crowds at public
events like protests and marches.  The goal is to provide a way of
measuring the size of a crowd that is robust against adversarial behavior
trying to raise or lower the estimate, that protects privacy of the event
participants, and that produces results that are publicly verifiable.

The authors define an event as a group of people at a particular set of
locations at particular times for a particular goal.  The authors first
define the problem, then They provide a protocol which combines anonymous
credentials (to prevent doublecounting parcipants), and a distributed
ledger (for timestamping).  Their approach to ensuring that all
participants are at the location is to have other witnesses at the location
vouch for them.

===== Comments for author =====

The problem is definitely in scope and I thought the authors did a good job
of presenting and defining it (although the definitions are not entirely
formal).  The use of credentials and ledgers is straightforward, but
required some thinking through.  The one aspect that I was not convinced by
was the location proofs  - in the setting without trusted witnesses or some
kind of hardware solution, what prevents a group of non participants from
all vouching for one another being at the event?  Even in the setting with
trusted witnesses, what would prevent a single participant from gathering
participation proof shares for a bunch of his friends?

===========================================================================
PoPETs 2019.3B Review #55C
Updated 30 Jan 2019 10:00:15am EST
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
The authors' protocol provides privacy guarantees such as unlinking
protestors in multiple rallies, allows a protestor to check that they were
indeed counted, and allows to avoid counting errors that persist in
techniques that are based on image analysis.

===== Comments for author =====

I appreciate the principled way the authors take towards their goal of
counting participants in protests. They provide an interesting approach to
solve a timely problem.

I would have liked to see a clear discussion of the limitations of this
approach. For example, I think that the paper assumes that a protestor
wouldn't reveal their private key to the organizer so that even if they
support the cause they will have to be physically present in the rally to
be counted. However, using functional encryption, for example, protestors
can allow the organizers to run the protocol with the witnesses on their
behalf. And, on the other hand, wouldn't a nation state be able to disturb
communication between the protestors and the witnesses?

Assuming no trusted witness, is there a principled way to determine the
threshold for the number of witnesses?


In contrast to existing techniques, this approach involves an interactive
protocol between protestors and witnesses. This change in approach makes a
practical evaluation very important.
The performance section relies on pieces of individually evaluated
primitives that were presented in other works. While the current discussion
does give a sense for the performance one would expect, it would be far
more convincing that this approach is feasible if the authors would take a
step further and implement the key modules in their protocol. (for example,
would even local communication with tens of thausands of condensed cell
phones be feasible?)

===== Meta-Review =====

The reviewers liked the problem this paper aims to solve, and all felt it
was relevant to PETS. However, the reviewers were not convinced that the
paper's solution was practical and technically sound, which led to a reject
and resubmit decision.

The main concerns were about the deployment scenario which relies on a
central entity, the complexity of the protocol, and the use of
yet-to-be-designed primitives like distance bounding protocols while
leaving existing primitives like functional encryption out of the model.
Furthermore, the reviewers felt that the paper should assume a more hostile
environment since the attacker could be a government entity. In particular,
the authors should protect against adversary model A2 and avoid
vulnerabilities even when a large portion of the witnesses is malicious.

We hope that these comments will help the authors improve the paper towards
future acceptance.


