# Planners and versions

`plans/planner_portfolio.csv` lists the runs of the planner portfolio per package. This file says where each
package comes from and which version ran. There are four kinds of source:

- planutils packages, planutils 0.10.23, installed on 2026-02-03. Some of them wrap a container image that was pulled at
  installation. The IPC 2023 packages build the competition entry from its repository; the commit given is the
  head of the branch they check out.
- IPC 2023 classical entries built from their competition repositories, with the Apptainer recipe named in the
  table, for entries whose planutils package could not be run or does not exist.
- IPC 2026 numeric entries, NLM-CutPlan and OMTPlan (IPC 2023 numeric), built from their competition repositories.
- Scorpion, built from its repository and run with the alias `scorpion`.

Commits are abbreviated to seven characters.

| Planner | Package | Source | Version |
|---|---|---|---|
| ApxNovelty | `ipc2023_ApxNovelty` | [`ipc2023-classical/planner29`](https://github.com/ipc2023-classical/planner29), recipe `Apptainer.ApxNovelty` | `698fa30` |
| ApxNovelty | `ipc2023_ApxNoveltyAnytime` | [`ipc2023-classical/planner29`](https://github.com/ipc2023-classical/planner29), recipe `Apptainer.ApxNoveltyAnytime` | `698fa30` |
| ApxNovelty | `ipc2023_ApxNoveltyTarski` | [`ipc2023-classical/planner29`](https://github.com/ipc2023-classical/planner29), recipe `Apptainer.ApxNoveltyTarski` | `698fa30` |
| CEGAR++ | `ipc2023_cegarplusplus` | planutils package `ipc2023_cegarplusplus`, built from [`ipc2023-classical/planner34`](https://github.com/ipc2023-classical/planner34), branch `latest` | `184cbbc` |
| Cerberus | `cerberus-sat` | planutils package `cerberus-sat` | planutils 0.10.23 |
| Cerberus | `ipc2023_cerberus_agl` | [`ipc2023-classical/planner23`](https://github.com/ipc2023-classical/planner23), recipe `Apptainer.cerberus_agl` | `bf05b21` |
| Cerberus | `ipc2023_cerberus_sat` | [`ipc2023-classical/planner23`](https://github.com/ipc2023-classical/planner23), recipe `Apptainer.cerberus_sat` | `bf05b21` |
| Complementary | `ipc2023_complementary` | planutils package `ipc2023_complementary`, built from [`ipc2023-classical/planner7`](https://github.com/ipc2023-classical/planner7), branch `latest` | `7825cd8` |
| Count Downward | `cd-agl` | [`ipc2026-numeric/team-7`](https://github.com/ipc2026-numeric/team-7) | `42de017` |
| Count Downward | `cd-opt` | [`ipc2026-numeric/team-7`](https://github.com/ipc2026-numeric/team-7) | `42de017` |
| Count Downward | `cd-sat` | [`ipc2026-numeric/team-7`](https://github.com/ipc2026-numeric/team-7) | `42de017` |
| Count Downward Together | `cdt-opt` | [`ipc2026-numeric/team-11`](https://github.com/ipc2026-numeric/team-11) | `6193ea1` |
| Dalai | `ipc2023_dalai_agl` | [`ipc2023-classical/planner4`](https://github.com/ipc2023-classical/planner4), recipe `Apptainer.dalai_agl` | `35c7de4` |
| Dalai | `ipc2023_dalai_opt` | planutils package `ipc2023_dalai_opt`, built from [`ipc2023-classical/planner4`](https://github.com/ipc2023-classical/planner4), branch `latest` | `35c7de4` |
| Dalai | `ipc2023_dalai_sat` | planutils package `ipc2023_dalai_sat`, built from [`ipc2023-classical/planner4`](https://github.com/ipc2023-classical/planner4), branch `latest` | `35c7de4` |
| DecAbStar | `ipc2023_decabstar` | [`ipc2023-classical/planner18`](https://github.com/ipc2023-classical/planner18), recipe `Apptainer.decabstar` | `d874955` |
| DecStar | `ipc2023_decstar_agl` | [`ipc2023-classical/planner15`](https://github.com/ipc2023-classical/planner15) | `be47954` |
| DecStar | `ipc2023_decstar_opt` | [`ipc2023-classical/planner15`](https://github.com/ipc2023-classical/planner15) | `be47954` |
| DecStar | `ipc2023_decstar_sat` | [`ipc2023-classical/planner15`](https://github.com/ipc2023-classical/planner15) | `be47954` |
| Delfi | `delfi` | planutils package `delfi`, image `ctpelok77/delfi:latest` | planutils 0.10.23 |
| DiSCO | `ipc2023_disco_agl` | [`ipc2023-classical/planner16`](https://github.com/ipc2023-classical/planner16), recipe `Apptainer.disco_agl` | `ca46d5d` |
| DiSCO | `ipc2023_disco_sat` | [`ipc2023-classical/planner16`](https://github.com/ipc2023-classical/planner16), recipe `Apptainer.disco_sat` | `ca46d5d` |
| DoFri | `ipc2023_dofri` | [`ipc2023-classical/planner21`](https://github.com/ipc2023-classical/planner21), recipe `Apptainer.dofri` | `e2c423a` |
| DOM | `ipc2023_dom_opt` | [`ipc2023-classical/planner32`](https://github.com/ipc2023-classical/planner32), recipe `Apptainer.dom_opt` | `4697051` |
| Dual-BFWS | `dual-bfws-fdparser` | planutils package `dual-bfws-fdparser` | planutils 0.10.23 |
| ENHSP | `enhsp` | planutils package `enhsp`, image `enricos83/enhsp:latest` | planutils 0.10.23 |
| FDSS 2023 | `ipc2023_fdss_2023_agl` | planutils package `ipc2023_fdss_2023_agl`, built from [`ipc2023-classical/planner28`](https://github.com/ipc2023-classical/planner28), branch `latest` | `c2f1e05` |
| FDSS 2023 | `ipc2023_fdss_2023_opt` | planutils package `ipc2023_fdss_2023_opt`, built from [`ipc2023-classical/planner28`](https://github.com/ipc2023-classical/planner28), branch `latest` | `c2f1e05` |
| FDSS 2023 | `ipc2023_fdss_2023_sat` | planutils package `ipc2023_fdss_2023_sat`, built from [`ipc2023-classical/planner28`](https://github.com/ipc2023-classical/planner28), branch `latest` | `c2f1e05` |
| FF | `ff` | planutils package `ff` | planutils 0.10.23 |
| FSM | `ipc2023_FSM` | [`ipc2023-classical/planner20`](https://github.com/ipc2023-classical/planner20), recipe `Apptainer.FSM` | `b676483` |
| FTS | `ipc2023_fts_ff_agl` | [`ipc2023-classical/planner13`](https://github.com/ipc2023-classical/planner13), recipe `Apptainer.fts_ff_agl` | `cb26d3c` |
| FTS | `ipc2023_fts_ms_opt` | [`ipc2023-classical/planner13`](https://github.com/ipc2023-classical/planner13), recipe `Apptainer.fts_ms_opt` | `cb26d3c` |
| FTS | `ipc2023_fts_sbd_opt` | [`ipc2023-classical/planner13`](https://github.com/ipc2023-classical/planner13), recipe `Apptainer.fts_sbd_opt` | `cb26d3c` |
| Hapori Delfi | `ipc2023_hapori_delfi_agl` | [`ipc2023-classical/planner19`](https://github.com/ipc2023-classical/planner19), recipe `Apptainer.hapori_delfi_agl` | `5adc4a4` |
| Hapori Delfi | `ipc2023_hapori_delfi_opt` | [`ipc2023-classical/planner19`](https://github.com/ipc2023-classical/planner19), recipe `Apptainer.hapori_delfi_opt` | `5adc4a4` |
| Hapori Delfi | `ipc2023_hapori_delfi_sat` | planutils package `ipc2023_hapori_delfi_sat`, built from [`ipc2023-classical/planner19`](https://github.com/ipc2023-classical/planner19), branch `latest` | `5adc4a4` |
| Hapori EPS-DT | `ipc2023_hapori_epsdt_agl` | [`ipc2023-classical/planner19`](https://github.com/ipc2023-classical/planner19), recipe `Apptainer.hapori_epsdt_agl` | `5adc4a4` |
| Hapori EPS-DT | `ipc2023_hapori_epsdt_opt` | [`ipc2023-classical/planner19`](https://github.com/ipc2023-classical/planner19), recipe `Apptainer.hapori_epsdt_opt` | `5adc4a4` |
| Hapori EPS-DT | `ipc2023_hapori_epsdt_sat` | [`ipc2023-classical/planner19`](https://github.com/ipc2023-classical/planner19), recipe `Apptainer.hapori_epsdt_sat` | `5adc4a4` |
| Hapori EPS-LR | `ipc2023_hapori_epslr_agl` | [`ipc2023-classical/planner19`](https://github.com/ipc2023-classical/planner19), recipe `Apptainer.hapori_epslr_agl` | `5adc4a4` |
| Hapori EPS-LR | `ipc2023_hapori_epslr_opt` | [`ipc2023-classical/planner19`](https://github.com/ipc2023-classical/planner19), recipe `Apptainer.hapori_epslr_opt` | `5adc4a4` |
| Hapori EPS-LR | `ipc2023_hapori_epslr_sat` | [`ipc2023-classical/planner19`](https://github.com/ipc2023-classical/planner19), recipe `Apptainer.hapori_epslr_sat` | `5adc4a4` |
| Hapori Greedy | `ipc2023_hapori_greedy_agl` | [`ipc2023-classical/planner19`](https://github.com/ipc2023-classical/planner19), recipe `Apptainer.hapori_greedy_agl` | `5adc4a4` |
| Hapori Greedy | `ipc2023_hapori_greedy_opt` | [`ipc2023-classical/planner19`](https://github.com/ipc2023-classical/planner19), recipe `Apptainer.hapori_greedy_opt` | `5adc4a4` |
| Hapori Greedy | `ipc2023_hapori_greedy_sat` | [`ipc2023-classical/planner19`](https://github.com/ipc2023-classical/planner19), recipe `Apptainer.hapori_greedy_sat` | `5adc4a4` |
| Hapori IBaCoP2 | `ipc2023_hapori_ibacop2_opt` | [`ipc2023-classical/planner19`](https://github.com/ipc2023-classical/planner19), recipe `Apptainer.hapori_ibacop2_opt` | `5adc4a4` |
| Hapori IBaCoP2 | `ipc2023_hapori_ibacop2_sat` | [`ipc2023-classical/planner19`](https://github.com/ipc2023-classical/planner19), recipe `Apptainer.hapori_ibacop2_sat` | `5adc4a4` |
| Hapori MIP2 | `ipc2023_hapori_mip2_agl` | [`ipc2023-classical/planner19`](https://github.com/ipc2023-classical/planner19), recipe `Apptainer.hapori_mip2_agl` | `5adc4a4` |
| Hapori MIP2 | `ipc2023_hapori_mip2_opt` | [`ipc2023-classical/planner19`](https://github.com/ipc2023-classical/planner19), recipe `Apptainer.hapori_mip2_opt` | `5adc4a4` |
| Hapori MIP2 | `ipc2023_hapori_mip2_sat` | [`ipc2023-classical/planner19`](https://github.com/ipc2023-classical/planner19), recipe `Apptainer.hapori_mip2_sat` | `5adc4a4` |
| Hapori Stone Soup | `ipc2023_hapori_stonesoup_agl` | [`ipc2023-classical/planner19`](https://github.com/ipc2023-classical/planner19), recipe `Apptainer.hapori_stonesoup_agl` | `5adc4a4` |
| Hapori Stone Soup | `ipc2023_hapori_stonesoup_opt` | [`ipc2023-classical/planner19`](https://github.com/ipc2023-classical/planner19), recipe `Apptainer.hapori_stonesoup_opt` | `5adc4a4` |
| Hapori Stone Soup | `ipc2023_hapori_stonesoup_sat` | [`ipc2023-classical/planner19`](https://github.com/ipc2023-classical/planner19), recipe `Apptainer.hapori_stonesoup_sat` | `5adc4a4` |
| LAMA | `lama` | planutils package `lama`, Fast Downward image `aibasel/downward:latest` | planutils 0.10.23 |
| LAMA | `lama-first` | planutils package `lama-first`, Fast Downward image `aibasel/downward:latest` | planutils 0.10.23 |
| Levitron | `ipc2023_levitron_agl` | [`ipc2023-classical/planner8`](https://github.com/ipc2023-classical/planner8), recipe `Apptainer.levitron_agl` | `cb89061` |
| Levitron | `ipc2023_levitron_sat` | planutils package `ipc2023_levitron_sat`, built from [`ipc2023-classical/planner8`](https://github.com/ipc2023-classical/planner8), branch `latest` | `cb89061` |
| LPG-TD | `lpg-td` | planutils package `lpg-td`, LPG-td 1.4 binary from `lpg.unibs.it` | planutils 0.10.23 |
| Metric-FF | `metric-ff` | planutils package `metric-ff`, binary from [`nilsjor/fast-forward-linux-binaries`](https://github.com/nilsjor/fast-forward-linux-binaries) | planutils 0.10.23 |
| Metric-FF | `metric-ff-2.0` | planutils package `metric-ff-2.0`, release 2.0.3 of [`siftech/metric-ff`](https://github.com/siftech/metric-ff) | planutils 0.10.23 |
| NLM-CutPlan | `nlm-cutplan-opt-lnp-1` | [`ipc2023-numeric/team-1`](https://github.com/ipc2023-numeric/team-1), custom recipe | `6f521a9` |
| NLM-CutPlan | `nlm-cutplan-opt-lnp-2` | [`ipc2023-numeric/team-1`](https://github.com/ipc2023-numeric/team-1), custom recipe | `6f521a9` |
| NLM-CutPlan | `nlm-cutplan-opt-snp-1` | [`ipc2023-numeric/team-1`](https://github.com/ipc2023-numeric/team-1), custom recipe | `6f521a9` |
| NLM-CutPlan | `nlm-cutplan-opt-snp-2` | [`ipc2023-numeric/team-1`](https://github.com/ipc2023-numeric/team-1), custom recipe | `6f521a9` |
| NLM-CutPlan | `nlm-cutplan-sat-lnp-1` | [`ipc2023-numeric/team-1`](https://github.com/ipc2023-numeric/team-1), custom recipe | `6f521a9` |
| NLM-CutPlan | `nlm-cutplan-sat-snp-1` | [`ipc2023-numeric/team-1`](https://github.com/ipc2023-numeric/team-1), custom recipe | `6f521a9` |
| NLM-CutPlan | `nlm-cutplan-sat-snp-2` | [`ipc2023-numeric/team-1`](https://github.com/ipc2023-numeric/team-1), custom recipe | `6f521a9` |
| NoveltyFB | `ipc2023_NoveltyFB` | [`ipc2023-classical/planner30`](https://github.com/ipc2023-classical/planner30), recipe `Apptainer.NoveltyFB` | `815241a` |
| NoveltyFB | `ipc2023_NoveltyFBAnytime` | [`ipc2023-classical/planner30`](https://github.com/ipc2023-classical/planner30), recipe `Apptainer.NoveltyFBAnytime` | `815241a` |
| nplanning | `nplanning-agl` | [`ipc2026-numeric/team-6`](https://github.com/ipc2026-numeric/team-6) | `a7c639e` |
| nplanning | `nplanning-sat` | [`ipc2026-numeric/team-6`](https://github.com/ipc2026-numeric/team-6) | `a7c639e` |
| Odin | `ipc2023_odin` | planutils package `ipc2023_odin`, built from [`ipc2023-classical/planner2`](https://github.com/ipc2023-classical/planner2), branch `latest` | `5533bd3` |
| OMTPlan | `omtplan-opt` | [`ipc2023-numeric/team-2`](https://github.com/ipc2023-numeric/team-2), custom recipe | `ea0bc9e` |
| OMTPlan | `omtplan-sat` | [`ipc2023-numeric/team-2`](https://github.com/ipc2023-numeric/team-2), custom recipe | `ea0bc9e` |
| OpCount4Sat | `ipc2023_opcount4sat_agl` | [`ipc2023-classical/planner10`](https://github.com/ipc2023-classical/planner10), recipe `Apptainer.opcount4sat_agl` | `c7cf0d3` |
| OpCount4Sat | `ipc2023_opcount4sat_sat` | [`ipc2023-classical/planner10`](https://github.com/ipc2023-classical/planner10), recipe `Apptainer.opcount4sat_sat` | `c7cf0d3` |
| OPTIC | `optic` | planutils package `optic`, release 1.0 of [`roveri-marco/optic`](https://github.com/roveri-marco/optic) | planutils 0.10.23 |
| Panino | `panino-agile` | [`ipc2026-numeric/team-3`](https://github.com/ipc2026-numeric/team-3) | `67c8c08` |
| Panino | `panino-sat` | [`ipc2026-numeric/team-3`](https://github.com/ipc2026-numeric/team-3) | `67c8c08` |
| PATTY | `patty-agl` | [`ipc2026-numeric/team-2`](https://github.com/ipc2026-numeric/team-2) | `a5001cc` |
| PATTY | `patty-sat` | [`ipc2026-numeric/team-2`](https://github.com/ipc2026-numeric/team-2) | `a5001cc` |
| PATTYINT | `pattyint-agl` | [`ipc2026-numeric/team-9`](https://github.com/ipc2026-numeric/team-9) | `6ad63aa` |
| PlanForge | `planforge-gbfs` | [`ipc2026-numeric/team-8`](https://github.com/ipc2026-numeric/team-8) | `d1709a9` |
| PlanForge | `planforge-opt` | [`ipc2026-numeric/team-8`](https://github.com/ipc2026-numeric/team-8) | `d1709a9` |
| POPF | `popf` | planutils package `popf`, release 1.0 of [`roveri-marco/popf`](https://github.com/roveri-marco/popf) | planutils 0.10.23 |
| Powerlifted | `ipc2023_powerlifted_agl` | [`ipc2023-classical/planner8`](https://github.com/ipc2023-classical/planner8), recipe `Apptainer.powerlifted_agl` | `cb89061` |
| Powerlifted | `ipc2023_powerlifted_sat` | [`ipc2023-classical/planner8`](https://github.com/ipc2023-classical/planner8) | `cb89061` |
| Powerlifted | `powerlifted` | planutils package `powerlifted`, image `abcorrea/powerlifted:latest` | planutils 0.10.23 |
| Ragnarok | `ipc2023_ragnarok` | planutils package `ipc2023_ragnarok`, built from [`ipc2023-classical/planner17`](https://github.com/ipc2023-classical/planner17), branch `latest` | `cab9d7f` |
| Scorpion | `ipc2023_scorpion_2023` | planutils package `ipc2023_scorpion_2023`, built from [`ipc2023-classical/planner25`](https://github.com/ipc2023-classical/planner25), branch `latest` | `14f3c45` |
| Scorpion | `scorpion` | [`jendrikseipp/scorpion`](https://github.com/jendrikseipp/scorpion), built from source, alias `scorpion` | `23e6b05` |
| Scorpion Maidu | `ipc2023_maidu_agl` | planutils package `ipc2023_maidu_agl`, built from [`ipc2023-classical/planner8`](https://github.com/ipc2023-classical/planner8), branch `latest` | `cb89061` |
| Scorpion Maidu | `ipc2023_maidu_sat` | planutils package `ipc2023_maidu_sat`, built from [`ipc2023-classical/planner8`](https://github.com/ipc2023-classical/planner8), branch `latest` | `cb89061` |
| SMTPlan | `smtplan` | planutils package `smtplan`, image `ghcr.io/jdekarske/smtplan:latest` | planutils 0.10.23 |
| Spock | `ipc2023_spock` | planutils package `ipc2023_spock`, built from [`ipc2023-classical/planner1`](https://github.com/ipc2023-classical/planner1), branch `latest` | `d34fa03` |
| SymBD | `ipc2023_SymBD_2023_opt` | [`ipc2023-classical/planner14`](https://github.com/ipc2023-classical/planner14), recipe `Apptainer.SymBD_2023_opt` | `4695c31` |
| SymK | `ipc2023_symk` | planutils package `ipc2023_symk`, built from [`ipc2023-classical/planner3`](https://github.com/ipc2023-classical/planner3), branch `latest` | `f639211` |
| TamerLite | `tamerlite-agl` | [`ipc2026-numeric/team-4`](https://github.com/ipc2026-numeric/team-4) | `64a4f1b` |
| TamerLite | `tamerlite-sat` | [`ipc2026-numeric/team-4`](https://github.com/ipc2026-numeric/team-4) | `64a4f1b` |
| Tempest | `tempest-sat` | [`ipc2026-numeric/team-12`](https://github.com/ipc2026-numeric/team-12) | `9805bc7` |
| TFTM | `ipc2023_tftm_argmax_agl` | [`ipc2023-classical/planner22`](https://github.com/ipc2023-classical/planner22), recipe `Apptainer.tftm_argmax_agl` | `1fa3100` |
| TFTM | `ipc2023_tftm_argmax_sat` | [`ipc2023-classical/planner22`](https://github.com/ipc2023-classical/planner22), recipe `Apptainer.tftm_argmax_sat` | `1fa3100` |
| TFTM | `ipc2023_tftm_co1_agl` | [`ipc2023-classical/planner22`](https://github.com/ipc2023-classical/planner22), recipe `Apptainer.tftm_co1_agl` | `1fa3100` |
| TFTM | `ipc2023_tftm_co1_sat` | [`ipc2023-classical/planner22`](https://github.com/ipc2023-classical/planner22), recipe `Apptainer.tftm_co1_sat` | `1fa3100` |
| Tyr | `tyr-gbfs` | [`ipc2026-numeric/team-5`](https://github.com/ipc2026-numeric/team-5) | `7ab8878` |
| Tyr | `tyr-lift` | [`ipc2026-numeric/team-5`](https://github.com/ipc2026-numeric/team-5) | `7ab8878` |
| Tyr | `tyr-opt` | [`ipc2026-numeric/team-5`](https://github.com/ipc2026-numeric/team-5) | `7ab8878` |
