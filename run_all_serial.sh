#!/bin/bash

TAG='"macro_bench"' make run_config_filtered.json
OPAM_DISABLE_SANDBOXING=true

ITER=5 RUN_CONFIG_JSON=run_config_filtered.json make ocaml-versions/4.12.1+stock.bench
ITER=5 RUN_CONFIG_JSON=run_config_filtered.json make ocaml-versions/4.12.1+eventring.bench
ITER=5 RUN_CONFIG_JSON=run_config_filtered.json make ocaml-versions/4.12.1+eventring_disabled.bench
ITER=5 RUN_CONFIG_JSON=run_config_filtered.json make ocaml-versions/4.12.1+default_instrumented.bench
ITER=5 RUN_CONFIG_JSON=run_config_filtered.json make ocaml-versions/4.12.1+default_eventlog.bench
