#!/bin/sh

# Set OpenTelemetry environment variables
export OTEL_PYTHON_LOGGING_AUTO_INSTRUMENTATION_ENABLED=true
export OTEL_EXPORTER_OTLP_PROTOCOL="http/protobuf"
export OTEL_EXPORTER_OTLP_ENDPOINT="OTLP_ENDPOINT" # Replace with your Grafana Cloud OTLP endpoint
export OTEL_EXPORTER_OTLP_HEADERS="GRAFANA API KEY" # Replace with your Grafana Cloud API key, Format: Basic%20API_KEY
export OTEL_SERVICE_NAME="rolldice"

# Set Flask environment variables
export FLASK_APP=app.py
export FLASK_RUN_PORT=8080

# Run your Flask application with OpenTelemetry instrumentation
opentelemetry-instrument flask run -p 8080