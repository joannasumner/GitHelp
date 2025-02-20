#!/bin/bash
# Display help for git aliases

GITHELP_VERSION=`$GITHELP_HOME/ghVERSION.sh`
printf "\n$GITHELP_VERSION\n"

${GITHELP_HOME}/ghCONFIG.sh

if [ "$1" == "-x" ]; then
    printf "gitHELP eXtended command list:\n"
    printf "$HELP_MESSAGE    gh        -  This help message\n"
    printf "$HELP_MESSAGE    ======= Convenience Commands ========================\n"
    printf "$HELP_MESSAGE    ghB       -  git Branch\n"
    printf "$HELP_MESSAGE    ghBUD     -  Browse Upstream Development by updating your local development branch and making it active\n"
    printf "$HELP_MESSAGE    ghL       -  git Log\n"
    printf "$HELP_MESSAGE    ghLRA     -  Lint Report for Android\n"
    printf "$HELP_MESSAGE    ghLSA     -  Static Analysis suite\n"
    printf "$HELP_MESSAGE    ghS       -  git Status\n"
    printf "$HELP_MESSAGE    ghDCB     -  Destroy Current Branch\n"
    printf "$HELP_MESSAGE    ghLMC     -  List Merge Conflicts\n"
    printf "$HELP_MESSAGE    ghCancelMerge\n"
    printf "$HELP_MESSAGE    ghClean   -  Delete \"Untracked\" files\n"
    printf "$HELP_MESSAGE    ghVERSION -  GitHelp Version\n"
    printf "$HELP_MESSAGE    ======= Repository Commands ========================\n"
    printf "$HELP_MESSAGE    ghROOT    -  change directory to the ROOT of the active repository\n"
    printf "$HELP_MESSAGE    ghCD      -  Change Directory to the root of the active repository\n"
    printf "$HELP_MESSAGE    ghCONFIG  -  githelp Configuration\n"
    printf "$HELP_MESSAGE    ghCR      -  Change active Repository and change directory to its root directory\n"
    printf "$HELP_MESSAGE    ghCO      -  Clone Origin\n"
    printf "$HELP_MESSAGE    ======= A ======  Misc Branches (not for a ticket) ====\n"
    printf "$HELP_MESSAGE    ghNMBD    -  create New Misc Branch from Development\n"
    printf "$HELP_MESSAGE    ghNMBE    -  create New Misc Branch from Epic\n"
    printf "$HELP_MESSAGE    ghNMBR    -  create New Misc Branch from Release\n"
    printf "$HELP_MESSAGE    ghNMBS    -  New Misc Branch From SHA\n"
    printf "$HELP_MESSAGE    ghNDMB    -  create New Derived Misc Branch\n"
    printf "$HELP_MESSAGE    ghCMB     -  Checkout Misc Branch\n"
    printf "$HELP_MESSAGE    ghDMB     -  Destroy Miscellaneous Branch\n"
    printf "$HELP_MESSAGE    ======= B =========  Ticket Branches  ==================\n"
    printf "$HELP_MESSAGE    ghNTBD    -  create New Ticket Branch from Development\n"
    printf "$HELP_MESSAGE    ghNTBE    -  create New Ticket Branch from Epic\n"
    printf "$HELP_MESSAGE    ghNTBR    -  create New Ticket Branch from Release\n"
    printf "$HELP_MESSAGE    ghNTBS    -  New Ticket Branch From SHA\n"
    printf "$HELP_MESSAGE    ghNDTB    -  create New Derived Ticket Branch\n"
    printf "$HELP_MESSAGE    ghRT      -  Review Ticket\n"
    printf "$HELP_MESSAGE    ghCTB     -  Checkout Ticket Branch\n"
    printf "$HELP_MESSAGE    ghDTB     -  Destroy Ticket Branch\n"
    printf "$HELP_MESSAGE    ======= C =========  Update Branch  =================\n"
    printf "$HELP_MESSAGE    ghUBUD    -  Update current Branch with Upstream Development\n"
    printf "$HELP_MESSAGE    ghUBUR    -  Update current Branch with Upstream Release Branch\n"
    printf "$HELP_MESSAGE    ghUBUE    -  Update current Branch with Upstream Epic Branch\n"
    printf "$HELP_MESSAGE    ghRTS     -  Revert current branch To SHA\n"
    printf "$HELP_MESSAGE    ghLMC     -  List Merge Conflicts\n"
    printf "$HELP_MESSAGE    ======= D1 =========  Pull Requests  =================\n"
    printf "$HELP_MESSAGE    ghNPRD    -  New Pull Request (PR) for the upstream Development branch\n"
    printf "$HELP_MESSAGE    ghNPRR    -  New Pull Request (PR) for an upstream Release branch\n"
    printf "$HELP_MESSAGE    ghNPRE    -  New Pull Request (PR) for an upstream Epic branch\n"
    printf "$HELP_MESSAGE    ghNPRFTB  -  New Pull Request (PR) for a Fork Ticket Branch\n"
    printf "$HELP_MESSAGE    ghNPRFMB  -  New Pull Request (PR) for a Fork Misc Branch\n"
    printf "$HELP_MESSAGE    ghFPRB    -  Fetch a Pull Request Branch\n"
    printf "$HELP_MESSAGE    ======= D2 =========  Merge Requests  =================\n"
    printf "$HELP_MESSAGE    ghNMRD    -  New Merge Request for the upstream Development branch\n"
    printf "$HELP_MESSAGE    ghNMRR    -  New Merge Request for an upstream Release branch\n"
    printf "$HELP_MESSAGE    ghNMRE    -  New Merge Request for an upstream Epic branch\n"
    printf "$HELP_MESSAGE    ghNMRFTB  -  New Merge Request for a Fork Ticket Branch\n"
    printf "$HELP_MESSAGE    ghNMRFMB  -  New Merge Request for a Fork Misc Branch\n"
    printf "$HELP_MESSAGE    ======= E =========  Branches  ======================\n"
    printf "$HELP_MESSAGE    ghLOB     -  List Origin Branches\n"
    printf "$HELP_MESSAGE    ghFOB     -  Fetch Origin Branch\n"
    printf "$HELP_MESSAGE    ghLUB     -  List Upstream Branches\n"
    printf "$HELP_MESSAGE    ghLRB     -  List Release Branches\n"
    printf "$HELP_MESSAGE    ghLEB     -  List Epic Branches\n"
    printf "$HELP_MESSAGE    ======= F =========  Forks (not yours)  =============\n"
    printf "$HELP_MESSAGE    ghLFB     -  List Fork Branches\n"
    printf "$HELP_MESSAGE    ghLFD     -  List Fork Developers\n"
    printf "$HELP_MESSAGE    ghFFTB    -  Fetch Fork Ticket Branch\n"
    printf "$HELP_MESSAGE    ghFFMB    -  Fetch Fork Misc Branch\n"
    printf "$HELP_MESSAGE    ghUBFTB   -  Update current Branch with Fork Ticket Branch\n"
    printf "$HELP_MESSAGE    ghUBFMB   -  Update current Branch with Fork Misc Branch\n"
    printf "$HELP_MESSAGE    ghNPRFTB  -  New Pull Request (PR) for a Fork Ticket branch\n"
    printf "$HELP_MESSAGE    ghNPRFMB  -  New Pull Request (PR) for a Fork Misc branch\n"
    printf "$HELP_MESSAGE    ghRPRF    -  Review Pull Requests for a Fork\n"
    printf "$HELP_MESSAGE    ======= G =========  Clean  =========================\n"
    printf "$HELP_MESSAGE    ghCUF     -  Clean Untracked Files\n"
    printf "$HELP_MESSAGE    ghCUCB    -  Clean Untracked files and Checkout Branch\n"
    printf "$HELP_MESSAGE    ghSCDC    -  Stash Changes and Drop and Clean\n"
    printf "$HELP_MESSAGE    ======= H =========  Misc Updates  ==================\n"
    printf "$HELP_MESSAGE    ghCPSHA   -  Cherry Pick SHA into the current branch\n"
    printf "$HELP_MESSAGE    ghLMC     -  List Merge Conflicts\n"
    printf "$HELP_MESSAGE    ======= J =========  SHAs  ==========================\n"
    printf "$HELP_MESSAGE    ghRTS     -  Revert current branch to SHA\n"
    printf "$HELP_MESSAGE    ghNTBFSHA -  New Ticket Branch From SHA\n"
    printf "$HELP_MESSAGE    ghNMBFSHA -  New Misc Branch From SHA\n"
    printf "$HELP_MESSAGE    ghCPSHA   -  Cherry Pick sha into the current branch\n"
    printf "$HELP_MESSAGE    ======= K =========  Wiki  ==========================\n"
    printf "$HELP_MESSAGE    ghCloneWiki\n"
    printf "$HELP_MESSAGE    ghPullWiki\n"
    printf "$HELP_MESSAGE    ghUpdateWiki\n"
    printf "$HELP_MESSAGE    ======= M =========  Maintenance  ===================\n"
    printf "$HELP_MESSAGE    ghPOB     -  Prune Origin Branches, except development\n"
    printf "$HELP_MESSAGE    ghPLB     -  Prune Local Branches, except development\n"
    printf "$HELP_MESSAGE    ghPLBNOO  -  Prune Local Branches Not On Origin\n"
    printf "$HELP_MESSAGE    ghPOBNOL  -  Prune Origin Branches Not On Local, except development\n"
    printf "$HELP_MESSAGE    ghREMOTE  -  List verbose remote definitions\n"
    printf "$HELP_MESSAGE    ghEDITOR  -  Default editor configuration for git\n"
    printf "$HELP_MESSAGE    ======= Z =========  DANGER  ===================\n"
    printf "$HELP_MESSAGE    ghCW      -  Car Wash\n"
    printf "$HELP_MESSAGE    ghRH      -  Reset Hard\n"
