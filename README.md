# mosdns-config

Just Backup

[mosdns V5](https://github.com/IrineSistiana/mosdns/releases/tag/v5.3.3)

Directory: ```/etc/mosdns/```

```bash
/etc/mosdns/mosdns start -c /etc/mosdns/config.yaml -d /etc/mosdns/ &
```

```cron
0 * * * * /etc/mosdns/update.sh
```
