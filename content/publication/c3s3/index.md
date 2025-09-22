---
title: "C3S3: Complementary Competition and Contrastive Selection for Semi-Supervised Medical Image Segmentation"
authors:
- admin
- Yitong Lin
- Jiahe Chen
- Honghui Xu
- Jianwei Zheng
author_notes:
- "Co-first author"
- "Co-first author"
- ""
- "Corresponding author"
- "Corresponding author"
date: "2024-12-01"

# Schedule page publish date (NOT publication's date).
publishDate: "2025-03-01"

# Publication type.
# Accepts a single type but formatted as a YAML list (for Hugo requirements).
# Enter a publication type from the CSL standard.
publication_types: ["paper-conference"]

# Publication name and optional abbreviated publication name.
publication: "*IEEE International Conference on Multimedia and Expo*"
publication_short: "*ICME 2025*"

abstract: We propose C3S3, a novel semi-supervised medical image segmentation model that addresses the scarcity of annotated medical data and limitations in boundary detail capture. The model features a Dynamic Complementary Competition mechanism (DCC) and an Outcome-Driven Contrastive Learning module (ODCL) to generate high-confidence pseudo-labels and enhance boundary representation capabilities.

# Summary. An optional shortened abstract.
summary: A semi-supervised medical image segmentation model with dynamic competition and contrastive learning mechanisms.

tags:
- Medical Image Segmentation
- Semi-Supervised Learning
- Deep Learning

featured: true

hugoblox:
  ids:
    arxiv: 2506.07368

links:
- name: "ICME 2025"
  url: "https://2025.ieeeicme.org/"
- name: "arXiv"
  url: "https://arxiv.org/abs/2506.07368"
- name: "Code"
  url: "https://github.com/Y-TARL/C3S3"

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
image:
  caption: 'C3S3 Model Architecture'
  focal_point: ""
  preview_only: false

# Associated Projects (optional).
projects: []

# Slides (optional).
slides: ""
---

**Note**: This work was completed during my undergraduate studies and represents my early research experience in medical image processing and semi-supervised learning.

## Overview

Semi-supervised medical image segmentation (SSMIS) offers a promising solution for the challenge of insufficiently annotated samples in the medical field. Despite achieving impressive results in delineating primary target areas, most current methodologies struggle to precisely capture the subtle details of boundaries, often leading to significant diagnostic inaccuracies.

## Abstract

For the immanent challenge of insufficiently annotated samples in the medical field, semi-supervised medical image segmentation (SSMIS) offers a promising solution.
Despite achieving impressive results in delineating primary target areas, most current methodologies struggle to precisely capture the subtle details of boundaries.
This deficiency often leads to significant diagnostic inaccuracies. To tackle this issue, we introduce C3S3, a novel semi-supervised segmentation model that synergistically integrates complementary competition and contrastive selection. This design significantly sharpens boundary delineation and enhances overall precision. Specifically, we develop an *Outcome-Driven Contrastive Learning* module dedicated to refining boundary localization. Additionally, we incorporate a *Dynamic Complementary Competition* module that leverages two high-performing sub-networks to generate pseudo-labels, thereby further improving segmentation quality. The proposed C3S3 undergoes rigorous validation on two publicly accessible datasets, encompassing the practices of both MRI and CT scans. The results demonstrate that our method achieves superior performance compared to previous cutting-edge competitors. Especially, on the 95HD and ASD metrics, our approach achieves a notable improvement of at least 6%, highlighting the significant advancements.

## Key Innovations

1. **Dynamic Complementary Competition (DCC)**: A dual-network dynamic game mechanism that generates high-confidence pseudo-labels, breaking dependency on single-model teacher frameworks
2. **Outcome-Driven Contrastive Learning (ODCL)**: Combined with dual-space intersection-union contrastive loss functions to precisely enhance target boundary representation capabilities
3. **Superior Performance**: 6%+ improvement in boundary-sensitive metrics (95HD, ASD) on left atrial MRI and pancreatic CT datasets compared to SOTA methods

## Citation

```bibtex
@article{he2025c3s3,
  title={C3S3: Complementary Competition and Contrastive Selection for Semi-Supervised Medical Image Segmentation},
  author={He, Jiaying and Lin, Yitong and Chen, Jiahe and Xu, Honghui and Zheng, Jianwei},
  journal={arXiv preprint arXiv:2506.07368},
  year={2025}
}
```