<img src="./bllossom_icon.png" width="40%" height="40%">

# bllossom

| [Demo](https://c537bba37aaab5fc9e.gradio.live) | [Homepage](http://teddysum.ai/) |

**Korean LLM made by [Teddysum](http://teddysum.ai/)**

bllossom 의 특징들:

* **Lightweight**: 경량화된 모델과 학습방법 적용
* **Localization**: 한국어/한국문화에 특화된 한국어 LLM
* **Summarization**: 대화 이해와 요약에 특화
* **Automated Writing Evaluation**: AI 글쓰기 자동 평가
* 
## NEWS
* [2023/08] We released bllossom v1.0, Check out the [demo](https://c537bba37aaab5fc9e.gradio.live)
* [2023/08] We released bllossom v0.9, based on llama-2. Check out the [demo](http://121.134.238.181:7861/)
* [2023/07] We released bllossom v0.7, based on polyglot-ko. Check out the [demo](http://121.134.238.181:5050/)


## Models
### Backbone Model
* Korean-improved LLaMa-2

### Model

#### bllossom v0.9
* **Backbone Model**: LLaMa-2 (한국어 능력 강화 적용)
* **Low-bit Quantization**: 기존 32bit backbone 모델에 양자화 기술(quantization) 접목된 [qlora](https://github.com/artidoro/qlora) 적용
* **Small amount of data**: 최소한의 instruction tuning dataset 사용. 
* **Framework**: transformers, bitsandbytes, peft, accelerate

##### **v0.9 MODELS:**
* **Llama-2-13b-chat-hf-4bit quantinization** 
  - used GPU memory: 9401Mib
* **Llama-2-13b-chat-hf-8bit quantinization** 
  - used GPU memory: 15647MiB


#### bllossom v0.7
* **Backbone Model**: Polyglot-ko
* **Low-bit Quantization**: 기존 32bit backbone 모델에 양자화 기술(quantization) 접목된 [qlora](https://github.com/artidoro/qlora) 적용
* **Small amount of data**: 최소한의 instruction tuning dataset 사용. 
* **Framework**: transformers, bitsandbytes, peft, accelerate

##### **v0.7 MODELS:**
* **polyglot-ko-12.8b-4bit quantinization** [[full_model_link]](https://huggingface.co/Teddysum/bllossom-polyglot-12.8b-lima-ko-4bit) [[adapter link]](https://huggingface.co/Teddysum/bllossom-polyglot-12.8b-lima-ko-adapter-4bit)
  - used GPU memory: 9107Mib
* **polyglot-ko-12.8b-8bit quantinization** [[full_model_link(TBU)]](http://TBU)
  - used GPU memory: 14979MiB

  **학습시 batch 마다 할당되는 gpu 메모리는 모델의 input, output 길이 제한에 따라 상이**
   - 4bit max token 2048 기준(input 1024, output 1024) batch당 약 5GB
   - 4bit max token 4096 기준(input 2048, output 2048) batch당 약 10GB
   - torch_dtype=torch.bfloat16 로 업로드 시 13b, 12.8b 모델 각 30~40GB 할당
  

## Contents
* [Version Description](https://github.com/teddysum/bllossom#version-description)
* [Install](https://github.com/teddysum/bllossom/#install)

### Version Description
| Version| Release     | Contents        | License     | 비고     |
|:------:|:-----------:|-----------------|:------------:|:--------:|
| v0.7   | 2023-07-24 | 기본 버전        |`CC BY-NC-SA`|polyglot 기반|
| v0.9   | 2023-08-29 | Ko-LIMA 1.1      |`CC BY-NC-SA`|llama2 기반|
| v1.0   | 2023-09-30 | 한국어 능력 향상 |`CC BY-NC-SA`|llama2 기반, 다국어|


### Install
일반적인 pytorch 딥러닝 환경에서 아래 모듈 추가 설치
```
pip install gradio
pip install sentencepiece
pip install evaluate
pip install scikit-learn
pip install wandb

pip install -q -U bitsandbytes
pip install -q -U git+https://github.com/huggingface/transformers.git
pip install -q -U git+https://github.com/huggingface/peft.git
pip install -q -U git+https://github.com/huggingface/accelerate.git
```

또는 환경 설정된 docker 이용 [download(TBU)]()

### Evaluation
TBU

## Publisher
[Teddysum](http://teddysum.ai/)

## Authors
* `Teddysum, Inc.` (함영균, 정용빈, 윤찬혁, 박재완, 이이슬, 서현빈)
* `Yonsei Univ.` [link](https://sites.google.com/view/hansaemkim/hansaem-kim) (김한샘 교수 연구팀-김한샘, 강예지, 박서윤)
* `MLP Lab`@seoultech [link](https://sites.google.com/view/aailab) (임경태 교수 연구팀-임경태, 최창수, 김상민, 임현석, 원인호)

## Contact
함영균(Younggyun Hahm), CEO of Teddysum. `hahmyg@teddysum.ai`
