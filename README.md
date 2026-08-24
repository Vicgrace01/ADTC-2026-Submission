# 🌾 ARIS: Offline AI Agricultural Advisor
**Africa Deep Tech Challenge 2026 — Laptop LLM Track Submission**

ARIS (Agricultural Research Information System) is a highly optimized, offline-first digital extension worker designed for Nigerian smallholder farmers. Powered by a fine-tuned Qwen2.5-1.5B model, it delivers critical agricultural advice on crop diseases, pest control, and soil management entirely offline on budget 8GB laptops.

### 🏆 Project Highlights
* **Hardware Target:** 8th-gen Intel i5, 8GB RAM (No GPU required).
* **Throughput:** 16.0 Tokens Per Second.
* **Peak RAM:** 1.69 GB.
* **Languages:** English & Nigerian Pidgin.
* **Accuracy:** 76% on ARC-Easy reasoning benchmarks.

### 📂 Repository Structure
* `REPORT.md`: The complete engineering story, challenges, and technical specifications.
* `download_model.sh`: Idempotent script to fetch the 941MB GGUF weights.
* `metadata.json`: Competition profiler configurations and test prompts.

### 🚀 Quick Start for Evaluators
To run strict evaluation:
`llama-cli -m model/model.gguf -p "User: My maize leaves are turning yellow with brown spots. What should I do?\nAssistant:" -n 256 --temp 0.0 --threads 4`

*Built by Victor Nwaruwe for the ADTC 2026 Hackathon.*
