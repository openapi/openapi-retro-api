# `openapi-retro-api`

## Retro-API

**Quanto può essere vecchio un computer ed essere ancora capace di parlare con una API moderna?**

`openapi-retro-api` è un esperimento open source italiano dedicato a retrocomputing, programmazione, reti e API.

L'idea è semplice:

> **Prendi un vecchio computer. Collegalo a Internet. Fagli chiamare una API Openapi. Raccontaci come hai fatto.**

Commodore, Amiga, Atari, Macintosh, DOS, vecchi PC, workstation UNIX, Palm, Windows CE, console, home computer dimenticati in soffitta.

Non importa quanto sia improbabile.

Anzi, meglio.

---

# La sfida

Il principio di Retro-API può essere spiegato con una sola domanda:

> **Qual è il computer più vecchio che riusciamo a far comunicare con una moderna API REST?**

Una chiamata riuscita è sufficiente.

Per esempio:

```text
VECCHIO COMPUTER
      │
      │ HTTP / TCP/IP / seriale / modem / magia
      ▼
   INTERNET
      │
      ▼
OPENAPI
      │
      ▼
  RESPONSE
   200 OK
```

Il risultato potrebbe essere semplicemente qualcosa come:

```text
OPENAPI RETRO-API

REQUEST SENT...

HTTP 200 OK

ROMA
CAP: 00100

SUCCESS!
```

Non stiamo cercando di costruire un'applicazione utile.

**Stiamo cercando di far funzionare qualcosa che non dovrebbe avere alcun motivo di funzionare insieme.**

---

# Perché farlo

Retro-API nasce per divertimento.

Non è una competizione professionale.

Non è un hackathon.

Non è una demo commerciale.

Non è un esercizio per imparare a usare una API.

È retrocomputing.

È la stessa curiosità che porta qualcuno a:

* collegare un Commodore 64 a Internet;
* scrivere software nuovo per Amiga;
* utilizzare ancora DOS;
* costruire periferiche moderne per computer degli anni '80;
* collegare un ESP8266 a una macchina che non ha mai conosciuto Internet;
* scrivere un client TCP su hardware con pochi kilobyte di memoria;
* far girare software contemporaneo su sistemi per cui non era stato pensato.

La domanda fondamentale è semplicemente:

> **Possiamo farlo?**

---

# Perché una API moderna

Una API moderna è un bersaglio particolarmente interessante per il retrocomputing.

Tra il vecchio computer e una risposta JSON apparentemente banale possono esserci problemi come:

* TCP/IP;
* DNS;
* HTTP;
* HTTPS;
* TLS;
* certificati;
* cipher suite moderne;
* memoria disponibile;
* encoding;
* JSON;
* parsing;
* autenticazione;
* gestione delle API key;
* networking hardware;
* limiti del sistema operativo;
* limiti del compilatore;
* limiti della macchina.

Su un computer moderno tutto questo è quasi invisibile.

Su una macchina di trent'anni fa torna improvvisamente ad essere **informatica**.

Retro-API vuole rendere visibile proprio questo.

---

# Un progetto italiano

`openapi-retro-api` è pensato principalmente per la community italiana.

README, Discussions, documentazione e comunicazione principale saranno in italiano.

Il retrocomputing italiano ha una storia particolarmente interessante.

Commodore 64, Amiga, ZX Spectrum, MS-DOS, Olivetti, primi Macintosh, Atari ST e tantissime altre macchine hanno rappresentato per molti italiani il primo contatto con la programmazione.

Retro-API vuole mettere in comunicazione due epoche:

> **i computer con cui abbiamo imparato a programmare**

e

> **i servizi con cui programmiamo oggi.**

---

# La regola fondamentale

Per partecipare bisogna riuscire a ottenere da una macchina retro una risposta proveniente da una API Openapi.

Non importa quale API venga utilizzata, purché l'esperimento sia riproducibile e documentato.

L'obiettivo minimo è:

```text
RETRO COMPUTER
      ↓
REQUEST
      ↓
OPENAPI
      ↓
RESPONSE
      ↓
RETRO COMPUTER
```

Ma c'è un problema interessante:

**cosa significa esattamente "il computer ha chiamato l'API"?**

Retro-API non dovrebbe nasconderlo.

Dovrebbe farne parte dell'esperimento.

---

# Native, Assisted e Bridged

Non tutte le vecchie macchine possono realisticamente parlare direttamente HTTPS con Internet moderno.

Per questo non vogliamo escludere soluzioni creative.

Le submission possono essere classificate tecnicamente.

## Native

La macchina gestisce direttamente quanto necessario per comunicare con Openapi.

```text
RETRO COMPUTER
      │
      │ TCP/IP + HTTPS
      ▼
   OPENAPI
```

