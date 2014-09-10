 ;;
 ; CPU_EnableAll_Int
 ;  Enable all interrupts sources peviously enabled
 ;  Author: Rafael Dias Menezes
 ;  company: Taioba Corporation
 ;  email: rdmeneze@yahoo.com.br
 ;  Date: sep/2009
 ;
 ;  Copyright (C) 2009  Rafael Dias
 ;
 ;  This program is free software: you can redistribute it and/or modify
 ;  it under the terms of the GNU General Public License as published by
 ;  the Free Software Foundation, either version 3 of the License, or
 ;  (at your option) any later version.
 ;
 ;  This program is distributed in the hope that it will be useful,
 ;  but WITHOUT ANY WARRANTY; without even the implied warranty of
 ;  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 ;  GNU General Public License for more details.
 ;
 ;  You should have received a copy of the GNU General Public License
 ;  along with this program.  If not, see <http://www.gnu.org/licenses/>.
 ;
 ; 
 ; - Modificatios
 ;  -- 09/2009 by rdias: Initial version
 ;/


#include <pic18_chip_select.inc>

PSECT text,class=CODE

GLOBAL  CPU_EnableAllInt

;CPU_EnableAllInt_CODE CODE

CPU_EnableAllInt:
		BANKSEL	INTCON
		bcf     RBIF
		bcf		INT0IF
		;bcf			INTCON, TMR0IF

		BANKSEL	INTCON3
		bcf		INT1IF
		bcf		INT2IF
		
		BANKSEL	INTCON
		movlw	0xC0
		iorwf	INTCON,F
    return


    END