# mosdns-config

Just Backup

Directory: ```/etc/mosdns/```

```bash
/etc/mosdns/mosdns start -c /etc/mosdns/config.yaml -d /etc/mosdns/ &
```

```cron
0 * * * * /etc/mosdns/update.sh
```
