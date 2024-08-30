# Python Rolldice

A simple python flask implementation of a dice, random numbers a generated on each refresh, the data is then shared with Grafana OTLP collector. This is a simple demo for OpenTelemetry with Grafana cloud.


## Dependencies
```bash
# In the project dir, create a virtual env.
python3 -m venv <venv name>
source <venv name>/bin/activate

# Install required dependencies.
pip install requirements.txt
```

# Usage
In the run.sh file, enter the following variables:
```python
export OTEL_EXPORTER_OTLP_ENDPOINT="OTLP_ENDPOINT" # Replace with your Grafana Cloud OTLP endpoint
export OTEL_EXPORTER_OTLP_HEADERS="GRAFANA API KEY" # Replace with your Grafana Cloud API key, Format: Basic%20API_KEY
```

To execute, 
```bash
./run.sh
```

1. This will start the flask server which can be tested on 'localhost:3000'.
2. To view Grafana insights from the application, on Grafana cloud:
[Send to Grafana Cloud OTLP Gateway](https://grafana.com/docs/grafana-cloud/monitor-applications/application-observability/otlp-gateway/)
3. Create a custom Grafana dashboard with Metrics of your choice to visualize data. This will also allow your to use [Grafana data source API](https://grafana.com/docs/grafana/latest/developers/http_api/data_source/) to query Otel data programatically. 
