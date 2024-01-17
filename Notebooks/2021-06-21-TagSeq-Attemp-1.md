---
layout: post
title: TagSeq Library Prep Test
category: [ Library Prep, ]
tag: [ RNA, TagSeq ]
---

# Testing TagSeq Protocol on 4 RNA Samples from Ariana's Coral Larvae

**Goal** Sucessfully make 4 TagSeq libraries  
**Results** Library prep barely worked  
**Takeaways** Adapter sequences may be off or something is wrong with them because the libraries are un-sequencable


### Library prep followed almost exactly the protocol from UT Austin (where applicable), except stopped before pooling. Adapter and template switching oligo sequences are from the original Lohman protocol. Index primers are the same as the WGBS primers (sequences [here](https://github.com/Putnam-Lab/Lab_Management/blob/master/Lab_Resourses/DNA_RNA-protocols/Indexes_and_Barcodes/UDI_Index_Primer_Pairs_for_Pico_WGBS.csv))

**Everything besides the Qubit and TapeStation was done on the RNA bench**

## 20210621 Re-constitute oligos and prep solutions

**Oligos**

- Followed [resuspending oligo protocol](https://github.com/meschedl/PPP-Lab-Resources/blob/master/Protocols/Oligos-Anneal-Adapters.md) for the oligos
- 3iLL - 30TV : ACGTGTGCTCTTCCGATCTAATTTTTTTTTTTTTTTTTTTTTTTTTTTTTTV
  - 104.6nmol dried
  - 523ul low TE for a 200uM stock solution
- 5iLL : CTACACGACGCTCTTCCGATCT
  - 90.8nmol dried
  - 454ul low TE for a 200uM stock solution
- 5iLL-SWMW : ACCCCATGGGGCTACACGACGCTCTTCCGATCTNNMWGGG
  - 51.7nmol dried
  - 258.5ul TE (used TE because [IDT website recomends TE for RNA](https://www.idtdna.com/pages/education/decoded/article/tips-for-resuspending-and-diluting-your-oligonucleotides), probably low TE would be fine but I'm not sure)
- 10uM working stocks were made for each re-suspended olio
  - 3iLL - 30TV: 10ul 200uM stock, 190ul ultrapure water
  - 5iLL: 10ul 200uM stock, 190ul ultrapure water
  - 5iLL-SWMW: 5ul 200uM stock, 95ul ultrapure water
- Working stocks were vortexed, spun down, and kept on ice for the prep
- Stock tubes were stored in TagSeq reagent box in -20

**DTT**

- Followed [protocol](https://www.cshlpress.com/pdf/sample/2014/LabRefV1/LabRefV1Ch1S1.pdf) for 1M DTT mixing
- Measured 1.5g of DTT (powder stored in -20) (smells very bad but non-hazardous for inhalation, just touch or ingestion)
- Added to 8mL of ultrapure H20 in a 15mL conical
- Vortexed
- Added ultra pure H20 to 10mL
- Vortexed and mixed conical until dissolved
- Covered in foil
- Aliquoted 1mL of 1M DTT into 10 1.5mL tubes covered in foil
- Made a 1.5mL tube for 0.1M DTT: 100ul of 1M DTT and 900ul of ultra pure water
- **All DTT tubes are covered in foil to block light**
- 1M DTT tubes stored at -20 in TagSeq box
- 0.1M DTT tube stored on ice until use

## 20210621 RNA Fragmentation and RT Primer Annealing

- Cleaned bench, pipettes, and racks with RNaseZap
- Thawed RNA samples on ice
- Made 4 new strip tubes for sample dilution
- Samples diluted to 125ng in 10ul total
- Vortexed and spun down RNA before aliquoting on ice

|Sample|ul ultrapure water|ul RNA|
|---|-----|-----|
|D17|7.49|2.51|
|D12|8.52|1.48|
|D9|8.81|1.19|
|D4|9.55|0.45|

- Turned on themocycler and started program 95 so the themocycler warmed up and the block was at 95 C (95C hold, 95C 2.5min)
- Prepared RNA fragmentation/RT master mix (RFRT)
  - 1ul dntps (10uM) * 4.4 = 4.4ul
  - 2ul 0.1M DTT * 4.4 = 8.8ul
  - 4ul 5x FS buffer * 4.4 = 17.6ul
  - 1ul 3iLL-30TV (10uM) *4.4 = 4.4ul
- Pipette mix and spin down RFRT
- Added 8ul RFRT to each RNA strip tube with the 125ng aliquots
- Pipette mixed strip tubes and spun down
- Placed strip tubes in warmed up thermocycler and pressed enter on program
- Took tubes out at the 2.5 min mark and put on the ice bucket for 2 minutes (at least, going into next step)

## 20210621 1st Strand cDNA Synthesis

- Made 1st strand master mix (FSMM)
  - 1ul SiLL - SWMW (10uM) * 4.4 = 4.4ul
  - 1ul SmartScribe RT * 4.4 = 4.4ul
- Pipette mixed FSMM and keep on ice
- Added 2ul FSMM to each strip tube
- Pipette mixed with 15ul and spun down strip tubes
- Turned on themocycler and started 1st Strand cDNA program, once the block was at 42 degrees, put the strip tubes in the machine and pressed enter (42 degrees C hold, 42 degrees C 60 min, 65 degrees C 15 min, 4 degree hold). Program is 1 hour 15 min long

## 20210621 0.9X Bead Cleanup

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
- Removed 5ul into strip tubes for "save"
- Froze both sets of strip tubes at -20 for overnight

## 20210622 cDNA Amplification

- Thawed continuing cDNA from the day before on ice
- Made cDNA master mix (CDMM):
  - 6ul ultra pure H20 * 4.4 = 26.4ul
  - 0.5ul 10uM dntps * 4.4 = 2.2ul
  - 2ul 10X PCR buffer * 4.4 = 8.8ul
  - 0.5ul 5iLL (10uM) * 4.4 = 2.2ul
  - 0.5ul 3iLL-30TV (10uM) *4.4 = 2.2ul
  - 0.5ul Klentaq * 4.4 = 2.2ul
- Mixed by pipetting, spun down, and kept on ice
- Added 10ul CDMM to the "c" cDNA strip tubes from the day before
- Pipette mixed and spun down
- Placed in thermocycler cDNA AMP 18 program (18 cycles recommended for less and 150ng input) (94 degrees C 1 min, _94 degrees C 1 min, 63 degrees C 2 min, 72 degrees C 2 min_, 4 degrees C hold. Italics are cycled 18 times). Program runs 1 hour 45 min

## 20210622 0.9X Bead Cleanup 1

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
- Removed 10ul into strip tubes for "save"
- Froze save set of strip tubes at -20
- Kept "c" strip tubes on ice for continuing

## 20210622 PCR Index Addition

**Diluted primers to 3.uM** (there were two options on the protocol, I just chose 3.9uM randomly)
- UDI 1
  - i7 UDI 1 : 1.95ul 200uM stock
  - i5 UDI 1 : 1.95ul 200uM stock
  - ultra pure water : 196.1ul
- UDI 2
  - i7 UDI 2 : 1.95ul 200uM stock
  - i5 UDI 2 : 1.95ul 200uM stock
  - ultra pure water : 196.1ul
- UDI 3
  - i7 UDI 3 : 1.95ul 200uM stock
  - i5 UDI 3 : 1.95ul 200uM stock
  - ultra pure water : 196.1ul
- UDI 4
  - i7 UDI 4 : 1.95ul 200uM stock
  - i5 UDI 4 : 1.95ul 200uM stock
  - ultra pure water : 196.1ul

**PCR**
- Make index master mix (IMM)
  - 12.65ul ultra pure water * 4.4 = 55.66ul
  - 0.75ul 10uM dntps * 4.4 = 3.3ul
  - 3ul 10X PCR buffer * 4.4 = 13.2ul
  - 0.6ul Klentaq * 4.4 = 2.64ul
- Pipette mixed and keep on ice
- Added 17.5ul of IMM to each contiune tube
- Added Indexes:
  - D17: 3ul of 3.9uM UDI 1
  - D12: 3ul of 3.9uM UDI 2
  - D9: 3ul of 3.9uM UDI 3
  - D4: 3ul of 3.9uM UDI 4
- Pipette mixed tubes and spun down
- Put in thermocycler idex PCR program ( 95 degrees C 5 min, _95 degrees C 40 sec, 63 degrees C 2 min, 72 degrees C 2 min_, 4 degree hold. Italics are cycled 4 times)

## 20210622 0.9X Bead Cleanup 2

- Took out KAPA pure beads 1 hour before use, stored in drawer for warm up
- Made fresh 80% ethanol
- Spun down tubes out of the thermocycler
- Added 27ul KAPA pure beads to each tube, pipette mixing 10 times for each tube
- Place tubes on the shaker for 15 min at 200rpm shaking
- After, placed tubes on the magnet stand and waited until the liquid was clear
- Removed 50ul of the clear supernatant from each tube
- Added 100ul of fresh 80% ethanol to each tube
- Removed 100ul of the clear supernatant from each tube
- Added 100ul of fresh 80% ethanol to each tube
- Removed 100ul of the clear supernatant from each tube
- Removed any remaining liquid with a p20
- Let "dry" for 3 min max
- Resuspended beads in 28ul ultra pure water
- Incubated tubes on the shaker for 5 minutes 2000rpm
- Placed on magnet and let solution go clear
- Removed 25ul in to final library labeled strip tubes and kept on ice for QC

## QC

**High Sensitivity Qubit**

- Followed [Qubit protocol](https://github.com/meschedl/PPP-Lab-Resources/blob/master/Protocols/Qubit-Assay-Protocol.md)

|Sample|Reading 1 (ng/ul)|Reading 2(ng/ul)|Average (ng/ul)|
|---|---|---|---|
|S1|41.3 RFU|-|-|
|S2|23422 RFU|-|-|
|D17|2.5|2.5|2.5|
|D12|0.864|0.87|0.868|
|D9|0.72|0.72|0.72|
|D4|0.54|0.542|0.541|

**Concerned about the concentration being so low and not being able to see it on the TapeStation, I did another 1X bead cleanup and eluted in 7ul, then ran 1ul on the tapestation**

**1X cleanup**
- Took out KAPA pure beads and warmed in hands, had previously made ethanol
- Added 24ul KAPA pure beads to each tube, pipette mixing 10 times for each tube
- Place tubes on the shaker for 15 min at 200rpm shaking
- After, placed tubes on the magnet stand and waited until the liquid was clear
- Removed 50ul of the clear supernatant from each tube
- Added 100ul of fresh 80% ethanol to each tube
- Removed 100ul of the clear supernatant from each tube
- Added 100ul of fresh 80% ethanol to each tube
- Removed 100ul of the clear supernatant from each tube
- Removed any remaining liquid with a p20
- Let "dry" for 3 min max
- Resuspended beads in 7ul ultra pure water
- Incubated tubes on the shaker for 5 minutes 2000rpm
- Placed on magnet and let solution go clear
- Removed 7ul into new strip tubes labeled as final libraries

**D5000 TapeStation**

#### D5000 TapeStation
- Followed [TapeStation protocol](https://meschedl.github.io/MESPutnam_Open_Lab_Notebook/DNA-Tapestation/)
- [Results Link](https://github.com/meschedl/MESPutnam_Open_Lab_Notebook/blob/master/tapestation_pdfs/2021-06-22%20-%2016.46.30.pdf)

Libraries are super faint but there. Size is similar
