library(httr)
library(jsonlite)

# Função para fazer a requisição e processar os resultados
fetch_results <- function(start) {
  params <- list(
    api_key = "",
    engine = "google_scholar",
    q = "LGPD",
    hl = "pt-br",
    start = as.character(start)
  )
  
  # URL da API do SerpAPI
  url <- "https://serpapi.com/search"
  
  # Fazendo a requisição GET
  response <- GET(url, query = params)
  
  # Convertendo a resposta para uma lista
  results <- fromJSON(content(response, "text", encoding = "UTF-8"))
  
  return(results)
}

# Inicializando o loop
start <- 0
all_related_searches <- list()
all_organic_results <- list()

repeat {
  # Buscando os resultados
  results <- fetch_results(start)
  
  # Verificando se há resultados
  if (length(results$organic_results) == 0) {
    break
  }
  
  # Armazenando os resultados
  all_related_searches <- c(all_related_searches, results$related_searches)
  all_organic_results <- c(all_organic_results, results$organic_results)
  
  # Incrementando o parâmetro start
  start <- start + 1
}

# Exibindo os resultados
print(all_related_searches)
print(all_organic_results)
