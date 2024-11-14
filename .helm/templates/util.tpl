{{- define "return array of label selector" }}
{{- range $i, $val := $.Values.label_endpoint }}
- {{ $i }}={{ $val | quote }}
{{- end }}
{{- end }}

{{- define "sring.lables" -}}
{{- $list := list -}}
{{- range $k, $v := $.Values.label_endpoint -}}
{{- $list = append $list (printf "%s=\"%s\"" $k $v) -}}
{{- end -}}
{{ join "," $list }}
{{- end -}}