Questa è naturalmente una delle soluzioni tecnicamente più interessanti.

---

## Assisted

La macchina gestisce una parte significativa della comunicazione, mentre un dispositivo moderno risolve un limite specifico.

Per esempio:

```text
AMIGA
  │
  │ HTTP
  ▼
TLS PROXY
  │
  │ HTTPS
  ▼
OPENAPI
```

Il proxy può occuparsi esclusivamente della terminazione TLS.

La logica della richiesta rimane sul computer retro.

---

## Bridged

La macchina comunica attraverso un bridge moderno.

Per esempio:

```text
COMMODORE 64
     │
     │ SERIAL
     ▼
   ESP32
     │
     │ HTTPS
     ▼
  OPENAPI
```

Anche questo è perfettamente valido.

La submission deve semplicemente spiegare chiaramente **chi fa cosa**.

La creatività del bridge può essere parte stessa dell'esperimento.

---

# Non barare, ma barare è consentito

Lo spirito potrebbe essere riassunto così:

> **Puoi usare tutti i trucchi che vuoi. Devi soltanto raccontarceli.**

Proxy TLS?

Va bene.

ESP32?

Va bene.

Raspberry Pi nascosto dietro un Commodore?

Va bene.

Modem Wi-Fi?

Va bene.

Gateway seriale?

Va bene.

Un PC moderno che traduce HTTPS in qualcosa comprensibile a DOS?

Va bene.

Ma bisogna documentarlo.

Retro-API non vuole stabilire una definizione filosofica di "vera chiamata API".

Vuole mostrare **quanto lavoro è stato necessario spostare fuori dalla macchina**.

Questo rende interessanti anche le submission che non sono completamente native.

---

# La scheda della macchina

Ogni esperimento dovrebbe essere documentato attraverso una scheda comune.

Per esempio:

```yaml
machine: Commodore Amiga 500
year: 1987

cpu:
  model: Motorola 68000
  frequency: 7.16 MHz

memory:
  ram: 1 MB

os:
  name: AmigaOS
  version: "..."

network:
  hardware: "..."
  protocol: "..."

implementation:
  language: C

connection:
  mode: assisted
  bridge: "TLS proxy"

openapi:
  api: CAP
  endpoint: "..."

result:
  status: success
```

La scheda permette di confrontare esperimenti completamente differenti senza trasformare tutto in una classifica puramente numerica.

---

# Il vero protagonista è l'hardware

Ogni submission dovrebbe contenere almeno una fotografia della macchina reale.

Idealmente:

```text
📷 COMPUTER
📷 SETUP DI RETE
📷 RISULTATO SULLO SCHERMO
💾 CODICE SORGENTE
📝 SPIEGAZIONE
```

Una fotografia di un computer del 1987 che mostra una risposta ottenuta da un servizio del 2026 racconta Retro-API meglio di qualsiasi campagna pubblicitaria.

---

# Hall of Fame

Retro-API può mantenere una **Hall of Fame**.

Non necessariamente una classifica assoluta.

Possiamo riconoscere diversi tipi di risultato.

Per esempio:

### 🕰️ Oldest Machine

La macchina più vecchia con cui è stato completato un esperimento.

### 🧠 Smallest Memory

La submission riuscita con meno RAM.

### 🔌 Most Creative Connection

La soluzione di networking più improbabile.

### 🧼 Purest Implementation

La soluzione con meno infrastruttura moderna intermedia.

### 🤯 Weirdest Hardware

La macchina più strana utilizzata per chiamare Openapi.

### 🇮🇹 Italian Computing

Esperimenti realizzati utilizzando hardware storico italiano.

### 🐢 Slowest API Call

Perché non tutto deve essere veloce.

Una richiesta che impiega 47 secondi può essere molto più interessante di una che ne impiega 0,047.

---

# Nessuna ossessione per vincere

Non vogliamo trasformare Retro-API in una gara competitiva.

La Hall of Fame serve principalmente a raccontare gli esperimenti.

Un Commodore 64 non rende meno interessante un Macintosh.

Un Amiga non rende meno interessante un 486.

Una macchina del 1995 con una soluzione particolarmente elegante può essere più interessante di una macchina del 1982 collegata attraverso dieci proxy.

Ogni submission aggiunge un piccolo pezzo alla domanda collettiva:

> **Quanto indietro possiamo andare?**

---

# La timeline

Una visualizzazione particolarmente interessante potrebbe essere una timeline delle submission:

```text
1977 ───────────────────────────────────────── 2026

      Apple II
          │
      Commodore 64
             │
          IBM PC
               │
             Amiga
                  │
               Atari ST
                       │
                     486
                            │
                         Pentium
                                  │
                              Windows CE
                                          │
                                       TODAY
```

