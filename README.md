<div align="center">
  <p>
    <h3>MySql in GitHub Actions</h3>
  </p>
  <p>启动一个MySql，用于单元测试</p>
</div>

---

## 简介

使用docker容器启动一个MySql实例，用于自动化单元测试。

## 用法

```yaml
name: test

on: [push]

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
      - name: Git checkout
        uses: actions/checkout@v2
  
      - name: Setup MySql
        uses: nnhy/mysql-action@v1.0
  
      - name: Test
        run: dotnet test -c Release XUnitTestClient/XUnitTestClient.csproj
```
