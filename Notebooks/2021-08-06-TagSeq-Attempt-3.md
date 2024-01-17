---
layout: post
title: 3rd Try TagSeq Library Prep Test
category: [ Library Prep, ]
tag: [ RNA, TagSeq ]
---

# Attempting TagSeq Protocol Again (Partial) on 4 RNA Samples from Holobiont Project, Doing Each Library Twice with Either New DTT or New SmartScibe and Buffer

**Goal** Generate more yield and get 1-2ng/ul library after the cDNA step (what it says you should have in the UTGSAF protocol at this step). Only going to this step, this also only takes 1 day    
**Results** No difference between the two prep styles and not able to get 1-2ng/ul
**Takeaways** Need to troubleshoot more. Next ideas are increasing concentration of S-ILL, 3-ILL, and 5-ILL primers, and using KAPA amp mix

### Library prep followed almost exactly the protocol from UT Austin (where applicable), except stopped after the cDNA cleanup. Adapter and template switching oligo sequences are from the original Lohman protocol.

**Everything besides the Qubit and TapeStation was done on the RNA bench**

**Sample Information**  

RNA from holobiont project was used as to not freeze-thaw Ariana's RNA. To be able to repeat these samples 4 times I had to pick samples with a high RNA concentration

|Sample/Plug ID|species|ng/ul|Library Attempt Number|
|---|---|---|---|
|1445|Pacuta|83.3|9|
|1653|Pacuta|114|10|
|1059|Pacuta|73.2|11|
|2493|Pacuta|73.7|12|

Ordered new SmartScribe with FS buffer and pre-made 0.1M DTT from Thermo to try.

## RNA Fragmentation and RT Primer Annealing

- Cleaned bench, pipettes, and racks with RNaseZap
- Thawed RNA samples on ice
- Made 8 new strip tubes for sample dilution. Labeled both with 9-12 A or B.
- **A samples get new smartscibe and buffer, B samples get new DTT**
- Samples diluted to 500ng in 10ul total
- Vortexed and spun down RNA before aliquoting on ice

|Sample|ul ultrapure water|ul RNA|
|---|-----|-----|
|9 A and B|4|6|
|10 A and B|5.62|4.38|
|11 A and B|3.17|6.83|
|12 A and B|3.22|6.78|

- Turned on themocycler and started program 95 so the themocycler warmed up and the block was at 95 C (95C hold, 95C 2.5min)
- Prepared RNA fragmentation/RT master mix (RFRT) **A**
  - 1ul dntps (10uM) * 4.4 = 4.4ul
  - 2ul 0.1M **OLD** DTT * 4.4 = 8.8ul
  - 4ul 5x **NEW** FS buffer * 4.4 = 17.6ul
  - 1ul 3iLL-30TV (10uM) *4.4 = 4.4ul
- Prepared RNA fragmentation/RT master mix (RFRT) **B**
  - 1ul dntps (10uM) * 4.4 = 4.4ul
  - 2ul 0.1M **NEW** DTT * 4.4 = 8.8ul
  - 4ul 5x **OLD** FS buffer * 4.4 = 17.6ul
  - 1ul 3iLL-30TV (10uM) *4.4 = 4.4ul
- Pipette mix and spin down RFRT
- Added 8ul RFRT to each RNA strip tube with the 500ng aliquots, making sure A tubes get A mix, and B tubes get B mix
- Pipette mixed strip tubes and spun down
- Placed strip tubes in warmed up thermocycler and pressed enter on program
- Took tubes out at the 2.5 min mark and put on the ice bucket for 2 minutes (at least, going into next step)
- **Noted here that sample tube 9A had a crack in it and had lost a lot of volume, decided to not continue with that sample/tube**
- Took out 1.5ul from each sample to save for RNA qubit
- Made 1X FS buffer to add back in volume: A
  - 2ul new FS buffer
  - 8ul ultra pure H2O
- Made 1x FS buffer to add back in volume: B
  - 2ul old FS buffer
  - 8ul ultrapure H20
- Added 1.5 1X FS buffer back into tubes, either A or B

## 1st Strand cDNA Synthesis

- Made 1st strand master mix (FSMM) A
  - 1ul SiLL - SWMW (10uM) * 4.4 = 4.4ul
  - 1ul **NEW** SmartScribe RT * 4.4 = 4.4ul
- Made 1st strand master mix (FSMM) B
  - 1ul SiLL - SWMW (10uM) * 4.4 = 4.4ul
  - 1ul **OLD** SmartScribe RT * 4.4 = 4.4ul
- Pipette mixed FSMM and keep on ice
- Added 2ul FSMM to each strip tube, either A to A or B to B
- Pipette mixed with 15ul and spun down strip tubes
- Turned on themocycler and started 1st Strand cDNA program, once the block was at 42 degrees, put the strip tubes in the machine and pressed enter (42 degrees C hold, 42 degrees C 60 min, 65 degrees C 15 min, 4 degree hold). Program is 1 hour 15 min long

