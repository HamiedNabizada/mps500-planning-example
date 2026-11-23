# The configurations in detail

The plant model comes in 19 variants, named after the model level that changes: `B` is the
baseline, `I` changes the instance level, `T` the types, `P` the process description. Three
more configurations, `V1` to `V3`, cover the features of the profile.

## Instance level (`I1` to `I12`)

The domain and the annotation stay the same. Objects, initial state or goal differ.

| Configuration | What differs | `lama-first` | Scorpion |
|---|---|---|---|
| `B` | baseline, one carrier, one thermometer, goal "shipped" | 23 | 23 |
| `I1` | three workpieces from both raw stores, three goals | 75 | 75 |
| `I2` | four carriers on the transfer belt, competing for belt segments | 70 | 70 |
| `I3` | two workpieces with different goals (one stored, one shipped) | 49 | 46 |
| `I4` | misconfigured, the assembly station has no belt connection | unsolvable | unsolvable |
| `I5` | start from the buffer: the workpiece is already stored and the plan has to retrieve it | 20 | 20 |
| `I6` | six carriers on the belt ring, competing for belt segments | 83 | 83 |
| `I7` | a second shipping station, connected to belt segment `sh3` | 22 | 22 |

`I3` is the only case among these where optimizing search pays off. Two workpieces with
different goals can be interleaved, and the satisficing planner does not find that.

The unsolvability of `I4` is proven while grounding. The Fast Downward translator finds no
relaxed solution. The search that follows expands no state.

### Topology (`I8` to `I12`)

The full transfer belt topology with 30 segments. What varies are the bypasses a carrier can
take.

| Configuration | Bypasses | `lama-first` | Scorpion |
|---|---|---|---|
| `I8` | both | 46 | 35 |
| `I9` | none | 65 | 65 |
| `I10` | upper only | 61 | 59 |
| `I11` | lower only | 49 | 35 |

The four differ only in the belt routing. The lower bypass is the decisive one: `I11` has only
that and is optimal at 35 actions, like `I8` with both. The upper bypass alone barely helps,
with 59 actions for `I10` against 65 without any bypass. The optimal plan for `I8` never uses
the upper bypass.

For the search the upper bypass does matter: with it `lama-first` finds 46 actions instead of 49.

`I12` starts from the belt ring of the baseline `B` instead, 21 segments without bypasses,
and adds a single connection from `bu1` to `sh2`. The carrier can skip part of the ring. The
plan gets one action shorter, 22 instead of 23, for both planners.

## Type level (`T1` to `T3`) and process level (`P1` to `P3`)

The stations, actions and predicates change. The model is annotated again and the domain is
generated again.

| Configuration | What differs | `lama-first` | Scorpion |
|---|---|---|---|
| `T1` | assembly and buffer removed, shorter process chain | 16 | 16 |
| `T2` | an additional finishing stage between assembly and buffer | 27 | 27 |
| `T3` | thermometer and cylinder as subtypes of product, one goal over the supertype for both workpieces | 49 | 49 |
| `P1` | rework loop, inspected workpieces can go back into processing | 25 | 25 |
| `P2` | joining operation that consumes a part, workpiece and part become the assembled piece | 49 | 49 |
| `P3` | capability-based, one generic action with a precondition chain instead of three fixed processing steps | 23 | 23 |

From `T1` to `P3`, both planners find plans of the same length.

## Three configurations for rule coverage (`V1` to `V3`)

`V1`, `V2` and `V3` do not describe a plant variant. They exercise features of the profile
that do not occur in a plant model: disjunctions, implications, quantifiers, conditional
effects, numeric fluents.

`V1` and `V2` are annotated correctly, so the validation suite reports nothing there.
`V3` contains three injected errors, and the suite reports them.

`V1` is solved by 46 of the 54 planners, and VAL accepts every plan. Most plans have 23 actions.
Seven packages need 32 and one needs 79.

`V2` is solved by nine planners with numeric support, and VAL accepts every plan. Fast Downward
and the classical planners built on it do not process general numeric fluents and reject the file.
LPG-TD does not support `scale-up` and `scale-down`. Metric-FF does not know the requirement
`:numeric-fluents`. Both reject the file as well. ENHSP runs out of memory on it.

For `V3` the template detects all three broken formulas and puts visible markers in their
place, named after the construct: `UNKNOWN-OR-…` for the disjunction with a single operand,
`UNKNOWN-IMPLY-…` for the implication without a consequence, `UNKNOWN-LITERAL-…` for the literal
without a value. The generated file parses, but the markers are undeclared
identifiers. 50 planners reject it, three crash on it, and PlanForge returns a plan that VAL
rejects. The validation suite reports the same three
errors on the model (`FML-02`, `FML-04`, `FMA-03`) before a planner ever sees them.
