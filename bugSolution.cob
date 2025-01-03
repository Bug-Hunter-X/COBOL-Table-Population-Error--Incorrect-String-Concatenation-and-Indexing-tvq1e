01  WS-AREA. 
    05  WS-COUNT PIC 9(5) VALUE 0. 
    05  WS-TABLE OCCURS 100 TIMES. 
       10  WS-TABLE-ENTRY PIC X(80). 
    05  WS-RECORD-STRING PIC X(85). 

PROCEDURE DIVISION. 
    PERFORM VARYING WS-COUNT FROM 1 BY 1 UNTIL WS-COUNT > 100 
       MOVE "Record " TO WS-RECORD-STRING 
       MOVE WS-COUNT TO WS-RECORD-STRING(9:5) 
       MOVE WS-RECORD-STRING TO WS-TABLE(WS-COUNT) 
    END-PERFORM. 

STOP RUN.