Ogni nuovo esperimento aggiunge una macchina alla storia.

L'obiettivo collettivo diventa lentamente quello di spostare il limite sempre più indietro.

---

# Hardware italiano

Essendo un progetto italiano, una sottocategoria particolarmente interessante può essere dedicata alle macchine italiane.

Naturalmente:

**Olivetti.**

Una chiamata Openapi effettuata da un vecchio sistema Olivetti avrebbe un valore simbolico particolare:

> tecnologia informatica italiana di ieri che comunica con infrastruttura API italiana di oggi.

Questo potrebbe diventare uno degli esperimenti simbolici del progetto.

Ma sono benvenuti computer di qualsiasi produttore e paese.

---

# Le API da utilizzare

Non tutte le API Openapi sono ugualmente adatte.

Per Retro-API conviene privilegiare endpoint:

* semplici;
* veloci;
* con input piccolo;
* con output facilmente visualizzabile;
* che non producano effetti costosi o indesiderati;
* che permettano di capire immediatamente che la richiesta è realmente arrivata.

Per esempio, una risposta relativa a:

* CAP;
* geocoding;
* cambio valuta;
* dati automotive;
* informazioni societarie;

può essere più adatta di un workflow complesso di firma o fatturazione.

L'obiettivo non è dimostrare tutte le API Openapi.

L'API è semplicemente **il traguardo moderno raggiunto dalla macchina retro**.

---

# Un endpoint dedicato

Se tecnicamente ed economicamente possibile, sarebbe molto interessante avere in futuro un endpoint dedicato a Retro-API.

Qualcosa concettualmente simile a:

```text
GET /retro
```

che restituisca pochissimi dati:

```json
{
  "message": "Hello from Openapi",
  "year": 2026
}
```

Questo endpoint potrebbe diventare il nostro equivalente moderno del:

```text
HELLO WORLD
```

Ma l'esperimento acquista ancora più significato quando utilizza una vera capacità Openapi.

Potremmo quindi avere un livello introduttivo e successivamente esperimenti con API reali.

---

# Sicurezza

Le API key non devono mai essere pubblicate nelle repository.

Questo è particolarmente importante perché alcuni sistemi retro potrebbero non avere strumenti moderni per gestire segreti.

Ogni submission deve spiegare come vengono gestite le credenziali.

Quando viene utilizzato un bridge moderno, questo può eventualmente custodire il token evitando di memorizzarlo direttamente sulla macchina retro.

Il repository dovrebbe fornire esempi sicuri.

---

# Submission

Una possibile struttura:

```text
submissions/

  amiga-500-mario/
    README.md
    retro-api.yml
    src/
    images/

  thinkpad-486-anna/
    README.md
    retro-api.yml
    src/
    images/

  commodore64-luca/
    README.md
    retro-api.yml
    src/
    images/
```

Oppure le submission possono vivere nei repository personali dei partecipanti e `openapi-retro-api` mantenere soltanto il catalogo.

Quest'ultima soluzione è probabilmente più interessante per la community perché genera nuovi repository e lascia completa autonomia agli autori.

---

# Come partecipare

Il processo dovrebbe essere estremamente semplice.

1. Scegli una vecchia macchina.

2. Trova un modo per collegarla a Internet o a un bridge.

3. Fai una richiesta a Openapi.

4. Ottieni una risposta.

5. Mostrala sulla macchina.

6. Fotografa il risultato.

7. Pubblica il codice.

8. Racconta come hai fatto.

9. Apri una submission su `openapi-retro-api`.

Fine.

Non serve costruire un prodotto.

---

# Anche i fallimenti sono interessanti

Una caratteristica importante del progetto dovrebbe essere la possibilità di documentare esperimenti falliti.

Per esempio:

> "Ho provato a fare TLS 1.2 su questa macchina e sono arrivato fino a qui."

oppure:

> "Il JSON completo non entra nella memoria disponibile."

oppure:

> "Questo stack TCP non riesce a gestire la connessione."

Questi risultati hanno valore tecnico.

Potremmo avere una sezione:

## Almost There

per documentare macchine sulle quali qualcuno sta ancora lavorando.

Questo può permettere ad altri membri della community di intervenire:

> "Io ho una scheda Ethernet compatibile."

> "Ho scritto un parser JSON per quella CPU."

> "Possiamo fare il TLS sul mio proxy."

Ed ecco che il progetto diventa naturalmente collaborativo.

---

# Discussions

Le GitHub Discussions potrebbero avere categorie molto semplici:

**Show your machine**

Foto e presentazione dell'hardware.

**Experiments**

Esperimenti riusciti.

**Almost there**

Tentativi non ancora funzionanti.

