# Analise-Bibliografica-Monografia
Este repositório contém os códigos e bases de dados utilizados para a análise bibliográfica da minha monografia a ser apresentada ao Instituto de Economia da UNICAMP, como parte dos requisitos para obtenção do título de Bacharel em Ciências Econômicas. A análise foca em artigos acadêmicos que tratam de adaptação climática sensível à variável gênero, com dados provenientes das bases **Web of Science (WoS)** e **Scopus**.

---

## Metodologia

Para a análise e visualização dos dados, foram utilizadas duas abordagens complementares:

- **R (Bibliometrix/Biblioshiny)**: para análises bibliométricas interativas com redes de coautoria, co-citação e outros mapeamentos científicos.
- **Python (PyBibX)**: para manipulação e cruzamento dos dados, especialmente na análise de autores vs. foco geográfico dos estudos.
---

## Descrição dos Componentes

### 📂 `Python/`

Contém os códigos e arquivos utilizados para mesclar os dados bibliográficos no Python via **PyBibX**, bem como realizar uma análise comparativa entre países autores e países citados nas pesquisas (Gráfico 3 da monografia).

#### 📁 `(1) CSV Python/`

- **`Merge_PyBibX.py`**: script em Python responsável por mesclar os arquivos `.bib` extraídos do Scopus e WoS usando o pacote PyBibX.
- **`Scopus.bib`** e **`Web of Science.bib`**: arquivos no formato BibTeX extraídos das respectivas bases, utilizados no código "Merge_PyBibX.py".

#### 📁 `(2) Grafico 3 - Base/`

- **`Paises_autoresVScitados.ipynb`**: notebook com a análise de autores (países_autores) vs. foco geográfico (países_citados) dos artigos extraídos das bases de dados científicas WoS e Scopus.
- **`Paises_autoresVScitados.xlsx`**: resultado do notebook acima, contendo a base processada.
- **`World Bank Classification.xlsx`**: base auxiliar com a classificação dos países por renda pelo World Bank (2022), usada para desagregação dos dados.
- **`data.csv`**: base de dados em formato CSV, criada a partir do código "Merge_PyBibX.py", utilizada no notebook "Paises_autoresVScitados.ipynb".

---

### 📂 `R/`

Contém os scripts e arquivos utilizados para processamento e análise via **Bibliometrix/Biblioshiny** na linguagem R.

- **`Biblioshiny_Analises.R`**: script principal usado na análise interativa com o Biblioshiny.
- **`Merged_WOS_Scopus.xlsx`**: base final gerada a partir da junção dos dados do WoS e Scopus, utilizada no R.
- **`Scopus.xlsx`** e **`WOS.xlsx`**: arquivos originais exportados das bases, insumos para a junção no R.

---

### 📄 `Análise Resultados Query - Gráficos.xlsx`

Arquivo com os gráficos produzidos a partir dos códigos nas pastas `Python/` e `R/`, utilizados na monografia.

