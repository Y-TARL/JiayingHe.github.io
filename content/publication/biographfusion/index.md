---
title: "BioGraphFusion: Graph Knowledge Embedding for Biological Completion and Reasoning"
authors:
- Yitong Lin
- admin
- Jiahe Chen
- Xinnan Zhu
- Jianwei Zheng
- Bo Tao
author_notes:
- "Co-first author"
- "Co-first author"
- ""
- ""
- "Corresponding author"
- "Corresponding author"
date: "2025-03-01"
hugoblox:
  ids:
    doi: "10.1093/bioinformatics/btaf408"

# Schedule page publish date (NOT publication's date).
publishDate: "2025-07-18"

# Publication type.
# Accepts a single type but formatted as a YAML list (for Hugo requirements).
# Enter a publication type from the CSL standard.
publication_types: ["article-journal"]

# Publication name and optional abbreviated publication name.
publication: "*Bioinformatics*"
publication_short: ""

abstract: We propose BioGraphFusion, a framework that fuses tensor decomposition with graph structure propagation for biological knowledge graph completion and reasoning. The framework addresses limitations in existing methods by providing dynamic and deep coupling between semantic understanding and structure learning through CP decomposition-based global semantic modeling and LSTM-driven context-aware relation refinement mechanisms.

# Summary. An optional shortened abstract.
summary: A framework fusing tensor decomposition with graph structure propagation for biological knowledge graph completion and reasoning.

tags:
- Biological Knowledge Graphs
- Graph Neural Networks
- Knowledge Embedding
- Deep Learning

featured: true

hugoblox:
  ids:
    doi: 10.1093/bioinformatics/btaf408
    arxiv: 2507.14468

links:
- name: "Bioinformatics"
  url: "https://doi.org/10.1093/bioinformatics/btaf408"
- name: "arXiv"
  url: "https://arxiv.org/abs/2507.14468"
- name: "Code"
  url: "https://github.com/Y-TARL/BioGraphFusion"
- name: "Data"
  url: "https://huggingface.co/datasets/Y-Tarl/BioGraphFusion"

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder. 
image:
  caption: 'BioGraphFusion Framework'
  focal_point: ""
  preview_only: false

# Associated Projects (optional).
projects: []

# Slides (optional).
slides: ""
---

**Note**: This work was completed during my undergraduate studies and represents my early research experience in graph neural networks and biological knowledge graphs.

## Overview

**Motivation:** Biomedical knowledge graphs (KGs) are crucial for drug discovery and disease understanding, yet their completion and reasoning are challenging. Knowledge Embedding (KE) methods capture global semantics but struggle with dynamic structural integration, while Graph Neural Networks (GNNs) excel locally but often lack semantic understanding.

**Results:** We introduce BioGraphFusion, a novel framework for deeply synergistic semantic and structural learning. BioGraphFusion establishes a global semantic foundation via tensor decomposition, guiding an LSTM-driven mechanism to dynamically refine relation embeddings during graph propagation. Experiments across three key biomedical tasks demonstrate BioGraphFusion's superior performance over state-of-the-art KE, GNN, and ensemble models.

## Key Contributions

1. **CP decomposition-based global semantic modeling** that establishes a semantic foundation to guide subsequent dynamic structural reasoning
2. **LSTM-driven context-aware relation refinement mechanism** that dynamically fuses entity contexts through gating systems  
3. **Query-guided subgraph construction** with biological relevance filtering for precise and efficient reasoning

## Citation

```bibtex
@article{lin2025biographfusion,
  title={BioGraphFusion: Graph Knowledge Embedding for Biological Completion and Reasoning},
  author={Lin, Yitong and He, Jiaying and Chen, Jiahe and Zhu, Xinnan and Zheng, Jianwei and Tao, Bo},
  journal={Bioinformatics},
  pages={btaf408},
  year={2025},
  publisher={Oxford University Press}
}
```
