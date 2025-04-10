# Politecnico di Milano projects
Repository contenente i codici dei progetti.

### Indice
1. [Meccanica Strutturale](#meccanica-strutturale)
2. [Propulsione Aerospaziale](#propulsione-aerospaziale)
3. [Analisi di missioni spaziali](#analisi-di-missioni-spaziali)

---

# Meccanica Strutturale

## Meccanica del continuo 

*Link al paper: [Dalla_teoria_delle_deformazioni_alla_visualizzazione_interattiva.pdf](https://github.com/user-attachments/files/17721305/Dalla_teoria_delle_deformazioni_alla_visualizzazione_interattiva.pdf)* \
*Link alla directory dei codici: [clicca qui](Meccanica_Strutturale/meccanica_del_continuo)* \
*Link alla directory delle immagini in HD: [clicca qui](Meccanica_Strutturale/meccanica_del_continuo/Immagini_del_paper.md)*

**Abstract**: La prima parte del paper analizza il disastro della missione SpaceX CRS-7, evidenziando le problematiche strutturali che hanno causato il fallimento del razzo Falcon 9. L’analisi si concentra sulle sollecitazioni e deformazioni del componente critico, lo “strut”, con particolare attenzione alla meccanica dei materiali e all’analisi delle sollecitazioni dinamiche durante il volo. Vengono anche discussi gli aspetti legati alla fatica del materiale e alla resilienza strutturale in condizioni estreme. La seconda parte del paper si concentra sullo studio delle deformazioni strutturali, sia piccole che grandi, attraverso simulazioni numeriche in MATLAB®. L’approccio è sviluppato gradualmente: si parte dalla deformazione di un quadrato bidimensionale, si passa poi alla manipolazione di un’immagine, quindi alla deformazione di un cubo tridimensionale, all’estensione al caso di deformazione in funzione della posizione, e infine si sviluppa un’animazione delle deformazioni della lettera “M” in 3D. Come sintesi di questo percorso, è stata creata un’applicazione interattiva che permette di applicare diverse deformazioni e rotazioni per visualizzare in tempo reale le trasformazioni, utilizzando sia l’approccio alle piccole deformazioni che quello alle grandi deformazioni. Le due sezioni del paper si integrano per offrire una visione articolata sia sull’analisi del fallimento strutturale reale di un sistema complesso, sia sulle tecniche numeriche per lo studio delle deformazioni. Inoltre, se adeguatamente sviluppata e perfezionata, l’applicazione MATLAB® proposta potrebbe rappresentare un valido strumento didattico nei corsi introduttivi alla meccanica strutturale, offrendo agli studenti un’esperienza di visualizzazione interattiva dei fenomeni di deformazione in tempo reale.

---
# Propulsione Aerospaziale

*Link al paper: [Analysis and resizing of the Concorde Rolls-Royce_Snecma Olympus 593MK610.pdf](https://github.com/user-attachments/files/17722431/Analysis.and.resizing.of.the.Concorde.Rolls-Royce_Snecma.Olympus.593MK610.pdf)* \
*Link alla directory dei codici: [clicca qui](Concorde_RR_Snecma_Olympus_593MK610)* \
*Link all'addendum del paper: [clicca qui](https://michellevrapi.notion.site/Addendum-93e5ecb195f1423aad58b17c2efa6aec)*

**Abstract**: The paper analyzes the Rolls-Royce/Snecma Olympus 593MK610 turbojet aircraft engine, mounted on the Concorde of the Aerospatiale-BAC, supersonic civil transport aircraft. The technical treatise is divided in to 2 sections. The first section presents the analysis of four possible setups: take-off, noise abatement climb at 0m,max climb at 12’000m, supersonic cruise. Engine cycle and components have been resized and, in particular, shockwaves inside the intake, compressor speed triangles and coaxial flow in the jet engine have been analyzed and simulated. The second section proposes the redesign of the engine as an associated flow turbofan, with a third flow which spills the excess air and mixes the main flow better, to reduce noise. The analysis focuses on the variation of the bypass ratio: a compromise is sought between the increase in overall engine efficiency and the drag problem. The speed triangles of the compressor were analyzed, and a preliminary study on the application of chevrons to the nozzle was done, always in order to reduce jet noise. The analysis was performed using MATLAB® and Python TM as computational environments, GasTurb13 © as engine construction simulation environment and Procreate ® as raster graphics editor. To design and study the components and the engine, the three dimensional parametric design software Solidworks, and the fluid simulation software ANSYS were used.


---
# Analisi di missioni spaziali

*Link al paper: [Optimization of transfers between non-coplanar orbits using bielliptic bitangent maneuvers and solution of Lambert problem.pdf](https://github.com/user-attachments/files/17733924/Optimization.of.transfers.between.non-coplanar.orbits.using.bielliptic.bitangent.maneuvers.and.solution.of.Lambert.problem.pdf)* \
*Link alla directory dei codici: [clicca qui](Optimization_orbital_transfers)* \
*Link alle presentazioni: [clicca qui](Optimization_orbital_transfers/Presentazioni.md)*


**Abstract**: In the following paper, three possible strategies for an orbital transfer maneuver, between two assigned points located on low Earth orbits have been studied. Orbital transfers are a series of operations commonly carried out in order to vary the orbit in which a satellite is moving around the Earth. In order not only to analyze the individual strategies, but also to compare them, the cost and associated transfer time are calculated for each. In this way it is possible to determine which of those shown is the optimal maneuver, that is the one that represents the best compromise between the time taken and the mass of propellant consumed. In fact, the purposes of the paper are precisely to highlight the feasibility of the maneuvers presented and find the one that maximizes this quality. 
