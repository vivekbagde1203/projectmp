{{/* Generate the full name of the release */}}
{{- define "student-management.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/* Generate the labels for all resources */}}
{{- define "student-management.labels" -}}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}

{{/* Generate host for VirtualService */}}
{{- define "student-management.vsHost" -}}
{{- default (printf "%s.example.com" .Release.Name) .Values.istio.virtualService.host | quote -}}
{{- end -}}

{{/* Generate name for DestinationRule */}}
{{- define "student-management.drName" -}}
{{- printf "%s-dr" (include "student-management.fullname" .) -}}
{{- end -}}

