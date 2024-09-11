{{- define "realtimeapp.fullname" -}}
{{ .Release.Name }}-{{ .Values.service.name }}
{{- end -}}

{{- define "realtimeapp.serviceName" -}}
{{ .Values.service.name }}
{{- end -}}
