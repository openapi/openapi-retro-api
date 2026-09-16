<div align="center">

# 🕹️ Retro-API

### Vecchi computer. API moderne.

**Quanto può essere vecchio un computer ed essere ancora capace di parlare con una API di [@Openapi®](https://github.com/openapi)?**

[![Lascia la tua testimonianza](https://img.shields.io/badge/📸_Lascia_la_tua_testimonianza-Apri_una_issue-ff4f00?style=for-the-badge)](https://github.com/openapi/openapi-retro-api/issues/new?template=testimonianza.yml)
[![Status](https://img.shields.io/badge/challenge-aperta-2ea44f?style=for-the-badge)](#-la-challenge)
[![Regolamento](https://img.shields.io/badge/regolamento-prossima_campagna-8a2be2?style=for-the-badge)](REGOLAMENTO.md)

</div>

---

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

> **Prendi un vecchio computer. Collegalo a Internet. Fagli chiamare una API Openapi. Raccontaci come hai fatto.**

Commodore, Amiga, Atari, Macintosh, DOS, Olivetti, workstation UNIX, Palm, Windows CE, console, home computer dimenticati in soffitta.

Non importa quanto sia improbabile. **Anzi, meglio.**

---

## 🎯 La challenge

Una sola domanda:

> **Qual è il computer più vecchio che riusciamo a far comunicare con una moderna API REST?**

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
   200 OK
```

Basta una chiamata riuscita. Sullo schermo del tuo retro computer potrebbe comparire qualcosa come:

```text
OPENAPI RETRO-API

REQUEST SENT...

HTTP 200 OK

ROMA
CAP: 00100

SUCCESS!
```

Non stiamo costruendo un'applicazione utile.
**Stiamo facendo funzionare insieme cose che non hanno alcun motivo di funzionare insieme.**

---

## 🤔 Perché è difficile

Su un computer moderno tutto questo è invisibile. Su una macchina di trent'anni fa torna a essere **informatica**:

`TCP/IP` · `DNS` · `HTTP` · `HTTPS` · `TLS` · `certificati` · `cipher suite moderne` · `JSON` · `encoding` · `autenticazione` · `memoria` · `limiti del compilatore` · `limiti della macchina`

---

## 🔌 Native, Assisted o Bridged

Non tutte le vecchie macchine possono parlare HTTPS da sole. Va bene così: **puoi usare tutti i trucchi che vuoi, devi solo raccontarceli.**

| Modalità | Cosa significa | Esempio |
|---|---|---|
| 🧼 **Native** | La macchina fa tutto da sola, TCP/IP e HTTPS compresi | `RETRO PC ──HTTPS──▶ OPENAPI` |
| 🛠️ **Assisted** | La logica è sulla macchina, un dispositivo moderno risolve un limite specifico (es. TLS) | `AMIGA ──HTTP──▶ TLS PROXY ──HTTPS──▶ OPENAPI` |
| 🌉 **Bridged** | La macchina comunica attraverso un bridge moderno | `C64 ──SERIALE──▶ ESP32 ──HTTPS──▶ OPENAPI` |

Proxy TLS, ESP32, Raspberry Pi nascosto dietro un Commodore, modem Wi-Fi, gateway seriale: **tutto valido**, purché sia chiaro *chi fa cosa*.

---

## 📸 Lascia la tua testimonianza

Ce l'hai fatta? La tua macchina ha ricevuto una risposta da Openapi? **Vogliamo vederla!**

👉 **[Apri una issue](https://github.com/openapi/openapi-retro-api/issues/new?template=testimonianza.yml)** e raccontaci:

1. 🖥️ **La macchina** — modello, anno, CPU, RAM, sistema operativo
2. 🔌 **La connessione** — hardware di rete, protocollo, eventuali proxy o bridge (Native, Assisted o Bridged)
3. 💾 **Il software** — linguaggio, librerie, stack TCP/IP, link al codice se è pubblico
4. 🌐 **L'API chiamata** — quale API Openapi hai usato e cosa ti ha risposto
5. 📷 **La prova** — se possibile uno **screenshot** o anche solo una **foto fatta col cellulare** allo schermo che mostra la chiamata riuscita

> Una foto storta di un monitor CRT con scritto `200 OK` vale più di mille parole. Non serve che sia bella: serve che sia vera.

Anche i **tentativi non riusciti** sono benvenuti: _"sono arrivato fino al TLS handshake"_ o _"il JSON non entra in memoria"_ sono risultati tecnici preziosi, e magari qualcuno della community ha il pezzo che ti manca.

> [!WARNING]
> **Non pubblicare mai la tua API key** né nel testo della issue, né nel codice, né negli screenshot. Controlla bene la foto prima di caricarla.

---

## 🏆 Hall of Fame

Non è una gara, ma alcune imprese meritano di essere ricordate:

| | Categoria | |
|---|---|---|
| 🕰️ | **Oldest Machine** | la macchina più vecchia |
| 🧠 | **Smallest Memory** | la chiamata riuscita con meno RAM |
| 🔌 | **Most Creative Connection** | il networking più improbabile |
| 🧼 | **Purest Implementation** | meno infrastruttura moderna possibile |
| 🤯 | **Weirdest Hardware** | la macchina più strana |
| 🇮🇹 | **Italian Computing** | hardware storico italiano (sì, Olivetti, stiamo guardando te) |
| 🐢 | **Slowest API Call** | perché 47 secondi sono più interessanti di 0,047 |

_Ancora nessuna voce. La prima potrebbe essere la tua._

---

## 🌐 Quali API usare

Scegli endpoint **semplici**, **veloci**, con input piccolo e output facile da mostrare a schermo, e senza effetti costosi. Per esempio: CAP, geocoding, cambio valuta, dati automotive, informazioni societarie.

Trovi il catalogo completo delle API su [**openapi.com**](https://openapi.com) e tutti gli SDK e gli strumenti nell'organizzazione [**@openapi**](https://github.com/openapi).

---

## 📜 Regolamento

Il [**REGOLAMENTO.md**](REGOLAMENTO.md) attuale descrive lo spirito e le idee alla base del progetto.
**Il regolamento sarà aggiornato in vista della prossima campagna**: nel frattempo la challenge è aperta e le testimonianze tramite issue sono già valide.

---

<!--
  💾 C:\> DIR /A

  Hai trovato un commento nascosto. Sei chiaramente la persona giusta.

  Ivrea, 1965: la Olivetti Programma 101 diventa il primo computer da scrivania della storia.
  Ivrea, 1983: arriva l'Olivetti M24.

  Nella cartella .p101/ c'è un programma GW-BASIC che aspetta un Olivetti vero.
  RUN "RETROAPI.BAS"
-->

<div align="center">

**Recupera un vecchio computer. Scrivi un po' di codice. Trova un modo per collegarlo al presente.**
**Se sullo schermo compare una risposta, hai vinto.**

_Non contro gli altri. Contro trent'anni di evoluzione tecnologica._

Made with 💾 by the [@Openapi®](https://github.com/openapi) community · [MIT License](LICENSE)

</div>
