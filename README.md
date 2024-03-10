# Demo example using  Docker Compose for Prometheus tutorials

This example uses a Docker Compose setup to demo the [tutorials in the official Prometheus documentation](https://prometheus.io/docs/tutorials/getting_started/). 


To run the demo:

```bash
docker compose up -d
```

Next, you can visit:
- [localhost:8090/ping](http://localhost:8090/ping) demo app to fire the alert defined in [rules.yml](./prometheus/rules.yml).
- [Prometheus web ui](http://localhost:9090/).
- [Grafana](http://localhost:3000/), including a provisioned Prometheus datasource and dashboard.
- [Alertmanager web ui](http://localhost:9093/).

To enable the Alertmanager and receive webhook notifications, you have to configure the webhook URL in the [`alertmanager.yml` file](./alertmanager/alertmanager.yml). 

```yaml
receivers:
  - name: webhook_receiver
    webhook_configs:
      - url: '<INSERT-YOUR-WEBHOOK>'
        send_resolved: false
```

You may use one URL from [webhook.site](https://webhook.site/). Then, restart the Docker compose environment and follow the instructions in the [Alerting based on metrics tutorial](https://prometheus.io/docs/tutorials/alerting_based_on_metrics/) for further details.