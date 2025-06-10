[![CI](https://img.shields.io/github/actions/workflow/status/<OWNER>/appmonitor-pipeline/ci.yml?branch=ci/setup)](https://github.com/<OWNER>/appmonitor-pipeline/actions/workflows/ci.yml)


# AppMonitor – Pipelines & Automatizações
Este repositório é apenas para fins acadêmicos no aprendizado de scripts e workflows de CI/CD.

## Git no ciclo de entrega contínua
O Git é o onde se realiza do versionamento no DevOps. Ele garante:
- **Histórico imutável**: rastreamento de mudanças linha a linha.
- **Trabalho colaborarivo**: permitem desenvolvimento isolado sem quebrar o fluxo principal por meio de branches.
- **Tags versões**: marcam pontos estáveis, servindo de referência para releases, rollbacks e auditorias.

## Variáveis em GitHub Actions: `env`, `vars` e `secrets`

| Contexto | Escopo & uso | Armazenamento |
|----------|--------------|---------------|
| **env** | Definidas dentro do arquivo YAML (nível de workflow, job ou step). Viram variáveis de ambiente disponíveis no runner durante a execução. | Não persistem; vivem só no job daquele ambiente. Servem Para alterar comportamentos temporariamente ou compor comandos. |
| **vars** | *Repository Variables* criadas via UI ou CLI. Acessadas com `vars.NOME`. | Guardadas em texto claro no GitHub (não criptografadas), mas só quem tem acesso ao repo pode lê-las ou editá-las. Valores não sensíveis que mudam raramente, ex.: `APP_ENV`, `SUPPORT_EMAIL`. |
| **secrets** | Segredos criptografados. Acessados com `secrets.NOME`. O GitHub mascara o valor nos logs. | Só descriptografado em tempo de execução do job. Podem ser: tokens, senhas, chaves de API (ex.: `API_KEY`).|