{
  "database": {
    "host": "{{ .Env.POSTGRES_HOST }}",
    "port": {{ .Env.POSTGRES_PORT }}
  },
  "mongo": {
    "url": "mongodb://{{ .Env.MONGO_HOST }}:{{ .Env.MONGO_PORT }}"
  }
}
