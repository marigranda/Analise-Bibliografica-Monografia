# Analise-Bibliografica-Monografia
Este repositório contém os códigos e bases de dados utilizados para a análise bibliográfica da monografia a ser apresentada ao Instituto de Economia da UNICAMP, como parte dos requisitos para obtenção do título de Bacharel em Ciências Econômicas. A análise foca em artigos acadêmicos que tratam de adaptação climática sensível à variável gênero, com dados provenientes das bases **Web of Science (WoS)** e **Scopus**.

---

## Estrutura do Repositório
├── Python/
│   ├── (1) CSV Python/
│   │   ├── Merge_PyBibX.py
│   │   ├── Scopus.bib
│   │   └── Web of Science.bib
│   └── (2) Grafico 3 - Base/
│       ├── Paises_autoresVscitados.ipynb
│       ├── Paises_autoresVScitados.xlsx
│       ├── World Bank Classification.xlsx
│       └── data.csv
│
├── R/
│   ├── Biblioshiny_Analises.R
│   ├── Merged_WOS_Scopus.xlsx
│   ├── Scopus.xlsx
│   └── WOS.xlsx
│
└── Análise Resultados Query - Gráficos.xlsx

---

## Descrição dos Componentes

### 📂 `Python/`

Contém os códigos e arquivos utilizados para mesclar os dados bibliográficos no Python via **PyBibX**, bem como realizar uma análise comparativa entre países autores e países citados nas pesquisas (Gráfico 3 da monografia).

#### 📁 `(1) CSV Python/`

- **`Merge_PyBibX.py`**: script em Python responsável por mesclar os arquivos `.bib` extraídos do Scopus e WoS usando o pacote PyBibX.
- **`Scopus.bib`** e **`Web of Science.bib`**: arquivos de entrada no formato BibTeX extraídos das respectivas bases.

#### 📁 `(2) Grafico 3 - Base/`

- **`Paises_autoresVscitados.ipynb`**: notebook com a análise sobre os países autores dos artigos e os países citados como objeto de estudo.
- **`Paises_autoresVScitados.xlsx`**: resultado do notebook acima, contendo a base processada.
- **`World Bank Classification.xlsx`**: base auxiliar com a classificação dos países por renda, usada para desagregação dos dados.
- **`data.csv`**: base de dados em formato CSV utilizada no notebook.

---

### 📂 `R/`

Contém os scripts e arquivos utilizados para processamento e análise via **Bibliometrix/Biblioshiny** na linguagem R.

- **`Biblioshiny_Analises.R`**: script principal usado na análise interativa com o Biblioshiny.
- **`Merged_WOS_Scopus.xlsx`**: base final gerada a partir da junção dos dados do WoS e Scopus, utilizada no R.
- **`Scopus.xlsx`** e **`WOS.xlsx`**: arquivos originais exportados das bases, insumos para a junção no R.

---

### 📄 `Análise Resultados Query - Gráficos.xlsx`

Arquivo com os principais gráficos produzidos a partir dos códigos nas pastas `Python/` e `R/`. Muitos destes gráficos foram utilizados diretamente na monografia, incluindo o Gráfico 3 sobre países autores vs. países foco da pesquisa.

---

## Metodologia

Para a análise e visualização dos dados, foram utilizadas duas abordagens complementares:

- **R (Bibliometrix/Biblioshiny)**: para análises bibliométricas interativas com redes de coautoria, co-citação e outros mapeamentos científicos.
- **Python (PyBibX)**: para manipulação e cruzamento dos dados, especialmente na análise de autores vs. foco geográfico dos estudos.

A base final em CSV gerada via PyBibX permitiu análises adicionais com base na classificação de renda dos países (segundo o Banco Mundial), enriquecendo a leitura dos padrões de produção científica no tema.

