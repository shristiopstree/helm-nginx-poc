{{- define "guestbook.fullname" -}}
{{ .Release.Name }}-guestbook
{{- end -}}

{{- define "guestbook.serviceName" -}}
{{ .Values.service.name }}
{{- end -}}

