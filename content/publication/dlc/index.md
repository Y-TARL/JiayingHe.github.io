---
title: "Mitigating Hallucination of Large Vision-Language Models via Dynamic Logits Calibration"
authors:
- "Jiahe Chen"
- admin
- Qian Shao
- Qiyuan Chen
- Jiahe Ying
- Hongxia Xu
- Jintai Chen
- Jianwei Zheng
- Jian Wu
author_notes:
- "(https://jiahechen2002.github.io/)"
- ""
- ""
- ""
- ""
- ""
- ""
- "Corresponding author"
- "Corresponding author"
date: "2025-05-01"

# Schedule page publish date (NOT publication's date).
publishDate: "2025-06-01"

# Publication type.
# Accepts a single type but formatted as a YAML list (for Hugo requirements).
# Enter a publication type from the CSL standard.
publication_types: ["article"]

# Publication name and optional abbreviated publication name.
publication: "*arXiv preprint*"
publication_short: "*arXiv*"

abstract: "We propose Dynamic Logits Calibration (DLC), a training-free decoding framework for mitigating hallucination in Large Vision-Language Models (LVLMs). The framework dynamically aligns text generation with visual evidence during model inference by evaluating semantic associations between input images and generated text sequences using CLIP, then adaptively adjusting output token probability distributions."

# Summary. An optional shortened abstract.
summary: A training-free framework for reducing hallucination in vision-language models through dynamic logits calibration.

tags:
- Vision-Language Models
- Hallucination Mitigation
- Large Language Models
- Computer Vision

featured: true

hugoblox:
  ids:
    arxiv: 2506.21509

links:
- name: "arXiv"
  url: "https://arxiv.org/abs/2506.21509"
- name: "Code"
  url: "https://github.com/JiaheChen2002/DLC"

# Featured image
image:
  caption: 'Dynamic Logits Calibration Framework'
  focal_point: ""
  preview_only: false

# Associated Projects (optional).
projects: []

# Slides (optional).
slides: ""
---

**Note**: This collaborative work was completed during my undergraduate studies at ZJUT, focusing on addressing hallucination issues in vision-language models.

## Overview

Dynamic Logits Calibration (DLC) is a novel framework designed to mitigate hallucination in Large Vision-Language Models (LVLMs) by dynamically aligning text generation with visual evidence during inference. By leveraging CLIP to evaluate semantic associations between input images and generated text sequences, DLC adaptively adjusts output token probability distributions, ensuring a more accurate and contextually grounded generation process.

## Abstract

Large Vision-Language Models (LVLMs) have demonstrated significant advancements in multimodal understanding, yet they are frequently hampered by hallucination-the generation of text that contradicts visual input. Existing training-free decoding strategies exhibit critical limitations, including the use of static constraints that do not adapt to semantic drift during generation, inefficiency stemming from the need for multiple forward passes, and degradation of detail due to overly rigid intervention rules.

To overcome these challenges, this paper introduces **Dynamic Logits Calibration (DLC)**, a novel training-free decoding framework designed to dynamically align text generation with visual evidence at inference time. At the decoding phase, DLC step-wise employs CLIP to assess the semantic alignment between the input image and the generated text sequence. Then, the Relative Visual Advantage (RVA) of candidate tokens is evaluated against a dynamically updated contextual baseline, adaptively adjusting output logits to favor tokens that are visually grounded.

Furthermore, an adaptive weighting mechanism, informed by a real-time context alignment score, carefully balances the visual guidance while ensuring the overall quality of the textual output. Extensive experiments conducted across diverse benchmarks and various LVLM architectures (such as LLaVA, InstructBLIP, and MiniGPT-4) demonstrate that DLC significantly reduces hallucinations, outperforming current methods while maintaining high inference efficiency by avoiding multiple forward passes.

## Key Innovations

- **Dynamic Visual Alignment**: Unlike prior methods that rely on static constraints, DLC continuously evaluates the semantic alignment between the image and the generated text at each decoding step. This dynamic approach allows for real-time adjustments that better reflect the evolving context of the generated sequence.
- **Relative Visual Advantage (RVA)**: DLC introduces the concept of RVA, which measures the visual relevance of candidate tokens relative to a dynamically updated contextual baseline. This ensures that token adjustments are context-sensitive, enhancing the model's ability to generate visually grounded text.
- **Adaptive Weighting Mechanism**: To balance visual grounding with overall text quality, DLC employs an adaptive weighting strategy based on a context alignment score. This mechanism ensures that the influence of visual evidence is modulated according to the confidence in the current textual context, preventing over-reliance on visual cues that could compromise fluency.

## Citation

```bibtex
@article{chen2025mitigating,
  title={Mitigating Hallucination of Large Vision-Language Models via Dynamic Logits Calibration},
  author={Chen, Jiahe and He, Jiaying and Shao, Qian and Chen, Qiyuan and Ying, Jiahe and Xu, Hongxia and Chen, Jintai and Zheng, Jianwei and Wu, Jian},
  journal={arXiv preprint arXiv:2506.21509},
  year={2025}
}
```