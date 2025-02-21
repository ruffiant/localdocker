# Docker LNMP 开发环境

这是一个基于Docker的LNMP（Linux + Nginx + MySQL + PHP）开发环境配置。

## 环境组件

- Nginx 1.26
- PHP 8.0
- MySQL 8.0
- Redis 7.4.2

## 目录结构

```
/
├── nginx/
│   ├── conf.d/        # Nginx配置文件
│   ├── log/          # 日志文件
│   └── rewrite/      # URL重写规则
├── php/
│   └── php/         # PHP配置文件
├── mysql/
│   └── data/        # MySQL数据文件
└── redis/
    └── redis.conf   # Redis配置文件
```

## 使用方法

1. 克隆仓库：
   ```bash
   git clone [repository-url]
   cd localdocker
   ```

2. 启动服务：
   ```bash
   docker-compose up -d
   ```

3. 访问服务：
   - Nginx: http://localhost:80
   - PHP: localhost:9000
   - MySQL: localhost:3306
   - Redis: localhost:6379

## 配置说明

- MySQL root密码: 123456
- MySQL默认数据库: laravel11demo
- 网站根目录: E:\www

## 注意事项

1. 请确保Docker Desktop已经安装并运行
2. 端口冲突时请修改docker-compose.yml中的端口映射
3. 首次启动时需要等待MySQL初始化完成