# 📊 Monitoramento de Tendências e Publicações Científicas

Este projeto utiliza a **API SerpAPI** para coletar dados de tendências do **Google Trends** e pesquisas acadêmicas do **Google Scholar**. O objetivo é analisar a popularidade de termos como **Globo, Natura, Ambev** e acompanhar publicações sobre **LGPD**.

## 📌 Funcionalidades

✅ **Consulta de tendências no Google Trends** (popularidade por minuto)  
✅ **Coleta de pesquisas acadêmicas no Google Scholar**  
✅ **Armazenamento dos resultados em CSV e Excel**  
✅ **Processamento automático para análise de dados**  

---

## 🛠 Tecnologias Utilizadas

- **Linguagem:** R  
- **Pacotes:** `httr`, `jsonlite`, `dplyr`, `tidyr`, `writexl`  
- **Fonte de Dados:** [SerpAPI](https://serpapi.com/) - API para Google Trends e Google Scholar  

---

## 📂 Estrutura do Código

```
📁 /  (Diretório Raiz)
├── 00_main.R    # Coleta de dados do Google Trends
├── 01_main.R    # Coleta de pesquisas do Google Scholar
└── trends_globo_por_minuto.csv  # Arquivo CSV com os dados de tendências
```

---

## 🚀 Como Executar

### 1️⃣ **Instalar os pacotes necessários**

Se ainda não estiverem instalados, execute no R:

```r
install.packages(c("httr", "jsonlite", "dplyr", "tidyr", "writexl"))
```

### 2️⃣ **Configurar a API Key do SerpAPI**

No arquivo `00_main.R` e `01_main.R`, edite a variável `api_key` e insira sua chave de API:

```r
api_key <- "SUA_CHAVE_API"
```

### 3️⃣ **Executar a Coleta de Dados**

Para obter as tendências do Google Trends:

```r
source("00_main.R")
```

Para buscar publicações acadêmicas sobre LGPD:

```r
source("01_main.R")
```

Os dados serão armazenados em **CSV e Excel** para análise posterior.

---

## 📊 Estrutura do Arquivo de Saída (`trends_globo_por_minuto.csv`)

A saída será um CSV com as seguintes colunas:

| Data | Hora | Termo | Popularidade |
|------|------|--------|-------------|
| 2024-05-20 | 14:30 | Globo | 85 |
| 2024-05-20 | 14:35 | Natura | 78 |

---

## 🛑 Possíveis Problemas e Soluções

### ⚠️ **Erro na API SerpAPI**  
Se a API não retornar resultados, verifique se sua **chave de API está correta** e se **atingiu o limite de requisições**.

### 🔄 **Demora na execução das requisições**  
Se os resultados estiverem lentos, tente reduzir a frequência de requisições ou usar um intervalo maior.

---

🚀 **Agora você pode monitorar tendências e publicações acadêmicas automaticamente!** Qualquer dúvida, me avise! 😊
