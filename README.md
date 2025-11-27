# Project Title
Ramayan Knowledge Base Using Prolog


## Overview of the Project
This project represents characters, family relationships, major events, battles, alliances, and locations from the Ramayana using **Prolog**. Users can query relationships like parent, sibling, ancestor, marriage, alliances, and enemy relations. The project demonstrates **logical reasoning** and **rule-based knowledge representation** in AI.


## Features
- Male and female character identification  
- Family tree: father, mother, parent, ancestor  
- Sibling and marital relationships  
- Kings and kingdoms  
- Exile, abduction, and rescue events  
- Battles and weapons used  
- Alliances, enmities, and defections  
- Location information  
- Derived rules for advanced queries


## Technologies / Tools Used
- **Prolog (SWI-Prolog)**  
- Logical inference  
- Rule-based reasoning  


## Steps to Install & Run the Project

### Offline (With SWI-Prolog Installed)
1. Download and install **SWI-Prolog**:
         [swipl.org/download](https://www.swi-prolog.org/download/stable)  
2. Save the code as `ramayan.pl`  
3. Open terminal/command prompt and run:
   ```prolog
   swipl ramayan.pl
4. Load the file in SWI-Prolog:
         ?- [ramayan].
5. Run queries like:
parent(dasharath, Who).
sibling(ram, Who).
ancestor(dasharath, X).
enemy_of(ram, Whom).
allied_with(ram, Who).
killed(ravan, by(Who)).
used_weapon(ram, Weapon).
exile(ram, From, To).
abducted(sita, from(Where), by(Who)).
rescued(sita, by(Who)).


## Instructions for Testing
- Run queries listed above to check family relationships, battles, events, and alliances
- Use . after each query to see all possible results
- Check symmetric rules:
           married(ram, Who).
           allied_with(ram, Who).
           enemy_of(ram, Who).

 
