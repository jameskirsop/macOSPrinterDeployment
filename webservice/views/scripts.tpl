% include('header.tpl',title='Hello World')

<p>Copy the following code snippets into a new (or existing) Custom Software item in the Addigy Catalog. Generate a new set of snippets <a href="#deployForm">below</a>.</p>
<h3>Installation Script</h3>
<div class="codeBlock">
    <pre>
        {{ installationScript }}
    </pre>
</div>

<h3>Conditions Script</h3>
<div class="codeBlock">
    <pre>
        {{ conditionsScript }}
    </pre>
</div>

<h3>Remove Script</h3>
<div class="codeBlock">
    <pre>
        {{ removeScript }}
    </pre>
</div>

<h2>Deployment Form<a id="deployForm">></a></h2>
% include('form.tpl')
