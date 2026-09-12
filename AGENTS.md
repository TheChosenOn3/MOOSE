# MOOSE fork

- `origin` is TheChosenOn3/MOOSE. `upstream` is FlightControl-Master/MOOSE; its current release branch is `master-ng`, not the frozen `master` branch.
- DCS loads `Moose Development/Moose` through the installation's `Scripts/Moose` junction. Stage upgrades in a worktree and validate them before updating the deployed checkout.
- Preserve fork history when merging upstream. Keep dispatcher fixes in separate commits from the upstream merge; record the pinned upstream SHA.
- Operation Northern Storm adds mission-specific allocation settings and diagnostics. Validate the repositories together using `python C:/Git/Operation-Northern-Storm/Tools/DcsValidation/run_tests.py --moose <this-worktree> --dct <dct-worktree>` (Python with `lupa.lua51`).
- The regression harness executes real tasking, CAP, and pause/resume methods with DCS stubs. A private DCS mission run is still required to validate engine behavior.
- Updating modern MOOSE removes legacy AI/CARGO dispatchers. Rollback must restore the matching framework and mission revisions together.
