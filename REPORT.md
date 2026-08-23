# ADTC 2026 Submission – ARIS Gold

## Problem Definition
Nigerian farmers and extension workers need offline, expert agricultural advice. Internet connectivity is unreliable, and consulting fees are high. This submission delivers a laptop-based AI advisor that runs entirely offline on commodity hardware (8GB RAM, CPU-only).

## Constraints
- Hardware: Intel i5-8365U, 8GB RAM, no GPU.
- Must run fully offline.
- Memory budget: <7 GB peak RAM.

## Design Decisions
- **Model**: Qwen2.5‑1.5B quantized to GGUF Q4_K_M.
- **Why**: Best balance of speed, memory, and reasoning among tested models (Qwen2.5‑3B, Phi‑4, Gemma‑4‑E4B, DeepSeek).
- **Fine‑tuning**: Supervised fine‑tuning (8 epochs) on 497 agricultural Q&A pairs + 50 fresh ARC‑Easy questions + 5 safety examples.
- **Runtime**: `llama.cpp` for CPU-only inference.
- **Identity**: Truthful – based on Qwen from Alibaba Cloud.

## Performance Benchmarks
| Metric | Value |
|--------|-------|
| ARC‑Easy Accuracy | **76%** |
| Throughput (TPS) | **16.0** tok/s |
| Peak RAM | **1.69 GB** |
| Thermal | No throttling, <85°C |
| Model size | 941 MB (GGUF) |

## African Use Case
- Speaks Nigerian Pidgin (pcm) naturally.
- Provides practical advice on cassava, maize, yam, rice, poultry, fish farming, and soil management.
- Runs on a $400 laptop – accessible to students, extension officers, and smallholder farmers.

## Video
[Link to your 2‑minute demo video]

## Repository
All code and the fine‑tuned model are available in this public GitHub repository.
