# Documentação Exo

Documentação de utilizador da Exo Software, construída com Sphinx e publicada
no Cloudflare Pages em https://documentation.exosoftware.pt.

## Estrutura (uma só branch, várias versões)

Toda a documentação vive numa **única branch** (`multi-version`). As versões de
Odoo são **pastas**, não branches — assim não há cherry-pick entre branches e
qualquer push reconstrói todas as versões.

Cada versão é uma árvore **completa e independente**, com todos os seus
ficheiros e imagens:

```
versions/
├── 17.0/         ← documentação COMPLETA do Odoo 17.0
│   ├── index.rst
│   └── applications/ ...
├── 18.0/         ← documentação COMPLETA do Odoo 18.0
│   ├── index.rst
│   └── applications/ ...
└── 19.0/         ← documentação COMPLETA do Odoo 19.0
    ├── index.rst
    └── applications/ ...
```

Não há base partilhada: cada versão tem a sua própria cópia de tudo.

> ℹ️ Como as versões são independentes, uma correção que se aplique a várias
> versões tem de ser feita em **cada** pasta `versions/<versão>/`.

## Construir localmente

### Requisitos (uma só vez)

```bash
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
pip install "setuptools<81"     # Sphinx 4.3.2 ainda importa pkg_resources
```

> O `.venv/` é ignorado pelo git. Python 3.12 funciona; se o `pip install`
> falhar no ambiente de build, baixar a versão de Python (ver nota no
> `build_pages.sh`).

### Ver uma versão (rápido)

```bash
./preview.sh 19.0          # versão (omisso: 17.0)
./preview.sh 19.0 en       # versão + língua (omisso: pt_PT)
```

Abrir depois `_build/html/pt_PT/index.html` no browser.
(O `preview.sh` mostra só o conteúdo; o seletor de versões não aparece.)

### Ver todas as versões com o seletor a funcionar (como em produção)

```bash
ROOT_URL=http://localhost:8000 bash build_pages.sh
python3 -m http.server 8000 --directory public
```

Abrir uma das versões publicadas:
- http://localhost:8000/19.0/pt_PT/
- http://localhost:8000/18.0/pt_PT/
- http://localhost:8000/17.0/pt_PT/

Passar `ROOT_URL=http://localhost:8000` faz o seletor de versões trocar entre as
versões localmente em vez de apontar para produção. A raiz
(http://localhost:8000/) redireciona para a versão canónica.

## Publicação (Cloudflare Pages)

O `build_pages.sh` é o comando de build no Cloudflare Pages. Configuração do projeto:

| Definição | Valor |
|---|---|
| Build command | `bash build_pages.sh` |
| Build output directory | `public` |
| Production branch | `multi-version` (única branch; contém todas as versões) |
| Variável de ambiente | `PYTHON_VERSION = 3.12` |

Como tudo está numa só branch, **cada push para a `multi-version` reconstrói
todas as versões** — não é preciso trigger separado por versão.

A versão canónica/predefinida (para onde a raiz redireciona) é a `19.0`,
configurável via `CANONICAL_VERSION` no `build_pages.sh`.

## Adicionar uma nova versão (ex.: 20.0)

1. Criar `versions/20.0/` com a árvore completa dessa versão. Duas opções:
   - **Copiar a versão mais próxima** e ajustar o que muda:
     ```bash
     cp -r versions/19.0 versions/20.0
     ```
   - **Trazer de uma branch de versão** (se o conteúdo for mantido numa branch
     homónima `20.0`, onde vive sob `content/`):
     ```bash
     git checkout 20.0 -- content     # traz content/ da branch da versão
     git mv content versions/20.0     # coloca-a sob versions/
     ```
2. No `build_pages.sh`, acrescentar `20.0` à variável `VERSIONS` (e, se for a
   mais recente, atualizar `CANONICAL_VERSION`).
3. No `conf.py`, acrescentar `'20.0': "Odoo 20",` ao dicionário `versions_names`
   (e, se for a mais recente, atualizar o `DOC_VERSION` predefinido).
4. Atualizar o diagrama da árvore neste README.
5. Compilar localmente para validar antes de publicar:
   ```bash
   ./preview.sh 20.0
   ```

## Origem

Projeto derivado da [documentação oficial do Odoo](https://github.com/odoo/documentation).
Para saber mais sobre Odoo, ver também o [eLearning oficial](https://odoo.com/slides).