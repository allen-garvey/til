# Console.log Text Styles

In Chrome's JavaScript console, you can style the `console.log` output using CSS. To do this, preface the text string to be styled with `%c` and add CSS styles as you would for HTML inline styles as the second argument to `console.log()`.

## Example

`console.log('%hello', 'color:red;font-size:24px;border:1px solid black;')`