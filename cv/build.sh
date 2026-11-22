#!/usr/bin/env bash
# Gera o currículo a partir de cv/Daniel_Cardoso_CV.yaml com o RenderCV.
# Saída: assets/pdf/Resume-DanielCardoso-DevOps.pdf (+ .typ/.md em cv/rendercv_output/).
# Requisito: uv (https://docs.astral.sh/uv/). A versão do RenderCV fica fixada aqui.
set -euo pipefail
cd "$(dirname "$0")"
uvx --from "rendercv[full]==2.8" rendercv render Daniel_Cardoso_CV.yaml "$@"
