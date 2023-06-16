# QCVE (Quantum Computing Vulnerabilities are Everywhere) CodeQL Runner

![figure0](./ref/images/qcve.png)

This repo is designed to allow CodeQL scripts to be submitted to detect for quantum vulnerabilities in open-source projects. This is a community-sourced project by pQCee.com in collaboration with ayks.io and moonlay.com. For more information or to participate in the program, please contact info@pqcee.com

The URL for the project is: https://github.com/pqcee/QCVE-runner 

## How To

This repo contains workflow that will analyze submitted query against selected database, the workflow will generate sarif report

- Clone this repo
    ```
    git clone https://github.com/pqcee/qcve-runner.git
    ```
- Checkout new branch with folowing format `request/{contributor-name}`
    ```
    git checkout -b request/john
    ```
- Create folder inside folder `queries`, make sure folder name using `contributor name`
- Create file `qlpack.yml` inside contributor folder, copy following script
    ```ql
    name: pqcee/qcve-runner
    version: 0.0.0
    dependencies:
        #this must match your query language
        codeql/javascript-all: "*"
    ```
 
- Create `queries.xml` file inside contributor folder, copy following script
    ```ql
    #this must match your query language
    <queries language="javascript"/>
    ```
- Add new CodeQL query (with .ql extenstion) inside contributor folder

    ![figure1](./ref/images/figure1.png)

- Commit and push changes
    ```
    git add .
    git commit -m “commit message”
    git push -u origin request/john
    ```
- Go to [Pull Request](https://github.com/pqcee/qcve-runner/pulls) Page, and Create Pull Request from your `request/{contributor-name}` branch to `main` branch

    ![figure2](./ref/images/figure2.png)
    
- Select branch to compare and create pull request, this must same with branch you create before.
    
    ![figure3](./ref/images/figure3.png)

- Add configuration tag inside PR description
    - `#database`: selected database for analyze
    - `#username`: name of contributor _(this must equivalent with query folder you created before)_
    _example_
    ```
    Add new query to analyze #database=openssl submitted by #username=maulanardy
    ``` 
    
    ![figure4](./ref/images/figure4.png)

- The Pull Request will trigger action to run, You can see the detail in Github Action Tab
    
    ![figure5](./ref/images/figure5.png)

- Green check icon marks the process is succeeded.
    
    ![figure6](./ref/images/figure6.png)

- Back to Pull Request page, select Tab Commits, you will see new Commit by `github-actions[bot]` containing new sarif report inside `output/{contributor}/result.sarif` folder 
    
    ![figure7](./ref/images/figure7.png)

- Pull your branch to local environment
    
    ```
    git pull
    ```

- You will see sarif generated report inside /output/{username} directory
    
    ![figure8](./ref/images/figure8.png)

- Install sarif viewer extension in vscode to view the report
    
    ![figure9](./ref/images/figure9.png)
    
    ![figure10](./ref/images/figure10.png)

- Back to Github Repository, Merge Pull Request to branch ‘main’ if submitted query approved
    
    ![figure11](./ref/images/figure11.png)

for more details, please contact info@pqcee.com
