{{- define "student-management.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "student-management.fullname" -}}
{{- printf "%s-%s" .Release.Name (include "student-management.name" . ) | trunc 63 | trimSuffix "-" -}}
{{- end -}}

