[![GitHub issues](https://img.shields.io/github/issues/0ta2/git_role)](https://github.com/0ta2/git_role/issues)
[![GitHub stars](https://img.shields.io/github/stars/0ta2/git_role)](https://github.com/0ta2/git_role/stargazers)
[![CircleCI](https://img.shields.io/circleci/build/github/0ta2/git_role/master)](https://circleci.com/gh/0ta2/git_role)
![GitHub Actions](https://github.com/0ta2/git_role/workflows/Molecule%20Test/badge.svg)

git_role
=========

Git をインストールするためのロールです。

Requirements
------------

なし。

Role Variables
--------------

| 変数名            | 役割                               |
|-------------------|------------------------------------|
| git_package_state | パッケージを常に最新にするかどうか |

__デフォルトは、インストールするだけになっています。__

常にアップデートしていきたい場合は、 `latest` にしてください。

Dependencies
------------

なし

Example Playbook
----------------

```
---
    - hosts: servers
      roles:
         - { role: 0ta2.git_role }
```

License
-------

![GitHub](https://img.shields.io/github/license/0ta2/git_role)
