---

<img src="../../assets/logo_and_name.png" alt="drawing" width="300"/>

BigFunctions are public BigQuery routines that give you new *SQL powers* in BigQuery 💪.

There are **6 must know** to use them:

1. **Must know #1**: Invoke a BigFunction at the same location as your data (see below for details)
2. **Must know #2**: Enable BigFunctions bookmarklet to see BigFunctions results as data-vizualizations in BigQuery console (see below for details).
3. **Must know #3**: BigFunctions make BigQuery queries from your project. They incur costs to your project like any BigQuery query. For instance, `explore_table` function incurrs a full-scan of your table. Consider creating smaller tables by sampling large ones if needed to use them with BigFunctions.
4. **Must know #4**: We log BigFunctions executions with: timestamp of execution, name of executed BigFunction and the user email who executed them. We may use these data to know about service usage, for troubleshooting and to send emails with news about the project. We will never share these emails to anyone. If this seem unfair to you please contact contact@unytics.io.
5. **Must know #5**: You can inspect the source code of any deployed SQL and js function at any time by pinning the `bigfunctions` project in BigQuery console and exploring routines.
6. **Must know #6**: Please let us know what you think and make suggestions --> contact@unytics.io


---


## **Must know #1**: Invoke a BigFunction at the same location as your data

BigQuery routines must be located at the same location as your data. Otherwise the BigFunction OR your data will not be found by BigQuery. To explore your table `your-project.your_dataset.your_table` use one of the following commands regarding the location of `your_dataset`:


=== "`your_dataset` is in EU"

    ```sql
    declare output JSON;

    call bigfunctions.eu.explore_table("your-project.your_dataset.your_table", output);
    select string(output.html);
    ```

=== "`your_dataset` is in US"

    ```sql
    declare output JSON;

    call bigfunctions.us.explore_table("your-project.your_dataset.your_table", output);
    select string(output.html);
    ```

=== "`your_dataset` is in asia-east1"

    ```sql
    declare output JSON;

    call bigfunctions.asia_east1.explore_table("your-project.your_dataset.your_table", output);
    select string(output.html);
    ```

=== "`your_dataset` is in asia-east2"

    ```sql
    declare output JSON;

    call bigfunctions.asia_east2.explore_table("your-project.your_dataset.your_table", output);
    select string(output.html);
    ```

=== "`your_dataset` is in asia-northeast1"

    ```sql
    declare output JSON;

    call bigfunctions.asia_northeast1.explore_table("your-project.your_dataset.your_table", output);
    select string(output.html);
    ```

=== "`your_dataset` is in asia-northeast2"

    ```sql
    declare output JSON;

    call bigfunctions.asia_northeast2.explore_table("your-project.your_dataset.your_table", output);
    select string(output.html);
    ```

=== "`your_dataset` is in asia-northeast3"

    ```sql
    declare output JSON;

    call bigfunctions.asia_northeast3.explore_table("your-project.your_dataset.your_table", output);
    select string(output.html);
    ```

=== "`your_dataset` is in asia-south1"

    ```sql
    declare output JSON;

    call bigfunctions.asia_south1.explore_table("your-project.your_dataset.your_table", output);
    select string(output.html);
    ```

=== "`your_dataset` is in asia-south2"

    ```sql
    declare output JSON;

    call bigfunctions.asia_south2.explore_table("your-project.your_dataset.your_table", output);
    select string(output.html);
    ```

=== "`your_dataset` is in asia-southeast1"

    ```sql
    declare output JSON;

    call bigfunctions.asia_southeast1.explore_table("your-project.your_dataset.your_table", output);
    select string(output.html);
    ```

=== "`your_dataset` is in asia-southeast2"

    ```sql
    declare output JSON;

    call bigfunctions.asia_southeast2.explore_table("your-project.your_dataset.your_table", output);
    select string(output.html);
    ```

=== "`your_dataset` is in australia-southeast1"

    ```sql
    declare output JSON;

    call bigfunctions.australia_southeast1.explore_table("your-project.your_dataset.your_table", output);
    select string(output.html);
    ```

=== "`your_dataset` is in australia-southeast2"

    ```sql
    declare output JSON;

    call bigfunctions.australia_southeast2.explore_table("your-project.your_dataset.your_table", output);
    select string(output.html);
    ```

=== "`your_dataset` is in europe-central2"

    ```sql
    declare output JSON;

    call bigfunctions.europe_central2.explore_table("your-project.your_dataset.your_table", output);
    select string(output.html);
    ```

=== "`your_dataset` is in europe-north1"

    ```sql
    declare output JSON;

    call bigfunctions.europe_north1.explore_table("your-project.your_dataset.your_table", output);
    select string(output.html);
    ```

=== "`your_dataset` is in europe-west1"

    ```sql
    declare output JSON;

    call bigfunctions.europe_west1.explore_table("your-project.your_dataset.your_table", output);
    select string(output.html);
    ```

