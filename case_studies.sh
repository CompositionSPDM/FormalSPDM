#!/bin/sh

# Timeout per lemma
TIMEOUT=3600

# Refinding the attack
python3 tamarin_wrapper.py spdm121_mode_switch_attack.spthy -t $TIMEOUT;

# Running the fixed version proposed by the authors
python3 tamarin_wrapper.py spdm121_composition_fix_proposed.spthy -t $TIMEOUT -p "attestation,secrecy,authentication";

# Running the fixed version which was implemented by DMTF's libspdm engineers
python3 tamarin_wrapper.py spdm121_composition_fix_implementation.spthy -t $TIMEOUT -p "attestation,secrecy,authentication";