else
    printf "gitHELP frequently used commands:\n"
    printf "$HELP_MESSAGE    gh        -  This help message\n"
    printf "$HELP_MESSAGE    ======= Convenience Commands ========================\n"
    printf "$HELP_MESSAGE    ghB       -  git Branch\n"
    printf "$HELP_MESSAGE    ghBUD     -  Browse Upstream Development by updating your local development branch and making it active\n"
    printf "$HELP_MESSAGE    ghL       -  git Log\n"
    printf "$HELP_MESSAGE    ghLRA     -  Lint Report for Android\n"
    printf "$HELP_MESSAGE    ghLSA     -  Static Analysis suite\n"
    printf "$HELP_MESSAGE    ghS       -  git Status\n"
    printf "$HELP_MESSAGE    ghDCB     -  Destroy Current Branch\n"
    printf "$HELP_MESSAGE    ghLMC     -  List Merge Conflicts\n"
    printf "$HELP_MESSAGE    ghCancelMerge\n"
    printf "$HELP_MESSAGE    ghClean   -  Delete \"Untracked\" files\n"
    printf "$HELP_MESSAGE    ghVERSION -  GitHelp Version\n"
    printf "$HELP_MESSAGE    ======= Repository Commands ========================\n"
    printf "$HELP_MESSAGE    ghROOT    -  change directory to the ROOT of the active repository\n"
    printf "$HELP_MESSAGE    ghCD      -  Change Directory to the root of the active repository\n"
    printf "$HELP_MESSAGE    ghCONFIG  -  githelp Configuration\n"
    printf "$HELP_MESSAGE    ghCR      -  Change active Repository and change directory to its root directory\n"
    printf "$HELP_MESSAGE    ghCO      -  Clone Origin\n"
    printf "$HELP_MESSAGE    ======= A ======  Misc Branches (not for a ticket) ====\n"
    printf "$HELP_MESSAGE    ghNMBD    -  create New Misc Branch from Development\n"
    printf "$HELP_MESSAGE    ghNMBE    -  create New Misc Branch from Epic\n"
    printf "$HELP_MESSAGE    ghNMBR    -  create New Misc Branch from Release\n"
    printf "$HELP_MESSAGE    ghNMBS    -  New Misc Branch From SHA\n"
    printf "$HELP_MESSAGE    ghNDMB    -  create New Derived Misc Branch\n"
    printf "$HELP_MESSAGE    ghCMB     -  Checkout Misc Branch\n"
    printf "$HELP_MESSAGE    ghDMB     -  Destroy Miscellaneous Branch\n"
    printf "$HELP_MESSAGE    ======= B =========  Ticket Branches  ==================\n"
    printf "$HELP_MESSAGE    ghNTBD    -  create New Ticket Branch from Development\n"
    printf "$HELP_MESSAGE    ghNTBE    -  create New Ticket Branch from Epic\n"
    printf "$HELP_MESSAGE    ghNTBR    -  create New Ticket Branch from Release\n"
    printf "$HELP_MESSAGE    ghNTBS    -  New Ticket Branch From SHA\n"
    printf "$HELP_MESSAGE    ghNDTB    -  create New Derived Ticket Branch\n"
    printf "$HELP_MESSAGE    ghRT      -  Review Ticket\n"
    printf "$HELP_MESSAGE    ghCTB     -  Checkout Ticket Branch\n"
    printf "$HELP_MESSAGE    ghDTB     -  Destroy Ticket Branch\n"
    printf "$HELP_MESSAGE    ======= C =========  Update Branch  =================\n"
    printf "$HELP_MESSAGE    ghUBUD    -  Update current Branch with Upstream Development\n"
    printf "$HELP_MESSAGE    ghUBUR    -  Update current Branch with Upstream Release Branch\n"
    printf "$HELP_MESSAGE    ghUBUE    -  Update current Branch with Upstream Epic Branch\n"
    printf "$HELP_MESSAGE    ghRTS     -  Revert current branch to SHA\n"
    printf "$HELP_MESSAGE    ghLMC     -  List Merge Conflicts\n"
    printf "$HELP_MESSAGE    ======= D1 =========  Pull Requests  =================\n"
    printf "$HELP_MESSAGE    ghNPRD    -  New Pull Request (PR) for the upstream Development branch\n"
    printf "$HELP_MESSAGE    ghNPRR    -  New Pull Request (PR) for an upstream Release branch\n"
    printf "$HELP_MESSAGE    ghNPRE    -  New Pull Request (PR) for an upstream Epic branch\n"
    printf "$HELP_MESSAGE    ghNPRFTB  -  New Pull Request (PR) for a Fork Ticket Branch\n"
    printf "$HELP_MESSAGE    ghNPRFMB  -  New Pull Request (PR) for a Fork Misc Branch\n"
    printf "$HELP_MESSAGE    ghFPRB    -  Fetch a Pull Request Branch\n"
    printf "$HELP_MESSAGE    ======= D2 =========  Merge Requests  =================\n"
    printf "$HELP_MESSAGE    ghNMRD    -  New Merge Request for the upstream Development branch\n"
    printf "$HELP_MESSAGE    ghNMRR    -  New Merge Request for an upstream Release branch\n"
    printf "$HELP_MESSAGE    ghNMRE    -  New Merge Request for an upstream Epic branch\n"
    printf "$HELP_MESSAGE    ghNMRFTB  -  New Merge Request for a Fork Ticket Branch\n"
    printf "$HELP_MESSAGE    ghNMRFMB  -  New Merge Request for a Fork Misc Branch\n"
    printf "$HELP_MESSAGE    ======= E =========  Branches  =================\n"
    printf "$HELP_MESSAGE    ghLOB     -  List Origin Branches\n"
    printf "$HELP_MESSAGE    ghFOB     -  Fetch Origin Branch\n"
    printf "$HELP_MESSAGE    ghLUB     -  List Upstream Branches\n"
    printf "$HELP_MESSAGE    ghLRB     -  List Release Branches\n"
    printf "$HELP_MESSAGE    ghLEB     -  List Epic Branches\n"
    printf "$HELP_MESSAGE    ======= F =========  Forks (not yours)  =============\n"
    printf "$HELP_MESSAGE    ghLFB     -  List Fork Branches\n"
    printf "$HELP_MESSAGE    ghFFTB    -  Fetch Fork Ticket Branch\n"
    printf "$HELP_MESSAGE    ghFFMB    -  Fetch Fork Misc Branch\n"
    printf "$HELP_MESSAGE    ghUBFTB   -  Update current Branch with Fork Ticket Branch\n"
    printf "$HELP_MESSAGE    ghUBFMB   -  Update current Branch with Fork Misc Branch\n"
    printf "$HELP_MESSAGE    ghNPRFTB  -  New Pull Request (PR) for a Fork Ticket branch\n"
    printf "$HELP_MESSAGE    ghNPRFMB  -  New Pull Request (PR) for a Fork Misc branch\n"
    printf "$HELP_MESSAGE    ghRPRF    -  Review Pull Requests for a Fork\n"
    printf "$HELP_MESSAGE    ======= M =========  Maintenance  ===================\n"
    printf "$HELP_MESSAGE    ghPOB     -  Prune Origin Branches, except development\n"
    printf "$HELP_MESSAGE    ghPLB     -  Prune Local Branches, except development\n"
    printf "$HELP_MESSAGE    ghPLBNOO  -  Prune Local Branches Not On Origin\n"
    printf "$HELP_MESSAGE    ghREMOTE  -  List verbose remote definitions\n"
    printf "$HELP_MESSAGE    ghEDITOR  -  Default editor configuration for git\n"
    printf "$HELP_MESSAGE    ======= Z =========  DANGER  ===================\n"
    printf "$HELP_MESSAGE    ghCW      -  Car Wash\n"
    printf "$HELP_MESSAGE    ghRH      -  Reset Hard\n"
fi

printf "$HELP_MESSAGE\n"

printf "$GITHELP_VERSION\n\n"