## 0.9X Bead Cleanup

- Took out KAPA pure beads 1 hour before use, stored in drawer for warm up
- Made fresh 80% ethanol
- Spun down tubes out of the thermocycler
- Added 30ul ultra pure water to each sample (total vol now 50ul)
- Added 45ul KAPA pure beads to each tube, pipette mixing 10 times for each tube
- Place tubes on the shaker for 15 min at 200rpm shaking
- After, placed tubes on the magnet stand and waited until the liquid was clear
- Removed 90ul of the clear supernatant from each tube
- Added 100ul of fresh 80% ethanol to each tube
- Removed 100ul of the clear supernatant from each tube
- Added 100ul of fresh 80% ethanol to each tube
- Removed 100ul of the clear supernatant from each tube
- Removed any remaining liquid with a p20
- Let "dry" for 3 min max
- Resuspended beads in 15ul ultra pure water
- Incubated tubes on the shaker for 5 minutes 2000rpm
- Placed on magnet and let solution go clear
- Removed 10ul in to strip tubes for continuing lib prep "c"
- Removed 5ul into strip tubes for "save" labeled S-1

## cDNA Amplification

- Not two different master mixes this time
- Made cDNA master mix (CDMM):
  - 6ul ultra pure H20 * 8.8 = 52.8ul
  - 0.5ul 10uM dntps * 8.8 = 4.4ul
  - 2ul 10X PCR buffer * 8.8 = 17.6ul
  - 0.5ul 5iLL (10uM) * 8.8 = 4.4ul
  - 0.5ul 3iLL-30TV (10uM) * 8.8 = 4.4ul
  - 0.5ul Klentaq * 8.8 = 4.4ul
- Mixed by pipetting, spun down, and kept on ice
- Added 10ul CDMM to the "c" cDNA strip tubes, both A and B
- Pipette mixed and spun down
- Placed in thermocycler cDNA AMP 18 program (18 cycles recommended for less and 150ng input) (94 degrees C 1 min, _94 degrees C 1 min, 63 degrees C 2 min, 72 degrees C 2 min_, 4 degrees C hold. Italics are cycled 18 times). Program runs 1 hour 45 min

## 0.9X Bead Cleanup

- Took out KAPA pure beads 1 hour before use, stored in drawer for warm up
- Made fresh 80% ethanol
- Spun down tubes out of the thermocycler
- Added 30ul ultra pure water to each sample (total vol now 50ul)
- Added 45ul KAPA pure beads to each tube, pipette mixing 10 times for each tube
- Place tubes on the shaker for 15 min at 200rpm shaking
- After, placed tubes on the magnet stand and waited until the liquid was clear
- Removed 90ul of the clear supernatant from each tube
- Added 100ul of fresh 80% ethanol to each tube
- Removed 100ul of the clear supernatant from each tube
- Added 100ul of fresh 80% ethanol to each tube
- Removed 100ul of the clear supernatant from each tube
- Removed any remaining liquid with a p20
- Let "dry" for 3 min max
- Resuspended beads in 22ul ultra pure water
- Incubated tubes on the shaker for 5 minutes 2000rpm
- Placed on magnet and let solution go clear
- Removed 10ul in to strip tubes for continuing lib prep "c"
- Removed 10ul into strip tubes for "save" labeled S-2
- Froze C tubes and kept S-2 tubes on ice for QC

## High Sensitivity RNA Qubit Fragmentation RNA and S-1 Tubes

- Followed [Qubit Protocol](https://github.com/meschedl/PPP-Lab-Resources/blob/master/Protocols_and_Lab_Resources/DNA_Quality_Control/Qubit-Assay-Protocol.md)

|Sample|Average RNA ng/ul|
|----|----|
|Standard 1|44.9 RFU|
|Standard 2|721 RFU|
|10A F|29.2|
|11A F|28.8|
|12A F|28|
|9B F|38.8|
|10B F|27|
|11B F|26.4|
|12B F|28.8|
|10A S-1|20.2|
|11A S-1|24|
|12A S-1|24.6|
|9B S-1|35.8|
|10B S-1|23.4|
|11B S-1|19.3|
|12B S-1|23.2|

## High Sensitivity DNA Qubit S-2 Tubes After cDNA

- Followed [Qubit Protocol](https://github.com/meschedl/PPP-Lab-Resources/blob/master/Protocols_and_Lab_Resources/DNA_Quality_Control/Qubit-Assay-Protocol.md)

|Sample|Average RNA ng/ul|
|----|----|
|Standard 1|47 RFU|
|Standard 2|24467 RFU|
|10A S-2|too low to read|
|11A S-2|0.434|
|12A S-2|too low to read|
|9B S-2|too low to read|
|10B S-2|0.298|
|11B S-2|0.6|
|12B S-2|too low to read|
