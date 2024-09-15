{{- define "my-microservice.fullname" -}}
{{ .Release.Name }}-{{ .Values.deployment.name }}
{{- end -}}

{{- define "my-microservice.labels" -}}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}
{{ include "my-microservice.selectorLabels" . }}
{{- end -}}

{{- define "my-microservice.selectorLabels" -}}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}

{{- define "my-microservice.serviceAccountName" -}}
{{- if .Values.serviceAccount.name -}}
{{ .Values.serviceAccount.name }}
{{- else -}}
default
{{- end -}}
{{- end -}}

