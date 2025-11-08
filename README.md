# Politecnico di Milano Projects
Repository containing the project codes.

### Index
1. [Structural Mechanics](#structural-mechanics)
2. [Aerospace Propulsion](#aerospace-propulsion)
3. [Space Mission Analysis](#space-mission-analysis)

---

# Structural Mechanics

## Continuum Mechanics

*Link to the paper: [Dalla_teoria_delle_deformazioni_alla_visualizzazione_interattiva.pdf](https://github.com/user-attachments/files/17721305/Dalla_teoria_delle_deformazioni_alla_visualizzazione_interattiva.pdf)* \
*Link to the code directory: [click here](Meccanica_Strutturale/meccanica_del_continuo)* \
*Link to the HD image directory: [click here](Meccanica_Strutturale/meccanica_del_continuo/Immagini_del_paper.md)*

**Abstract**: The first part of the paper analyzes the SpaceX CRS-7 mission failure, highlighting the structural issues that led to the Falcon 9 rocket’s loss. The analysis focuses on the stresses and strains of the critical component—the “strut”—with particular attention to mechanics of materials and dynamic loads during flight. Material fatigue and structural resilience under extreme conditions are also discussed.  
The second part of the paper focuses on the study of structural deformations—both small and large—through numerical simulations in MATLAB®. The approach is developed progressively: starting from the deformation of a two-dimensional square, then manipulating an image, then deforming a three-dimensional cube; extending to the case of position-dependent deformation; and finally developing an animation of the deformations of the letter “M” in 3D. As a synthesis of this path, an interactive application was created that allows various deformations and rotations to be applied to visualize transformations in real time, using both the small-strain and large-deformation approaches.  
The two sections of the paper integrate to offer a multifaceted view both of the real structural failure of a complex system and of numerical techniques for the study of deformations. Moreover, if properly developed and refined, the proposed MATLAB® application could serve as a valuable educational tool in introductory structural mechanics courses, offering students an interactive real-time visualization of deformation phenomena.

---

# Aerospace Propulsion

*Link to the paper: [Analysis and resizing of the Concorde Rolls-Royce_Snecma Olympus 593MK610.pdf](https://github.com/user-attachments/files/17722431/Analysis.and.resizing.of.the.Concorde.Rolls-Royce_Snecma.Olympus.593MK610.pdf)* \
*Link to the code directory: [click here](Concorde_RR_Snecma_Olympus_593MK610)* \
*Link to the paper addendum: [click here](https://michellevrapi.notion.site/Addendum-93e5ecb195f1423aad58b17c2efa6aec)*

**Abstract**: The paper analyzes the Rolls-Royce/Snecma Olympus 593MK610 turbojet aircraft engine, mounted on the Concorde of the Aerospatiale-BAC, supersonic civil transport aircraft. The technical treatise is divided in to 2 sections. The first section presents the analysis of four possible setups: take-off, noise abatement climb at 0m,max climb at 12’000m, supersonic cruise. Engine cycle and components have been resized and, in particular, shockwaves inside the intake, compressor speed triangles and coaxial flow in the jet engine have been analyzed and simulated. The second section proposes the redesign of the engine as an associated flow turbofan, with a third flow which spills the excess air and mixes the main flow better, to reduce noise. The analysis focuses on the variation of the bypass ratio: a compromise is sought between the increase in overall engine efficiency and the drag problem. The speed triangles of the compressor were analyzed, and a preliminary study on the application of chevrons to the nozzle was done, always in order to reduce jet noise. The analysis was performed using MATLAB® and Python TM as computational environments, GasTurb13 © as engine construction simulation environment and Procreate ® as raster graphics editor. To design and study the components and the engine, the three dimensional parametric design software Solidworks, and the fluid simulation software ANSYS were used.

---

# Space Mission Analysis

*Link to the paper: [Optimization of transfers between non-coplanar orbits using bielliptic bitangent maneuvers and solution of Lambert problem.pdf](https://github.com/user-attachments/files/17733924/Optimization.of.transfers.between.non-coplanar.orbits.using.bielliptic.bitangent.maneuvers.and.solution.of.Lambert.problem.pdf)* \
*Link to the code directory: [click here](Optimization_orbital_transfers)* \
*Link to the presentations: [click here](Optimization_orbital_transfers/Presentazioni.md)*



**Abstract**: In the following paper, three possible strategies for an orbital transfer maneuver, between two assigned points located on low Earth orbits have been studied. Orbital transfers are a series of operations commonly carried out in order to vary the orbit in which a satellite is moving around the Earth. In order not only to analyze the individual strategies, but also to compare them, the cost and associated transfer time are calculated for each. In this way it is possible to determine which of those shown is the optimal maneuver, that is the one that represents the best compromise between the time taken and the mass of propellant consumed. In fact, the purposes of the paper are precisely to highlight the feasibility of the maneuvers presented and find the one that maximizes this quality. 
