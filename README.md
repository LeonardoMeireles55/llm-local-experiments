# LLM Local Experiments

This repository documents my experiments running large language models (LLMs) locally using an AMD RX 6700 XT GPU.

## 🧠 Purpose

Explore different ways of running LLMs locally with GPU acceleration ( ROCm ) on AMD hardware.

## 🛠️ Setup

- **GPU**: AMD RX 6700 XT
- **OS**: [Windows 11/WSL2-UBUNTU 24.04]
- **Drivers**: [AMD driver version]
- **Backends tested**: ROCm

## Benchmarks


## 📌AMD GPU Compatibility Notes

The official ROCm support for RDNA2‑based GPUs (such as the RX 6700 XT) remains limited.

To work around these limitations, I used the following community repositories:

- **likelovewant/ollama-for-amd**: Community fork adapting Ollama for broader ROCm support on RDNA2 GPUs like the RX 6700 XT.  
  Repository: https://github.com/likelovewant/ollama-for-amd

- **ByronLeeeee/Ollama‑For‑AMD‑Installer**: Automated installer and driver‐patch tool for AMD GPUs to simplify ROCm setup on RDNA2 hardware.  
  Repository: https://github.com/ByronLeeeee/Ollama-For-AMD-Installer
