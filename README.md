README.md


DAT — Provisional Draft
Status: Draft / Not audited / Not deployed
Intended network: OP Mainnet (Optimism / Ethereum Layer 2)
Maintainer: 0628DAO

DATの将来のデプロイに向けた、ERC-20スマートコントラクトとdApp構成の暫定公開資料です。DATは現在、AIエージェント間取引を含む機械的決済と、自律的な流動性機構を支える基盤トークンとして研究・設計を進めています。

このリポジトリは、デプロイ前の設計・検証過程を透明化するために公開しています。現時点で既存のDATスマートコントラクトはなく、掲載コードは監査前のドラフトです。

現在の位置付け
DATは、過去に検討していた「DeAffiliate／分散型アフィリエイト用トークン」という定義から移行しています。現在のREADMEおよび本リポジトリでは、その旧定義をDATの現行目的として採用しません。

0628DAOはトークン名ではなく、複数の専門知性と人間の最終責任を組み合わせるガバナンス構想です。DATはその統治対象の一つであり、0628DAOそのものではありません。

固有仕様
項目	内容
Token Name	DAT
Symbol	DAT
Network	OP Mainnet
Chain ID	10
規格	ERC-20
初期発行量	1,000,000,000 DAT
Decimals	18
Transfer / Buy / Sell TAX	0%
Rewards / Reflection	なし
追加Mint	なし
Burn	保有者本人による自己Burnのみ
Permit	EIP-2612対応
Owner / Admin / Pause / Upgrade / Proxy	なし
研究中のプロトコル構想
DATでは、トークン本体と将来のプロトコルを分離します。現在研究している対象には、次の要素が含まれます。

AIエージェントを含む機械的取引主体の決済

取引時に転送額を減額しない、0％トランスファータックス

外部管理者の裁量に依存しない、事前定義された状態遷移

累積指標に応じた流動性パラメータの一方向遷移

トークン本体とAMM・フック・流動性管理ロジックの分離

ただし、現在の DAT_Draft.sol は固定供給ERC-20の基礎ドラフトです。上記のAMM、フック、流動性状態遷移およびAIエージェント向け決済機構は、このファイルにはまだ実装されていません。実装、テスト、監査が完了した段階で別途公開します。

USPTOに関する表記
DATに関して、USPTO（米国特許商標庁）への申請準備を進めています。

「申請準備中」はオフチェーン上の事業・知的財産手続に関する現状説明です。USPTOへの出願済み、審査中、登録済み、権利取得済み、承認済み、または将来の登録を保証する意味ではありません。出願前の技術内容を保護するため、明細書、請求範囲候補および未公開の実装詳細は本READMEへ掲載しません。進捗に応じて本表記を更新します。

設計方針
トークン本体は標準的で小さなERC-20実装に保つ

dApp固有の機能は別のプロトコルコントラクトへ分離する

dAppからは IERC20 / IERC20Permit として接続する

トークン移動にはOpenZeppelin SafeERC20 の利用を前提とする

TAX、Reflection、自動分配、DEXペア判定をトークン本体へ埋め込まない

後発Mint経路を設けない

リポジトリの内容
DAT_Draft.sol — 暫定ERC-20スマートコントラクト

DAT_dApp_Architecture_UTF8_BOM.txt — dApp対応方針とデプロイ前の検討事項

デプロイ前に確定・実施する事項
初期発行分の受取ウォレット

配布・流動性・保有割当の基準

制限機能を本体またはdApp側のどちらへ置くか

ERC20Votes 採用の要否

OP Sepoliaでのテスト

第三者によるセキュリティ監査

正式なデプロイアドレスの公開

USPTO手続の進捗に応じた表記更新

プロトコル層の実装と基礎トークンとの接続検証

重要事項
本コードは監査前・未デプロイです。

現時点で公式コントラクトアドレスはありません。

本リポジトリは、トークンの販売、投資勧誘、利益または価格上昇の保証を目的とするものではありません。

ウォレット接続や送金を行う前に、将来公式に告知されるネットワークとコントラクトアドレスを必ず照合してください。

仕様は検証・監査・法務確認およびUSPTO手続の進行により変更される場合があります。

English summary
This repository contains a provisional OP Mainnet ERC-20 contract and a separated protocol/dApp architecture for DAT. DAT is now being researched as infrastructure for machine-to-machine settlement, including AI-agent transactions, and autonomous liquidity mechanisms; the former DeAffiliate positioning is not the current definition. The base token draft specifies a fixed supply of 1,000,000,000 DAT, 18 decimals, 0% transfer/buy/sell tax, no rewards or reflection, no later minting, self-burn only, and EIP-2612 Permit. The proposed AMM, hook, and liquidity-state-transition mechanisms are not yet implemented in DAT_Draft.sol. USPTO application preparation is an off-chain project matter and does not mean that an application has been filed, examined, registered, or approved. The code has not been audited or deployed and is not an offer or promise of returns.

© 0628DAO. Development record for technical review.