=== "`your_dataset` is in europe-west2"

    ```sql
    declare output JSON;

    call bigfunctions.europe_west2.explore_table("your-project.your_dataset.your_table", output);
    select string(output.html);
    ```

=== "`your_dataset` is in europe-west3"

    ```sql
    declare output JSON;

    call bigfunctions.europe_west3.explore_table("your-project.your_dataset.your_table", output);
    select string(output.html);
    ```

=== "`your_dataset` is in europe-west4"

    ```sql
    declare output JSON;

    call bigfunctions.europe_west4.explore_table("your-project.your_dataset.your_table", output);
    select string(output.html);
    ```

=== "`your_dataset` is in europe-west6"

    ```sql
    declare output JSON;

    call bigfunctions.europe_west6.explore_table("your-project.your_dataset.your_table", output);
    select string(output.html);
    ```

=== "`your_dataset` is in northamerica-northeast1"

    ```sql
    declare output JSON;

    call bigfunctions.northamerica_northeast1.explore_table("your-project.your_dataset.your_table", output);
    select string(output.html);
    ```

=== "`your_dataset` is in northamerica-northeast2"

    ```sql
    declare output JSON;

    call bigfunctions.northamerica_northeast2.explore_table("your-project.your_dataset.your_table", output);
    select string(output.html);
    ```

=== "`your_dataset` is in southamerica-east1"

    ```sql
    declare output JSON;

    call bigfunctions.southamerica_east1.explore_table("your-project.your_dataset.your_table", output);
    select string(output.html);
    ```

=== "`your_dataset` is in southamerica-west1"

    ```sql
    declare output JSON;

    call bigfunctions.southamerica_west1.explore_table("your-project.your_dataset.your_table", output);
    select string(output.html);
    ```

=== "`your_dataset` is in us-central1"

    ```sql
    declare output JSON;

    call bigfunctions.us_central1.explore_table("your-project.your_dataset.your_table", output);
    select string(output.html);
    ```

=== "`your_dataset` is in us-east1"

    ```sql
    declare output JSON;

    call bigfunctions.us_east1.explore_table("your-project.your_dataset.your_table", output);
    select string(output.html);
    ```

=== "`your_dataset` is in us-east4"

    ```sql
    declare output JSON;

    call bigfunctions.us_east4.explore_table("your-project.your_dataset.your_table", output);
    select string(output.html);
    ```

=== "`your_dataset` is in us-west1"

    ```sql
    declare output JSON;

    call bigfunctions.us_west1.explore_table("your-project.your_dataset.your_table", output);
    select string(output.html);
    ```

=== "`your_dataset` is in us-west2"

    ```sql
    declare output JSON;

    call bigfunctions.us_west2.explore_table("your-project.your_dataset.your_table", output);
    select string(output.html);
    ```

=== "`your_dataset` is in us-west3"

    ```sql
    declare output JSON;

    call bigfunctions.us_west3.explore_table("your-project.your_dataset.your_table", output);
    select string(output.html);
    ```

=== "`your_dataset` is in us-west4"

    ```sql
    declare output JSON;

    call bigfunctions.us_west4.explore_table("your-project.your_dataset.your_table", output);
    select string(output.html);
    ```




## **Must know #2**: Enable BigFunctions bookmarklet to see BigFunctions results as data-vizualizations in BigQuery console.

Some BigFunctions return some html that can be transformed in data-vizualizations. To see the data-vizualization you must:

1. drag and drop the following button in your bookmark bar.
2. When you are in BigQuery console, you must click on the created bookmark to automatically transform BigFunctions html result in data-vizualisations.


<div><a href="javascript:fetch('https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.9.1/chart.min.js').then((response) => response.text()).then((text) => {const script = document.createElement('script'); script.text = text; document.head.appendChild(script);});  const bulma = document.createElement('link'); bulma.setAttribute('rel', 'stylesheet'); bulma.setAttribute('href', 'https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css'); document.head.appendChild(bulma);   const setInnerHTML = function(elm, html) {   elm.innerHTML = html;   Array.from(elm.querySelectorAll('script')).forEach( oldScript => {     const newScript = document.createElement('script');     Array.from(oldScript.attributes)       .forEach( attr => newScript.setAttribute(attr.name, attr.value) );     newScript.appendChild(document.createTextNode(oldScript.innerHTML));     oldScript.parentNode.replaceChild(newScript, oldScript);   }); };   const renderHTML = function() {     const divs = document.querySelectorAll('bq-results-table td div');     if (divs.length !== 1) {         console.log(`divs.length = ${divs.length} != 1`);         return;     }     const div = divs[0];     const bq_results_table = div.closest('bq-results-table');     if (!bq_results_table) {         console.log('bq_results_table not found');         return;     }     const html = div.innerText;     document.querySelector('.bq-results-table thead th:nth-child(2)').style = 'width: 100%;';     setInnerHTML(bq_results_table, html);     console.log('bigfunctions: successfully replaced table content'); }; renderHTML();   setInterval(renderHTML, 1000); " class="md-button md-button--primary">BigFunctions</a><div>