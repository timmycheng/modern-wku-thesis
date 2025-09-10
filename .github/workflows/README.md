# GitHub Actions 自动化发布流程

这个工作流可以自动将WKU论文模板发布到你fork的typst/packages仓库中。

## 设置步骤

### 1. Fork typst/packages 仓库
1. 访问 https://github.com/typst/packages
2. 点击右上角的 "Fork" 按钮
3. 创建你自己的fork

### 2. 配置GitHub Token（如果需要）
如果你的fork是私有仓库，你需要配置Personal Access Token：
1. 在GitHub设置中创建一个新的Personal Access Token
2. 在你的wku-thesis仓库中，进入 Settings > Secrets and variables > Actions
3. 添加一个名为 `PACKAGES_TOKEN` 的secret，值为你的token
4. 修改workflow文件中的token配置

## 使用方法

### 方法1：通过Git标签触发（推荐）
```bash
# 创建并推送版本标签
git tag v0.1.0
git push origin v0.1.0
```

### 方法2：手动触发
1. 在GitHub仓库页面，点击 "Actions" 标签
2. 选择 "Publish to Typst Universe" 工作流
3. 点击 "Run workflow" 按钮
4. 输入版本号（如：0.1.0）
5. 点击 "Run workflow"

## 工作流程

1. **检出代码**：获取当前仓库和你fork的packages仓库
2. **创建目录**：在packages仓库中创建对应的包目录
3. **复制文件**：将模板文件复制到正确位置
4. **更新版本**：自动更新typst.toml中的版本号
5. **提交推送**：将更改提交到你的fork仓库

## 发布后的步骤

工作流完成后，你需要：

1. 访问你fork的packages仓库
2. 创建一个Pull Request到官方的typst/packages仓库
3. 等待Typst团队的审核和批准

## 注意事项

- 确保版本号遵循语义化版本规范（如：0.1.0, 1.0.0）
- 每次发布前请确保本地测试通过
- PR描述中应该包含模板的功能说明和更新内容