**Need help**

Problemi tecnici.

**Hardware**

Schede di rete, modem, adattatori, serial bridge.

**Software**

Stack TCP/IP, compilatori, parser, librerie.

**Ideas**

Macchine e configurazioni da provare.

La conversazione dovrebbe essere prevalentemente in italiano.

---

# Non è un hackathon

Retro-API non ha bisogno di una data di inizio e una data di fine.

Non c'è:

```text
START
↓
48 HOURS
↓
STOP
↓
PITCH
↓
WINNER
```

Il progetto rimane aperto.

Una persona può scoprire Retro-API nel 2027, trovare un vecchio computer in cantina e mandare una submission sei mesi dopo.

Questo è molto più vicino alla cultura retrocomputing.

---

# Eventi, fiere e community

Retro-API potrebbe eventualmente essere portato anche fuori da GitHub.

Non come hackathon.

Come **sfida permanente** presente in eventi retrocomputing, Linux Day, maker event, associazioni informatiche, gruppi hardware e community locali.

Un piccolo cartello potrebbe bastare:

> ### HAI UN VECCHIO COMPUTER?
>
> **Riesci a fargli chiamare una API del 2026?**
>
> `github.com/openapi/openapi-retro-api`

La community fa il resto.

---

# Identità visiva

Retro-API dovrebbe avere un'estetica deliberatamente retro.

Terminali.

CRT.

ASCII.

Pixel art.

Manuali anni '80.

Modem.

Floppy disk.

Ma senza trasformarla in una caricatura.

Un possibile logo concettuale:

```text
╔══════════════════════════════════════╗
║                                      ║
║            R E T R O - A P I         ║
║                                      ║
║       OLD COMPUTERS. NEW APIs.       ║
║                                      ║
║              [ 200 OK ]              ║
║                                      ║
╚══════════════════════════════════════╝
```

---

# Tagline

La tagline principale potrebbe essere:

> **Vecchi computer. API moderne.**

Oppure in forma interrogativa:

> **Quanto può essere vecchio un computer e parlare ancora con Internet moderno?**

Una variante più hacker:

> **Il tuo vecchio computer riesce ancora a parlare con il 2026?**

E una possibile tagline inglese secondaria:

> **Old computers. Modern APIs.**

---

# Repository

Nome:

`openapi/openapi-retro-api`

Titolo:

**Retro-API**

Descrizione GitHub possibile:

> 🕹️ Vecchi computer. API moderne. Quanto indietro possiamo andare?

Topics possibili:

```text
retrocomputing
retro
vintage-computing
api
rest-api
old-computers
commodore
amiga
atari
dos
olivetti
networking
hacking
italy
openapi
```

---

# Rapporto con OpenHack

Retro-API condivide naturalmente alcuni valori di OpenHack, ma deve rimanere un progetto indipendente.

OpenHack pone la domanda generale:

> **Cosa succede quando gli hacker giocano con servizi normalmente destinati all'enterprise?**

Retro-API ha invece una missione molto più precisa:

> **Quanto indietro nella storia dell'informatica possiamo portare una moderna API Openapi?**

Non è necessario presentare Retro-API come sottoprogetto di OpenHack.

I due progetti possono semplicemente riconoscersi e rimandarsi quando opportuno.

---

# Perché può funzionare

Retro-API possiede una proprietà importante:

**si capisce guardando una fotografia.**

Un lungo articolo su una API difficilmente genera curiosità spontanea.

Una fotografia con:

```text
COMMODORE 64
OPENAPI
HTTP 200 OK
```

racconta già una storia.

Il computer è riconoscibile.

La difficoltà è intuitiva.

Il risultato è assurdo.

La domanda viene spontanea:

> **"Come diavolo hai fatto?"**

E quella domanda porta naturalmente al repository.

---

# Lo spirito

Retro-API non vuole dimostrare che i vecchi computer siano ancora competitivi.

Non vuole dimostrare che le API moderne siano superiori.

Non vuole vendere una particolare architettura.

Vuole mettere due epoche dell'informatica una davanti all'altra.

Da una parte:

```text
8 bit
kilobyte
floppy
seriale
modem
CRT
```

Dall'altra:

```text
cloud
REST
JSON
TLS
OAuth
API
```

In mezzo:

**un programmatore curioso.**

Ed è lui il vero progetto.

---

# Missione

La missione può essere condensata così:

> **Recupera un vecchio computer.**
>
> **Scrivi un po' di codice.**
>
> **Trova un modo per collegarlo al presente.**
>
> **Fagli interrogare Openapi.**
>
> **Se sullo schermo compare una risposta, hai vinto.**
>
> Non contro gli altri.
>
> **Contro trent'anni di evoluzione tecnologica.**
