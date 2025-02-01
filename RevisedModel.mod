# Sets
set AllRegions;
set ACTIVITIES;

# Parameters
param Total_Budget;

param Pi {AllRegions};
param Di {AllRegions};
param Ei {AllRegions};
param Ci {AllRegions};
param R;
param Rr;
param Cij {AllRegions, ACTIVITIES};
param Eij {AllRegions, ACTIVITIES};
param Pj {ACTIVITIES};
param Rj {ACTIVITIES};

# Variables
var x {AllRegions} >= 0;                     # Firefighting resources
var y {AllRegions, ACTIVITIES} >= 0;         # Recovery resources

# Objective 1: Minimize Damage
minimize Damage:
    sum {i in AllRegions} (Pi[i] * Di[i] * (1 - Ei[i] * x[i]));

# Objective 2: Minimizing Total Cost
minimize Cost:
    sum {i in AllRegions} (Ci[i] * x[i]) +
    sum {(i, j) in AllRegions cross ACTIVITIES} (Cij[i, j] * y[i, j]);

# Constraints
subject to Firefighting_Resources:
    sum {i in AllRegions} x[i] <= R;

subject to Recovery_Resources:
    sum {(i, j) in AllRegions cross ACTIVITIES} y[i, j] <= Rr;

subject to Activity_Minimum_Requirement {j in ACTIVITIES}:
    sum {i in AllRegions} y[i, j] >= Rj[j];

subject to Budget_Constraint:
    sum {i in AllRegions} (Ci[i] * x[i]) +
    sum {(i, j) in AllRegions cross ACTIVITIES} (Cij[i, j] * y[i, j]) <= Total_Budget;
;
