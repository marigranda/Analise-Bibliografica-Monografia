#Antes de rodar o código, siga os passos abaixo para obter os arquivos em .xlsx
#1) Baixe seus dados de origem do Web of Science (WOS) no formato .txt.
#2) Baixe seus dados de origem do Scopus no formato .bib.
#3) Abra o RStudio e carregue o pacote bibliometrix com os seguintes comandos:
  #library(bibliometrix)
  #biblioshiny()
#4) Na interface do biblioshiny, vá até a opção Import Raw Files.
#5) Carregue os arquivos do WOS e do Scopus, selecionando o banco de dados apropriado para cada um.
#6) Após o carregamento dos dados, exporte cada conjunto (WOS e Scopus) em formato Excel.
#7) Nomeie os arquivos exportados como WOS.xlsx e Scopus.xlsx, respectivamente.

library(readxl)
library(bibliometrix)
library(openxlsx)
WOS <- read_excel("WOS.xlsx")
SCOPUS <- read_excel("Scopus.xlsx")               
M <- mergeDbSources(SCOPUS, WOS, remove.duplicated = T)
P <- M[,c("AU","TI","AB","DE","ID","SO","TC","PY","LA","DT","DI")]
write.table(P, "Merged_WOS_Scopus.xlsx", row.names=FALSE)
Resultados <- biblioAnalysis(P)
Resumo <- summary(object = Resultados, k = 10)
biblioshiny()


