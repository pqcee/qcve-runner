# CodeQL Runner

This repo contains workflow that will analyze submitted query against selected database, the workflow will generate sarif report

## How To


- Clone this repo
- Checkout new branch with folowing format `request/{contributor-name}`
- Create folder inside folder `queries`, make sure folder name using `contributor name`
- Add new CodeQL query (with .ql extenstion) inside contributor folder
- Add `qlpack.yml` file and `queries.xml` file inside contributor folder
- Commit and push changes
- Create Pull Request to `main` branch
- Add configuration tag inside PR description
    - `#database`: selected database for analyze
    - `#username`: name of contributor
    _example_
    ```
    Add new query to analyze #database=openssl submitted by #username=maulanardy
    ``` 
- Sarif file will generated inside `output/{contributor}/result.sarif` folder