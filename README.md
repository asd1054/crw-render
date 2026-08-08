# crw-render

在 Render 免费层上部署 [crw (fastCRW)](https://github.com/us/crw) — 一个轻量、Firecrawl 兼容的网页抓取/搜索 API。

## 部署到 Render

1. 在 [Render Dashboard](https://dashboard.render.com) 点 **"+ New" → "Web Service"**
2. 连接本仓库，选 **Docker** 运行时
3. Instance Type 选 **Free**
4. 点 **Deploy**

## 使用

部署完成后，你的服务地址为 `https://你的服务名.onrender.com`

### Scrape（抓取单个页面）

```bash
curl -X POST https://你的服务名.onrender.com/v1/scrape \
  -H "Content-Type: application/json" \
  -d '{"url": "https://example.com", "formats": ["markdown"]}'
```

### Search（搜索）

```bash
curl -X POST https://你的服务名.onrender.com/v1/search \
  -H "Content-Type: application/json" \
  -d '{"query": "your search term", "limit": 5}'
```

### Crawl（爬取整个网站）

```bash
curl -X POST https://你的服务名.onrender.com/v1/crawl \
  -H "Content-Type: application/json" \
  -d '{"url": "https://example.com", "limit": 10}'
```

### Map（发现网站所有 URL）

```bash
curl -X POST https://你的服务名.onrender.com/v1/map \
  -H "Content-Type: application/json" \
  -d '{"url": "https://example.com"}'
```

更多用法见 [fastCRW 文档](https://docs.fastcrw.com)。

## 保持活跃（可选）

免费服务 15 分钟无请求会休眠。用 [UptimeRobot](https://uptimerobot.com) 免费计划每 10 分钟 ping 一次 `/v1/health` 即可保持在线。