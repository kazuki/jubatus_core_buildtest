以下のissue用の実験リポジトリ

* https://github.com/jubatus/jubatus_core/issues/281
* https://github.com/jubatus/jubatus_core/issues/282

|Distribution|gcc|ld |fmv|build|dlopen|
|------------|---|---|---|-----|------|
|Debian(jessie)|4.9.2-10 (debian)|2.25|◯|◯|△|
|Ubuntu(xenial)|5.4.0 20160609 (5.4.0-6ubuntu1~16.04.4)|2.26.1|◯|☓|-|
|Ubuntu(yakkety)|6.2.0 20161005 (6.2.0-5ubuntu12)|2.27|◯|◯|◯|
|Ubuntu(zesty)|6.3.0 20161229 (6.3.0-2ubuntu1)|2.27.90.20170114|-|-|-|

注記
* Debian(jessie)は，ビルドする度にdlopenが成功したりSEGVしたりする
* Ubuntu(xenial)は，リンクエラーによりビルド失敗
* Ubuntu(yakkety)はC++11が標準となったためテストコードのビルドに失敗するが，
  本体のビルドとdlopenは常に成功
* Ubuntu(zesty)はmsgpack 1.4.2のためconfigureが通らず

TODO:

* Ubuntu(xenial)のビルドが通るようにリンカにフラグを渡すパッチを書く
* Debian(jessie)+Ubuntu(xenial)でdlopenが成功する時と失敗する時のバイナリの違いを調べる
  * ld.gold で治るか試してみる
