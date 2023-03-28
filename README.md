# setup-coeiroink-engine-ubuntu

[COEIROINKの音声合成エンジン](https://github.com/shirowanisan/voicevox_engine)(c-1.6.0+v-0.12.3+gpu)をubuntuから動かすためのスクリプトです。

詳細記事は[こちら](https://zenn.dev/hojicha/articles/a5663b0b3c524a)にあります。

## 内容

### 動作環境

- OS: Ubuntu 22.04
- GPU: RTX3060 12GB
- CUDA: 12.1
- 言語管理： asdf(pythonプラグイン)
- パッケージ管理: pip+venv

### コマンド

- `make`: 初期設定とエンジン起動
- `make run`: エンジン起動
- `make hello`: エンジン起動中に、音声合成を試す

## クレジット

- COEIROINK:リリンちゃん
- 無料AIトークソフトCOEIROINK: https://coeiroink.com
- Lusty*Kiss Production: https://production.lusty-kiss.com
