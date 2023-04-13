# 無法安裝 VMWare Tools

### 原因
VMWare Tools 的驅動程式簽章使用 `SHA-2` 演算法，沒更新的 Windows 7 SP1 不支援，造成驅動程式無法安裝，安裝更新 `kb4474419` 後即可解決。

### 解決方法
1. 安裝 `windows6.1-kb4474419-v3-x86_0f687d50402790f340087c576886501b3223bec6.msu`
