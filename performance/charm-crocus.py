from charm.core.engine.protocol import *
from charm.toolbox.ecgroup import ECGroup,G
from socket import socket,AF_INET,SOCK_STREAM
from charm.toolbox.eccurve import prime192v1
from charm.toolbox.enum import Enum
import sys


#Setup for Prover/Verifier interactions
party = Enum('Verifier', 'Prover')
PROVER,VERIFIER = party.Prover, party.Verifier
HOST, PORT = "", 8082

class CROCUS(Protocol):
    def __init__(self, builtin_cv, common_input=None):
        Protocol.__init__(self, None)        
        verifier_states = { 2:self.verifier_state2, 4:self.verifier_state4, 6:self.verifier_state6 }
        prover_states = { 1:self.prover_state1, 3:self.prover_state3, 5:self.prover_state5 }

        verifier_trans = { 2:4, 4:[2,6] }
        prover_trans = { 1:3, 3:5, 5:1 }
        # describe the parties involved and the valid transitions
        Protocol.addPartyType(self, VERIFIER, verifier_states, verifier_trans)
        Protocol.addPartyType(self, PROVER, prover_states, prover_trans, True)

        self.group = ECGroup(builtin_cv)
        #db = {}
        Protocol.setSubclassVars(self, self.group) #, db)
        
    # PROVER states
    def prover_state1(self):
        x = self.group.random()
        r, g = self.group.random(), self.group.random(G)
        t = g ** r 
        print('prover: ',"hello to verifier.")
        Protocol.store(self, ('r',r), ('x',x))
        Protocol.setState(self, 3)
        return {'t':t, 'g':g, 'y':g ** x } # output goes to the next state.

     
    def prover_state3( self, input): #CHALLENGE phase
        print("state3 => ", input)
        (r, x, c0, c1) = Protocol.get(self, ['r', 'x', 'c0', 'c1'])
        s0 = r + c0 * x
        s0_0 = self.group.random()
        s0_1 = s0 - s0_0
        s1 = r + c1 * x
        s1_0 = self.group.random()
        s1_1 = s1 - s1_0
        Protocol.setState(self, 5)
        return {'s0_0':s0_0, 's0_1':s0_1, 's1_0':s1_0, 's1_1':s1_1}


    def prover_state5( self, input ):
        print("state5 => ", input)
        result = input.split(':')[1]
        if result == 'ACCEPTED': Protocol.setState(self, None)
        else: Protocol.setState(self, 1); return 'REPEAT'
        return None


    # VERIFIER states
    def verifier_state2(self, input):
        #print("state2 received => ", input)
        # compute challenge c and send to prover
        c0 = self.group.random()
        c1 = self.group.random()

        print("state2 generate c0 := {}, c1 := {}".format(c0, c1))
        Protocol.store(self, ('c0',c0), ('c1', c1))
        Protocol.setState(self, 4)
        return {'c0':c0, 'c1':c1}


    def verifier_state4( self, input ):
        (t,g,y,c0,s0_0,s0_1) = Protocol.get(self, ['t','g','y','c0','s0_0','s0_1'])
        print("state4: s :=", s)

        # probably we should generate a random b here just to simulate
        
        s0 = s0_0 + s0_1
        if (g ** s0 == t * (y ** c0)):
           print("SUCCESSFUL VERIFICATION!!!")
           output = "verifier : ACCEPTED!"
        else:
            print("FAILED TO VERIFY!!!")            
            output = "verifier : FAILED!"
        Protocol.setState(self, 6)
        return output

    
    def verifier_state6(self, input ):
        print("state6: => ", input)
        Protocol.setState(self, None)
        return None

    
if __name__ == "__main__":
    sp = CROCUS(prime192v1)

    if sys.argv[1] == "-v":
        print("Operating as verifier...")
        svr = socket(AF_INET, SOCK_STREAM)
        svr.bind((HOST, PORT))
        svr.listen(1)
        svr_sock, addr = svr.accept()
        print("Connected by ", addr)
        _name, _type, _sock = "verifier", VERIFIER, svr_sock
#       sp.setup( {'name':"verifier", 'type':_type, 'socket':svr_sock} )
    elif sys.argv[1] == "-p":
        print("Operating as prover...")
        clt = socket(AF_INET, SOCK_STREAM)
        clt.connect((HOST, PORT))
        clt.settimeout(15)
        _name, _type, _sock = "prover", PROVER, clt
    else:
        print("Usage: %s [-v or -p]" % sys.argv[0])
        exit(-1)
    sp.setup( {'name':_name, 'type':_type, 'socket':_sock} )
    # run as a thread...
    sp.execute(_type)
