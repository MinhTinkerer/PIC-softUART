;#include <P18CXXX.INC>
#include <pic18_chip_select.inc>

D1TCYXCODE CODE

    GLOBAL  _Delay1TCYx

PSECT text,class=CODE

_Delay1TCYx:
    movlw   0xff
    movf    PLUSW1,0
    dcfsnz  WREG,1
    return

D1x
    nop
    decfsz  WREG,1
    bra     $-2
    return

    END
    
