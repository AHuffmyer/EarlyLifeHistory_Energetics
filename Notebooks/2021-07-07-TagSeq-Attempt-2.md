---
layout: post
title: 2nd Try TagSeq Library Prep Test
category: [ Library Prep, ]
tag: [ RNA, TagSeq ]
---

# Attempting TagSeq Protocol Again on 4 RNA Samples from Holobiont Project

**Goal** Generate more yield and ready to sequence libraries    
**Results** Library prep is likely not-sequencable again, such low quantity       
**Takeaways** See end of post for troubleshooting ideas


### Library prep followed mostly the protocol from UT Austin (where applicable), except stopped before pooling. **Double reaction volumes were used in this attempt, except for bead clean steps which were kept at original volume.** Final PCR was also increased to 6 cycles from 4. Adapter and template switching oligo sequences are from the original Lohman protocol. Index primers are the same as the WGBS primers (sequences [here](https://github.com/Putnam-Lab/Lab_Management/blob/master/Lab_Resourses/DNA_RNA-protocols/Indexes_and_Barcodes/UDI_Index_Primer_Pairs_for_Pico_WGBS.csv)). New index primers were used and diluted, compared to first attempt.

For information on primer sequences, see [1st attempt](https://meschedl.github.io/MESPutnam_Open_Lab_Notebook/TagSeq-Attemp-1/) where they were re-suspended and diluted.

**Sample Information**  

RNA from holobiont project was used as to not freeze-thaw Ariana's RNA. To get the fragmented RNA to show up on the tapestation, I started with a larger amount of input RNA. And I had to pick RNA samples that had larger RNA concentrations.

|Sample/Plug ID|species|ng/ul|RIN score|
|---|---|---|---|
|2204|Mcap|41|8.6|
|2202|Pacuta|80.5|8.2|
|1043|Pacuta|55.1|8.1|
|2860|Mcap|45|9.1|

**Everything besides the Qubit and TapeStation was done on the RNA bench**

## 20210707 RNA Fragmentation and RT Primer Annealing

- Cleaned bench, pipettes, and racks with RNaseZap
- Thawed RNA samples on ice
- Made 4 new strip tubes for sample dilution
- Samples diluted to 800ng in 20ul total
- Vortexed and spun down RNA before aliquoting on ice

|Sample|lib ID|ul ultrapure water|ul RNA|
|---|-----|-----|---|
|2204|5|0|20|
|2202|6|10.1|9.9|
|1043|7|3.5|14.5|
|2860|8|2.3|17.7|

- Turned on themocycler and started program 95 so the themocycler warmed up and the block was at 95 C (95C hold, 95C 2.5min)
- Prepared RNA fragmentation/RT master mix (RFRT)
  - 2ul dntps (10uM) * 4.4 = 8.8ul
  - 4ul 0.1M DTT * 4.4 = 17.6ul
  - 8ul 5x FS buffer * 4.4 = 35.2ul
  - 2ul 3iLL-30TV (10uM) *4.4 = 8.8ul
- Pipette mix and spin down RFRT
- Added 16ul RFRT to each RNA strip tube with the 800ng aliquots
- Pipette mixed strip tubes and spun down
- Placed strip tubes in warmed up thermocycler and pressed enter on program
- Took tubes out at the 2.5 min mark and put on the ice bucket for 2 minutes/until the next step
- Removed 1 ul from each sample for RNA tapestation analysis to confirm fragmentation
- Used [RNA TS protocol](https://meschedl.github.io/MESPutnam_Open_Lab_Notebook/RNA-TapeStation-Protocol/)
- [Results look completely fragmented, also concentration (around 20ng/ul RNA is expected)](https://github.com/meschedl/MESPutnam_Open_Lab_Notebook/blob/master/tapestation_pdfs/2021-07-07%20-%2016.12.07.pdf)
- Made 1X FS buffer to add back into samples from volume that was used:
  - 4ul of ultrapure water
  - 1ul 5X FS buffer
- Added 1ul of 1X FS buffer back into samples, still on ice

## 20210707 1st Strand cDNA Synthesis

- Made 1st strand master mix (FSMM)
  - 2ul SiLL - SWMW (10uM) * 4.4 = 8.8ul
  - 2ul SmartScribe RT * 4.4 = 8.8ul
- Pipette mixed FSMM and keep on ice
- Added 4ul FSMM to each strip tube
- Pipette mixed with 20ul and spun down strip tubes
- Turned on themocycler and started 1st Strand cDNA program, once the block was at 42 degrees, put the strip tubes in the machine and pressed enter (42 degrees C hold, 42 degrees C 60 min, 65 degrees C 15 min, 4 degree hold). Program is 1 hour 15 min long

## 20210707 0.9X Bead Cleanup 1

- Took out KAPA pure beads 1 hour before use, stored in drawer for warm up
- Made fresh 80% ethanol
- Spun down tubes out of the thermocycler
- Added 10ul ultra pure water to each sample (total vol now 50ul)
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
- Resuspended beads in 30ul ultra pure water
- Incubated tubes on the shaker for 5 minutes 2000rpm
- Placed on magnet and let solution go clear
- Removed 20ul in to strip tubes for continuing lib prep "c"
- Removed 10ul into strip tubes for labeled "S1" to save
- Kept C tubes on ice and S1 tubes in -20 freezer


## 20210707 cDNA Amplification

- Made cDNA master mix (CDMM):
  - 12ul ultra pure H20 * 4.4 = 52.8ul
  - 1ul 10uM dntps * 4.4 = 4.4ul
  - 4ul 10X PCR buffer * 4.4 = 17.6ul
  - 1ul 5iLL (10uM) * 4.4 = 4.4ul
  - 1ul 3iLL-30TV (10uM) *4.4 = 4.4ul
  - 1ul Klentaq * 4.4 = 4.4ul
- Mixed by pipetting, spun down, and kept on ice
- Added 20ul CDMM to the "c" cDNA strip tubes from the day before
- Pipette mixed and spun down
- Placed in thermocycler cDNA AMP 18 program (18 cycles recommended for less and 150ng input) (94 degrees C 1 min, _94 degrees C 1 min, 63 degrees C 2 min, 72 degrees C 2 min_, 4 degrees C hold. Italics are cycled 18 times). Program runs 1 hour 45 min, then left in the 4 degree hold overnight

## 20210708 0.9X Bead Cleanup 2

- Took out KAPA pure beads 1 hour before use, stored in drawer for warm up
- Made fresh 80% ethanol
- Spun down tubes out of the thermocycler
- Added 10ul ultra pure water to each sample (total vol now 50ul)
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
- Removed 20ul in to strip tubes for continuing lib prep "c"
- Removed 20ul into strip tubes "S2" for saving
- Followed [Qubit protocol](https://meschedl.github.io/MESPutnam_Open_Lab_Notebook/Qubit-Protocol/) for HS DNA Qubit kit to quantify 1ul from the S2 tubes

|Sample|average ng/ul|
|---|---|
|S1|41 RFU|
|S2|23715|
|5|too low|
|6|0.110|
|7|too low|
|8|too low|

- Because quantities were so low, I could not tapestation these to look at the size

## 20210708 PCR Index Addition

**Diluted primers to 3.uM**
- UDI 5
  - i7 UDI 5 : 1ul 200uM stock
  - i5 UDI 5 : 1ul 200uM stock
  - ultra pure water : 98ul
- UDI 6
  - i7 UDI 6 : 1ul 200uM stock
  - i5 UDI 6 : 1ul 200uM stock
  - ultra pure water : 98ul
- UDI 7
  - i7 UDI 7 : 1ul 200uM stock
  - i5 UDI 7 : 1ul 200uM stock
  - ultra pure water : 98ul
- UDI 8
  - i7 UDI 8 : 1ul 200uM stock
  - i5 UDI 8 : 1ul 200uM stock
  - ultra pure water : 98ul

**PCR**
- Make index master mix (IMM)
  - 25.3ul ultra pure water * 4.4 = 111.32ul
  - 1.5ul 10uM dntps * 4.4 = 6.6ul
  - 6ul 10X PCR buffer * 4.4 = 26.4ul
  - 1.2ul Klentaq * 4.4 = 5.28ul
- Pipette mixed and keep on ice
- Added 34ul of IMM to each contiune tube
- Added Indexes:
  - 5: 6ul of 3.9uM UDI 5
  - 6: 6ul of 3.9uM UDI 6
  - 7: 6ul of 3.9uM UDI 7
  - 8: 6ul of 3.9uM UDI 8
- Pipette mixed tubes and spun down
- Put in thermocycler idex PCR program ( 95 degrees C 5 min, _95 degrees C 40 sec, 63 degrees C 2 min, 72 degrees C 2 min_, 4 degree hold. Italics are cycled 6 times)

## 20210708 0.9X Bead Cleanup 3

- Took out KAPA pure beads 1 hour before use, stored in drawer for warm up
- Made fresh 80% ethanol
- Spun down tubes out of the thermocycler
- Added 54ul KAPA pure beads to each tube, pipette mixing 10 times for each tube (total tube volume is 60ul)
- Place tubes on the shaker for 15 min at 200rpm shaking
- After, placed tubes on the magnet stand and waited until the liquid was clear
- Removed 50ul of the clear supernatant from each tube
- Added 100ul of fresh 80% ethanol to each tube
- Removed 100ul of the clear supernatant from each tube
- Added 100ul of fresh 80% ethanol to each tube
- Removed 100ul of the clear supernatant from each tube
- Removed any remaining liquid with a p20
- Let "dry" for 3 min max
- Resuspended beads in 11ul ultra pure water
- Incubated tubes on the shaker for 5 minutes 2000rpm
- Placed on magnet and let solution go clear
- Removed 10ul in to final library labeled strip tubes and kept on ice for QC

## QC

**High Sensitivity Qubit**

- Followed [Qubit protocol](https://github.com/meschedl/PPP-Lab-Resources/blob/master/Protocols/Qubit-Assay-Protocol.md)

|Sample|Reading 1 (ng/ul)|Reading 2(ng/ul)|Average (ng/ul)|
|---|---|---|---|
|S1|38 RFU|-|-|
|S2|22221 RFU|-|-|
|5|0.138|0.136|0.137|
|6|0.236|0.238|0.237|
|7|0.106|0.108|0.107|
|8|0.108|0.108|0.108|

- Was not able to tapestation because concentration is too low to show up, and elution volume is already small. There was no way to concentrate them enough to get them to be readable


## Troubleshooting thoughts

- The first step looks good: the RNA is fragmented, I'm not sure what size they are supposed to be but at least all of them are uniform. The RIN scores from these samples are good as well. The concentration is also pretty high, 20ng/ul
- The Qubit after the cDNA amplification has me thinking that the problem we are having is happening/starting either at the 1st strand or the cDNA amplification. The concentration is high going into the 1st strand, 20ng/ul, although there is no way to know how much of that is the poly-A ends... In the [Lohman protocol](https://docs.google.com/document/d/1IgRz-NCeGUhxgNaD5H5OZxhYiX2cKwUv/edit) they say that the concentration should be around 1-2ng/ul after the cDNA step. It looks like the cDNA amplification didn't work, but it may not have worked because the 1st strand didn't work. We don't have a kit to quantify the ssDNA 1st strand, and it seems like it would be too low to quantify even if we did.
- Whatever the issue is, it's compounding, because the index PCR basically did nothing to increase the concentration of the DNA, which means the primers are barely annealing?
- I also noticed another difference between Lohman and UTAustin protocols, Lohman do not have a bead clean after the 1st strand synthesis and the UTA protocol does. Not sure if that is making any difference in our situation


## 20210709 "S1" QC, Qubit, NanoDrop, and TapeStation

**Ran RNA Qubit, NanoDrop for RNA, DNA, and ssDNA, and RNA TapeStation on the "saved" S1 samples after 1st strand sysnthesis**

RNA HS Qubit

|Sample|Reading 1 (ng/ul)|Reading 2(ng/ul)|Average (ng/ul)|
|---|---|---|---|
|S1|44 RFU|-|-|
|S2|718 RFU|-|-|
|5|16.9|16.5|16.75|
|6|20.2|20.2|20.2|
|7|22|22|22|
|8|22.6|22.4|22.5|

RNA NanoDrop

|Sample|ng/ul|260/280|260/230|
|---|---|---|---|
|5|15.96|2.06|2.25|
|6|20.23|2.04|2.11|
|7|21.64|2.07|1.81|
|8|22.13|2.02|2.1|

DNA NanoDrop

|Sample|ng/ul|260/280|260/230|
|---|---|---|---|
|5|19.96|2.14|2.27|
|6|25.55|2.07|2.19|
|7|27.47|2.06|1.79|
|8|27.69|1.92|2.08|

ssDNA NanoDrop

|Sample|ng/ul|260/280|260/230|
|---|---|---|---|
|5|13.05|2.13|2.27|
|6|16.8|2.07|2.25|
|7|18.31|2.06|1.74|
|8|18.37|1.93|2.09|

RNA TapeStation

[Results Link](https://github.com/meschedl/MESPutnam_Open_Lab_Notebook/blob/master/tapestation_pdfs/2021-07-09%20-%2017.21.30.pdf)


## 202100723 ssDNA Qubit

**Had to prepare libraries to the 1st strand synthesis stage to run ssDNA (single strand, also reads RNA though) Qubit on samples after fragmentation and after 1st strand synthesis**

### RNA Fragmentation and RT Primer Annealing

- Cleaned bench, pipettes, and racks with RNaseZap
- Thawed RNA samples on ice
- Made 4 new strip tubes for sample dilution
- Samples diluted to 800ng in 20ul total
- Vortexed and spun down RNA before aliquoting on ice

|Sample|lib ID|ul ultrapure water|ul RNA|
|---|-----|-----|---|
|2204|5A|0|10|
|2202|6A|5|5|
|1043|7A|1.25|8.75|
|2860|8A|1.15|8.85|

- Turned on themocycler and started program 95 so the themocycler warmed up and the block was at 95 C (95C hold, 95C 2.5min)
- Prepared RNA fragmentation/RT master mix (RFRT)
  - 1ul dntps (10uM) * 4.4 = 4.4ul
  - 2ul 0.1M DTT * 4.4 = 8.8ul
  - 4ul 5x FS buffer * 4.4 = 17.6ul
  - 1ul 3iLL-30TV (10uM) *4.4 = 4.4ul
- Pipette mix and spin down RFRT
- Added 8ul RFRT to each RNA strip tube with the 800ng aliquots
- Pipette mixed strip tubes and spun down
- Placed strip tubes in warmed up thermocycler and pressed enter on program
- Took tubes out at the 2.5 min mark and put on the ice bucket for 2 minutes/until the next step
- Removed 1.5 ul from each sample for ssDNA qubit later
- Made 1X FS buffer to add back into samples from volume that was used:
  - 8ul of ultrapure water
  - 2ul 5X FS buffer
- Added 1.5ul of 1X FS buffer back into samples, still on ice

### 20210707 1st Strand cDNA Synthesis

- Made 1st strand master mix (FSMM)
  - 1ul SiLL - SWMW (10uM) * 4.4 = 4.4ul
  - 1ul SmartScribe RT * 4.4 = 4.4ul
- Pipette mixed FSMM and keep on ice
- Added 2ul FSMM to each strip tube
- Pipette mixed with 10ul and spun down strip tubes
- Turned on themocycler and started 1st Strand cDNA program, once the block was at 42 degrees, put the strip tubes in the machine and pressed enter (42 degrees C hold, 42 degrees C 60 min, 65 degrees C 15 min, 4 degree hold). Program is 1 hour 15 min long

### 20210707 0.9X Bead Cleanup 1

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
- Removed 15ul into tubes for Qubit

### ssDNA Qubit

|Sample||Average (ng/ul)|
|---|---|
|S1|70 RFU|
|S2|718 RFU|
|5A - fragmentation|5|
|6A - fragmentation|4|
|7A - fragmentation|5.6|
|8 - fragmentation|5.12|
|5A - 1st strand|2.38|
|6A - 1st strand|3.62|
|7A - 1st strand|2.5|
|8A - 1st strand|3.12|
|SILL 10uM|77.2|
|SILL 200uM|too high to read|
|3ILL 10uM|95.4|
|3ILL 200uM|too high to read|
|5ILL 10uM|69.4|
|5ILL 200uM|too high to read|

## 20210727 Calculate molarities of primers from the ssDNA qubit values

Base Pair sizes for primers:

S-ILL: ACCCCATGGGGCTACACGACGCTCTTCCGATCTNNMWGGG **40 bp**  
3ILL-30TV: ACGTGTGCTCTTCCGATCTAATTTTTTTTTTTTTTTTTTTTTTTTTTTTTTV  **52 bp**  
5ILL:  CTACACGACGCTCTTCCGATCT **22 bp**

Molarity Calculations - Equation: (concentration/(660 * bp size)) * 1000000 = nM

- S-ILL: (77.2/(660 x 40)) x 1000000 = 2,727.27 nM which is 2.7mM   
- 3ILL-30TV: (95.4/(660 x 52)) x 1000000 = 2,779.72 nM which is 2.7mM  
- 5ILL: (69.4/(660 x 22)) x 1000000 = 4779.6 nM which is 4.8mM

These all should be 10mM. Not sure if the Qubit is slightly off, or if the dilution or original resuspention was wrong. Potentially this is why the library prep is not working?

## 20210728 Checking if original primer concentrations were correctly calculated

**3iLL - 30TV**  
104.6nmol dried  
523ul low TE for a 200uM stock solution  
Back calculation: 104.6nmol/523ul = 0.2nmol/ul which is nM, so this is 200uM. Correct calculation

**5iLL**  
90.8nmol dried  
454ul low TE for a 200uM stock solution  
Back calculation: 90.8nmol/454ul = 0.2nmol/ul, or nM. Which is 200uM. Correct calculation

**5iLL-SWMW**  
51.7nmol dried  
258.5ul TE  
Back calculation: 51.7nmol/258.5ul = 0.2nmol.ul, or nM, which is 200uM. Correct calculation
