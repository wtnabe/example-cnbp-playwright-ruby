# An example repo for Ruby and Playwright Cloud Run Job

## できること

 * Cloud Run で Playwright + Ruby で Chromium を使ったコードを動かす

## 分かること

 * Cloud 上の Linux ( Ubuntu ) 環境に Chromium で日本語を扱うための準備
 * Cloud Build 上で Cloud Native Buildpacks google-22 builder と pack-cli を利用したアプリケーションのビルドを行うための工夫

※ 2024-05-02 時点で pack-cli 0.33 の PAA はそのままでは google-22 builder ( Ubuntu 22 ) と組み合わせた際に正常に動作しないので、PPA の中身を手動で /etc/apt/sources.list.d/ の一つに強引に追加してます。

## 必要な準備

### local

 * amd64 環境
 * docker 環境（必要なら docker を動かすための VM 環境）
 * pack コマンド

### Google Cloud Platform

 * Cloud Build, Cloud Storage, Artifact Registry, Cloud Run の利用に必要な準備（API および権限）
 * 特に Cloud Build からこれらを操作するのに必要な権限

## 確認環境

### local

 * macOS ( arm64 )
 * colima 0.6.7 + amd64 vm ( Ubuntu 23.10 x86_64 )
 * docker
    * client 25.0.0 ( Homebrew )
    * server 24.0.7
 * pack 0.32.1

### Google Cloud Build

 * Debian GNU/Linux 11 ( bullseye )
 * docker
     * client 26.1.0
     * server 20.10.24
 * pack 0.33.2 ( Ubuntu focal )

### Google Cloud Run

 * Ubuntu 22
 * gcsfuse/2.0.0
