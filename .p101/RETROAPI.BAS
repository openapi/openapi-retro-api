10 REM ============================================
20 REM  RETRO-API - EASTER EGG ITALIANO
30 REM  GW-BASIC / Olivetti M24 (1983) e compatibili
40 REM  Omaggio alla Olivetti Programma 101 (1965)
50 REM ============================================
60 KEY OFF: CLS
70 COLOR 10,0
80 PRINT "  +------------------------------------------+"
90 PRINT "  |   O L I V E T T I   x   O P E N A P I    |"
100 PRINT "  |          R E T R O  -  A P I             |"
110 PRINT "  +------------------------------------------+"
120 COLOR 7,0: PRINT
130 PRINT "IVREA, 1965 - PROGRAMMA 101"
140 PRINT "Il primo computer da scrivania della storia."
150 PRINT "Progettato da Pier Giorgio Perotto, programmabile"
160 PRINT "con cartoline magnetiche."
170 PRINT
180 FOR I = 1 TO 3000: NEXT I
190 PRINT "IVREA, 1983 - OLIVETTI M24"
200 PRINT "Intel 8086, MS-DOS, GW-BASIC."
210 PRINT
220 FOR I = 1 TO 3000: NEXT I
230 PRINT "OGGI - OPENAPI"
240 PRINT
250 PRINT "CONNECTING";
260 FOR J = 1 TO 10: PRINT ".";: FOR I = 1 TO 400: NEXT I: NEXT J
270 PRINT
280 COLOR 14,0
290 PRINT "HTTP 200 OK"
300 COLOR 7,0: PRINT
310 PRINT "Da Ivrea alle API: sessant'anni di informatica italiana."
320 PRINT
330 PRINT "Hai un Olivetti che funziona ancora?"
340 PRINT "Fagli fare una VERA chiamata e apri una issue:"
350 PRINT "github.com/openapi/openapi-retro-api"
360 PRINT
370 PRINT "PS: questa chiamata era finta. La tua non deve esserlo."
380 END
