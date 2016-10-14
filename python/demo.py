import sys
import json
import random
import threading


class Simulator(object):
    """simulator demo"""

    def __init__(self):
        self._th=threading.Thread()

    def run(self):
        self._th=threading.Thread(target=self._run,args=())
        self._th.setDaemon(True)
        self._th.start()
    def wait(self):
        self._th.join()

    def _run(self):
        times=0
        while times<10:
            print "running"
            threading._sleep(1)
            times+=1

if __name__=="__main__":
    s=Simulator()
    s.run()
    s.wait()

