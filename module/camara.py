from migen import *
from migen.genlib.cdc import MultiReg
from litex.soc.interconnect.csr import *
from litex.soc.interconnect.csr_eventmanager import *

# Modulo Principal
class Camara(Module,AutoCSR):
    def __init__(self, xclk,pclk,cam_data_in):
        self.Clock = ClockSignal()   
        self.Reset = ResetSignal()  
        self.XClock = XClock
        
        self.Pclock = Pclock
        self.Vsync_cam= Vsync_cam
        self.Href= Href
        self.Data = cam_data_in
	#ESTÁ BIEN?
	self.RGB = RGB
	self.Hsync = Hsync
	self.Vsync = Vsync
        
        self.done= CSRStatus()
	self.MapaWrite= CSRStorage()
        
        self.MapaData = CSRStorage(4)
        self.MapaAddr = CSRStorage(6)  
	self.Forma = CSRStatus(2)
	self.PromedioColor = CSRStatus(2)

        self.specials +=Instance("camara",
            i_Clock = self.Clock,
            i_Reset = self.Reset,
            o_XClock = self.XClock,
            i_Pclock = self.Pclock,
	    i_Vsync_cam=self.Vsync_cam,
	    i_Href=self.Href,
            i_Data=self.Data,
	    o_RGB=self.RGB,
	    o_Hsync=self.Hsync,
	    o_Vsync=self.Vsync,
            o_done =self.done.status,
            i_MapaData=self.MapaData.storage,
            i_MapaAddr= self.MapaAddr.storage,
	    o_Forma= self.Forma.status,
	    o_PromedioColor= self.PromedioColor.status,
        )
        
        
       
        #self.submodules.ev = EventManager()
        #self.ev.ok = EventSourceProcess()
        #self.ev.finalize()
 
        #self.ev.ok.trigger.eq(self.done.status)
