Date: Fri, 24 Apr 2020 20:31:29 +0000
From: ACM WiSec 2020 HotCRP <noreply@wisec20.hotcrp.com>
To: Sonja Buchegger <buc@kth.se>, Daniel Bosk <dbosk@kth.se>
CC: WiSec2020TPCChairs@gmail.com
Subject: [ACM WiSec 2020] Rejected submission #159 "Distance-bounding,
 privacy-preserving..."

Dear authors,

The 13th ACM Conference on Security and Privacy in Wireless and Mobile
Networks (ACM WiSec 2020) program committee is sorry to inform you that
your submission #159 was rejected, and will not appear in the conference.

       Title: Distance-bounding, privacy-preserving attribute-based
              credentials
     Authors: Daniel Bosk (KTH Royal Institute of Technology, Stockholm,
              Sweden)
              Simon Bouget (RISE)
              Sonja Buchegger (KTH Royal Institute of Technology)
        Site: https://wisec20.hotcrp.com/paper/159

WiSec’20 received a total of 104 valid submissions, out of which 27 were
accepted as regular papers and 3 were accepted as short papers.

Visit the submission site for reviews, comments, and related information.
Reviews and comments are also included below.

Contact Matthias Hollick and Wenjing Lou <WiSec2020TPCChairs@gmail.com>
with any questions or concerns.

- ACM WiSec 2020 Submissions

Review #159A
===========================================================================

Overall merit
-------------
2. Weak reject

Reviewer expertise
------------------
2. Some familiarity

Paper summary
-------------
This work proposes a new distance-bounding authentication protocol by giving a public-key based solution and authenticated key-exchange protocol with the assumption that all bits can be transferred at once. The authors also the traditional solution by offering resilience to more threats.

Strengths
---------
The technical part seems sound. Their design can realize the claimed contributions.

Weaknesses
----------
It is confusing to say the attribute-based method. No performance evaluation. The style may not fit this conference.

Comments for author
-------------------
The first concern is they say their scheme is attributed based, but I can't find how they design and implement it. I didn't see the formal definition of "attribute", which makes the name confusing to me.

Another concern is that the paper lacks important performance evaluation/simulation. The way the paper is written is not like an applied solution related to the wireless network, though they use one sentence to mention a potential application for keyless entry of vehicles in the Intro. No implementation and evaluation are given for real-world performance in wireless and mobile contexts. It is difficult to see the practical value of the proposed solution. What types of devices can support the protocol? It would be time-consuming or even impossible for some kind of wireless device to support complicated crypto operations.  The paper is more like a crypto theoretic paper but even so numerical analysis should be provided to justify the potential usability. So I would say the problem they are addressing is interesting, which might find good applications in wireless/mobile settings, but I have no clues about how to apply it and to what extent it could address the practical problem. I suggest the authors resubmit the paper to other relevant conferences.


* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


Review #159B
===========================================================================

Overall merit
-------------
2. Weak reject

Reviewer expertise
------------------
2. Some familiarity

Paper summary
-------------
This paper builds of previous work to construct a new distance bounding protocol that is secure against distance fraud, mafia fraud, terrorist fraud, and distance hijacking. Overall the, the paper contains three different protocols. The first protocol discussed transmits multiple bits of data in parallel in order to prove the required distance bound. The second protocol leverages the use of a PKI so that devices would not need to have a pre-shared secret between them in order to use this distance bounding protocol. Finally, the last protocol is a more traditional bit-by-bit version of the same distance bounding protocol. The authors formally explain and prove their claims for various security notations and go so far as to verify their protocols using the Tamarin prover.

Strengths
---------
- Proofs and logic seem well founded and correct and an interesting use of Tamarin
- Thorough background and related work provided

Weaknesses
----------
- Some concerns with practical deployment of the many-bit protocol
- No empirical evaluation

Comments for author
-------------------
This is an interesting paper with a well-grounded starting point, that of distance bounding. The discussion becomes rather theoretical, with a number of lemmas regarding security properties. While the proofs are in the appendix, I would rather see at least a sketch of the proof or an intuition about it in the main body of the paper.

The use of Tamarin is interesting but not particularly well explored in this paper. I realize that there are page limits but it would be good to provide at least a high level description of the approach to the proof and what additional complexities were found. Perhaps the bigger problem here as the authors admit is that while Tamarin provides symbolic modeling and captures a specification, it does not model reality. This is another reason why the lack of an implementation and evaluation is so glaring here; it is not possible to determine whether an implementation uncovers issues that would not be found solely through formal specification, and it is not clear whether the structures are in place to make such an implementation feasible. In particular, as the authors acknowledge, the Tamarin proof is incomplete in its coverage with regards to terrorist fraud. 

Moreover, apart from some generalities about how the proposed construction can be used in practice, it was not particularly clear to me what this would really present that would be a highly useful addition to build on top of distance bounding; for example, the conclusion (which is a weird place to bring up new material) considers the idea of privacy-preserving age verification and double spend, but why distance bounding would come into play here is a little unclear - it's perhaps clearer for the second case, but then I'd be interested in an approach that looks at something like Ross Anderson's relay attack against chip and PIN and demonstrating that distance bounding married to double spend protection could potentially be helpful in such a scenario.


* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *


Review #159C
===========================================================================

Overall merit
-------------
4. Accept

Reviewer expertise
------------------
3. Knowledgeable

Paper summary
-------------
This paper extends the conventional distance-bounding scheme to support general attribute-based authentication using Zero-Knowledge Proofs.

Strengths
---------
- Well written and interesting 
- Good contribution

Weaknesses
----------
- Lack of performance evaluation from the systems perspective

Comments for author
-------------------
This is an interesting and well written paper.
I appreciate the main contribution which is the application of ZKP to distance bounding protocols to enable more general attribute-based authentication scheme. 
I also find the approach to be reasonable as many other more efficient ideas (e.g., based on symmetric key) don't work.  My main critique is the lack of systematic performance analysis based on some real-world implementation - which is usually the main method of evaluation in the most recent DB protocols.

In summary, I'm for the acceptance of this paper.

