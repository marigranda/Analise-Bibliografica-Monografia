# Importando os pacotes:
import numpy as np
import pandas as pd
import textwrap
from tabulate import tabulate
from prettytable import PrettyTable
from pyBibX.base import pbx_probe

# Importando o arquivo .bib (Scopus):
file_name = 'Scopus.bib'
database  = 'scopus'
bibfile   = pbx_probe(file_bib = file_name, db = database, del_duplicated = True)

# Importando o arquivo .bib (Web of Science) e mesclando com o do Scopus:
file_name_ = 'Web of Science.bib'
database_  = 'wos'
bibfile.merge_database(file_bib = file_name_, db = database_, del_duplicated = True)

# Salvando em CSV:
bibfile.save_database(sep = ',', name = 'data.csv')
