{{/*
Expand the name of the chart.
*/}}
{{- define "lm-lastmile.fullname" -}}
{{- printf "%s-%s" .Release.Name "lm-lastmile" | trunc 63 | trimSuffix "-" -}}
{{- end -}}
