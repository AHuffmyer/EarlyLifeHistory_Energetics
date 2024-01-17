---
layout: post
title: 4th Try TagSeq Library Prep Test
category: [ Library Prep, ]
tag: [ RNA, TagSeq ]
---

# Attempting TagSeq Protocol Again (Partial) on 4 RNA Samples from Holobiont Project, Doing Each Library Twice with Either New Primers with Increased Concentration or the cDNA Amplification with KAPA HiFi HotStart Mix

**Goal** Generate more yield and get 1-2ng/ul library after the cDNA step (what it says you should have in the UTGSAF protocol at this step). Only going to this step, this also only takes 1 day  
**Results** No difference between the two prep styles and not able to get 1-2ng/ul  
**Takeaways** This prep still needs troubleshooting. We still might not be getting it right with the primer concentration, but there was no improvement whatsoever with increasing it. It's clear that the problem is happening at or before the cDNA amp step because we aren't getting the expected amount of library here.

### Library prep followed almost exactly the protocol from UT Austin (where applicable), except stopped after cDNA cleanup. Adapter and template switching oligo sequences are from the original Lohman protocol

**Everything besides the Qubit and TapeStation was done on the RNA bench**

**Sample Information**

|Sample/Plug ID|species|ng/ul|Library Attempt Number|
|---|---|---|---|
|1445|Pacuta|83.3|9|
|1653|Pacuta|114|10|
|1059|Pacuta|73.2|11|
|2493|Pacuta|73.7|12|

**Made new aliquots of all primers, calculated to be 20uM because it turned out the 10uM primers may not have actually been at 10uM.**

- 3-ILL: 5ul 200uM stock and 45ul ultrapure water
- 5-ILL: 5ul 200uM stock and 45ul ultrapure water

## RNA Fragmentation and RT Primer Annealing

- Cleaned bench, pipettes, and racks with RNaseZap
- Thawed RNA samples on ice
- Made 8 new strip tubes for sample dilution. Labeled both with 9-12 C or D.
- **C samples get new primers, D samples get KAPA PCR mix**
- Samples diluted to 500ng in 10ul total
- Vortexed and spun down RNA before aliquoting on ice

|Sample|ul ultrapure water|ul RNA|
|---|-----|-----|
|9 C and D|4|6|
|10 C and D|5.62|4.38|
|11 C and D|3.17|6.83|
|12 C and D|3.22|6.78|

- Turned on themocycler and started program 95 so the themocycler warmed up and the block was at 95 C (95C hold, 95C 2.5min)
- Prepared RNA fragmentation/RT master mix (RFRT) **D**
  - 1ul dntps (10uM) * 4.4 = 4.4ul
  - 2ul 0.1M DTT * 4.4 = 8.8ul
  - 4ul 5x FS buffer * 4.4 = 17.6ul
  - 1ul 3iLL-30TV **NEW**(20uM) *4.4 = 4.4ul
- Prepared RNA fragmentation/RT master mix (RFRT) **B**
  - 1ul dntps (10uM) * 4.4 = 4.4ul
  - 2ul 0.1M DTT * 4.4 = 8.8ul
  - 4ul 5x FS buffer * 4.4 = 17.6ul
  - 1ul 3iLL-30TV **ORIGINAL** (10uM) *4.4 = 4.4ul
- Pipette mix and spin down RFRT
- Added 8ul RFRT to each RNA strip tube with the 500ng aliquots, making sure C tubes get C mix, and D tubes get D mix
- Pipette mixed strip tubes and spun down
- Placed strip tubes in warmed up thermocycler and pressed enter on program
- Took tubes out at the 2.5 min mark and put on the ice bucket for 2 minutes (at least, going into next step)

## 1st Strand cDNA Synthesis

- Made 1st strand master mix (FSMM) C
  - 1ul SiLL - SWMW **NEW** (20uM) * 4.4 = 4.4ul
  - 1ul  SmartScribe RT * 4.4 = 4.4ul
- Made 1st strand master mix (FSMM) B
  - 1ul SiLL - SWMW **ORIGINAL** (10uM) * 4.4 = 4.4ul
  - 1ul SmartScribe RT * 4.4 = 4.4ul
- Pipette mixed FSMM and keep on ice
- Added 2ul FSMM to each strip tube, either C to C or D to D
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

- Two different master mixes were made, mix D was slightly a different volume because the KAPA HiFi is a 2X solution
- cDNA master mix (CDMM) C:
  - 6ul ultra pure H20 * 4.4 = 26.4ul
  - 0.5ul 10uM dntps * 4.4 = 2.2ul
  - 2ul 10X PCR buffer * 4.4 = 8.8ul
  - 0.5ul 5iLL **NEW** (20uM) * 4.4 = 2.2ul
  - 0.5ul 3iLL-30TV **NEW** (20uM) * 4.4= 2.2ul
  - 0.5ul Klentaq * 4.4 = 2.2ul
- cDNA mastermix (CDMM) D:
  - 11ul KAPA HiFi * 4.4 = 48.4ul
  - 0.5ul 5iLL **ORIGINAL** (10uM) * 4.4 = 2.2ul
  - 0.5ul 3iLL-30TV **ORIGINAL** (10uM) * 4.4= 2.2ul
- Mixed mixes by pipetting, spun down, and kept on ice
- Added 10ul CDMM C to the C-"c" cDNA strip tubes
- Added 12ul CDMM D to the D-"c" cDNA strip tubes
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

## High Sensitivity RNA Qubit S-1 Tubes

- Followed [Qubit Protocol](https://github.com/meschedl/PPP-Lab-Resources/blob/master/Protocols_and_Lab_Resources/DNA_Quality_Control/Qubit-Assay-Protocol.md)

|Sample|Average RNA ng/ul|
|----|----|
|Standard 1|44 RFU|
|Standard 2|710 RFU|
|9C S-1|40
|10C S-1|26.6|
|11C S-1|27.6|
|12C S-1|21.6|
|9D S-1|33.2|
|10D S-1|23|
|11D S-1|22|
|12D S-1|21|

## High Sensitivity DNA Qubit S-2 Tubes After cDNA

- Followed [Qubit Protocol](https://github.com/meschedl/PPP-Lab-Resources/blob/master/Protocols_and_Lab_Resources/DNA_Quality_Control/Qubit-Assay-Protocol.md)

|Sample|Average RNA ng/ul|
|----|----|
|Standard 1|45 RFU|
|Standard 2|23829 RFU|
|9C S-2|too low to read|
|10C S-2|0.272|
|11C S-2|0.518|
|12C S-2|too low to read|
|9D S-2|too low to read|
|10D S-2|0.268|
|11D S-2|0.362|
|12D S-2|too low to read|

## ssDNA Qubit New 20uM Primers

|Sample|ng/ul|
|---|---|
|Standard 1|70|
|Standard 2|14476|
|3-ILL|240|
|5-ILL|173|
|S-ILL|220|

### Back-calculate to see if concentration is right in new primers

**3-ILL is 40bp**  
(240/(660 x 52)) x 1000000 = 6,993 nM which is 6.9mM

**5-ILL is 22bp**  
5ILL: (173/(660 x 22)) x 1000000 = 11,914 nM which is 11.9mM

**S-ILL is 40bp**  
S-ILL: (220/(660 x 40)) x 1000000 = 8,333 nM which is 8.3mM
