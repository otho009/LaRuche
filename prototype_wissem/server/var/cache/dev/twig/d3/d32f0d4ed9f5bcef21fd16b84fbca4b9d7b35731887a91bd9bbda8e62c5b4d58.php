<?php

/* @Twig/layout.html.twig */
class __TwigTemplate_037ae85d0493d952e10e9dab56c4a0d869b839b63dadadfce8ea1e82033789c9 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
            'title' => array($this, 'block_title'),
            'head' => array($this, 'block_head'),
            'body' => array($this, 'block_body'),
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        $__internal_74fc36951e790eb59ef75353b26fc0f34ed4df43be372a5df95ecea1987da5e7 = $this->env->getExtension("Symfony\\Bundle\\WebProfilerBundle\\Twig\\WebProfilerExtension");
        $__internal_74fc36951e790eb59ef75353b26fc0f34ed4df43be372a5df95ecea1987da5e7->enter($__internal_74fc36951e790eb59ef75353b26fc0f34ed4df43be372a5df95ecea1987da5e7_prof = new Twig_Profiler_Profile($this->getTemplateName(), "template", "@Twig/layout.html.twig"));

        $__internal_dc2c69855f513922b46242e736d927d30e1578b2ab0250ac0c1062cd5c487227 = $this->env->getExtension("Symfony\\Bridge\\Twig\\Extension\\ProfilerExtension");
        $__internal_dc2c69855f513922b46242e736d927d30e1578b2ab0250ac0c1062cd5c487227->enter($__internal_dc2c69855f513922b46242e736d927d30e1578b2ab0250ac0c1062cd5c487227_prof = new Twig_Profiler_Profile($this->getTemplateName(), "template", "@Twig/layout.html.twig"));

        // line 1
        echo "<!DOCTYPE html>
<html>
    <head>
        <meta charset=\"";
        // line 4
        echo twig_escape_filter($this->env, $this->env->getCharset(), "html", null, true);
        echo "\" />
        <meta name=\"robots\" content=\"noindex,nofollow\" />
        <meta name=\"viewport\" content=\"width=device-width,initial-scale=1\" />
        <title>";
        // line 7
        $this->displayBlock('title', $context, $blocks);
        echo "</title>
        <link rel=\"icon\" type=\"image/png\" href=\"";
        // line 8
        echo twig_include($this->env, $context, "@Twig/images/favicon.png.base64");
        echo "\">
        <style>";
        // line 9
        echo twig_include($this->env, $context, "@Twig/exception.css.twig");
        echo "</style>
        ";
        // line 10
        $this->displayBlock('head', $context, $blocks);
        // line 11
        echo "    </head>
    <body>
        <header>
            <div class=\"container\">
                <h1 class=\"logo\">";
        // line 15
        echo twig_include($this->env, $context, "@Twig/images/symfony-logo.svg");
        echo " Symfony Exception</h1>

                <div class=\"help-link\">
                    <a href=\"https://symfony.com/doc\">
                        <span class=\"icon\">";
        // line 19
        echo twig_include($this->env, $context, "@Twig/images/icon-book.svg");
        echo "</span>
                        <span class=\"hidden-xs-down\">Symfony</span> Docs
                    </a>
                </div>

                <div class=\"help-link\">
                    <a href=\"https://symfony.com/support\">
                        <span class=\"icon\">";
        // line 26
        echo twig_include($this->env, $context, "@Twig/images/icon-support.svg");
        echo "</span>
                        <span class=\"hidden-xs-down\">Symfony</span> Support
                    </a>
                </div>
            </div>
        </header>

        ";
        // line 33
        $this->displayBlock('body', $context, $blocks);
        // line 34
        echo "        ";
        echo twig_include($this->env, $context, "@Twig/base_js.html.twig");
        echo "
    </body>
</html>
";
        
        $__internal_74fc36951e790eb59ef75353b26fc0f34ed4df43be372a5df95ecea1987da5e7->leave($__internal_74fc36951e790eb59ef75353b26fc0f34ed4df43be372a5df95ecea1987da5e7_prof);

        
        $__internal_dc2c69855f513922b46242e736d927d30e1578b2ab0250ac0c1062cd5c487227->leave($__internal_dc2c69855f513922b46242e736d927d30e1578b2ab0250ac0c1062cd5c487227_prof);

    }

    // line 7
    public function block_title($context, array $blocks = array())
    {
        $__internal_8f280b74443f5ee0027c02649353aa6733ec341e60e9c00b6c12b4c8eb5da42d = $this->env->getExtension("Symfony\\Bundle\\WebProfilerBundle\\Twig\\WebProfilerExtension");
        $__internal_8f280b74443f5ee0027c02649353aa6733ec341e60e9c00b6c12b4c8eb5da42d->enter($__internal_8f280b74443f5ee0027c02649353aa6733ec341e60e9c00b6c12b4c8eb5da42d_prof = new Twig_Profiler_Profile($this->getTemplateName(), "block", "title"));

        $__internal_f3762b6cdf6a9160db944f20ab67875fa779f726d8dbc212638ade9614d4c4f1 = $this->env->getExtension("Symfony\\Bridge\\Twig\\Extension\\ProfilerExtension");
        $__internal_f3762b6cdf6a9160db944f20ab67875fa779f726d8dbc212638ade9614d4c4f1->enter($__internal_f3762b6cdf6a9160db944f20ab67875fa779f726d8dbc212638ade9614d4c4f1_prof = new Twig_Profiler_Profile($this->getTemplateName(), "block", "title"));

        
        $__internal_f3762b6cdf6a9160db944f20ab67875fa779f726d8dbc212638ade9614d4c4f1->leave($__internal_f3762b6cdf6a9160db944f20ab67875fa779f726d8dbc212638ade9614d4c4f1_prof);

        
        $__internal_8f280b74443f5ee0027c02649353aa6733ec341e60e9c00b6c12b4c8eb5da42d->leave($__internal_8f280b74443f5ee0027c02649353aa6733ec341e60e9c00b6c12b4c8eb5da42d_prof);

    }

    // line 10
    public function block_head($context, array $blocks = array())
    {
        $__internal_eb4d7bec4a33c4c415decc2cace534bdc612112ce8295e18d424bf5979e289f5 = $this->env->getExtension("Symfony\\Bundle\\WebProfilerBundle\\Twig\\WebProfilerExtension");
        $__internal_eb4d7bec4a33c4c415decc2cace534bdc612112ce8295e18d424bf5979e289f5->enter($__internal_eb4d7bec4a33c4c415decc2cace534bdc612112ce8295e18d424bf5979e289f5_prof = new Twig_Profiler_Profile($this->getTemplateName(), "block", "head"));

        $__internal_af4bf89cb7eb7ff5ce8bc7e5f0d28b95b556b103f7cc0c44f69261afed7f864d = $this->env->getExtension("Symfony\\Bridge\\Twig\\Extension\\ProfilerExtension");
        $__internal_af4bf89cb7eb7ff5ce8bc7e5f0d28b95b556b103f7cc0c44f69261afed7f864d->enter($__internal_af4bf89cb7eb7ff5ce8bc7e5f0d28b95b556b103f7cc0c44f69261afed7f864d_prof = new Twig_Profiler_Profile($this->getTemplateName(), "block", "head"));

        
        $__internal_af4bf89cb7eb7ff5ce8bc7e5f0d28b95b556b103f7cc0c44f69261afed7f864d->leave($__internal_af4bf89cb7eb7ff5ce8bc7e5f0d28b95b556b103f7cc0c44f69261afed7f864d_prof);

        
        $__internal_eb4d7bec4a33c4c415decc2cace534bdc612112ce8295e18d424bf5979e289f5->leave($__internal_eb4d7bec4a33c4c415decc2cace534bdc612112ce8295e18d424bf5979e289f5_prof);

    }

    // line 33
    public function block_body($context, array $blocks = array())
    {
        $__internal_8385f3ee7357da9e1449fd689237a04fa9fb3909e248dea273a05053005c2d9c = $this->env->getExtension("Symfony\\Bundle\\WebProfilerBundle\\Twig\\WebProfilerExtension");
        $__internal_8385f3ee7357da9e1449fd689237a04fa9fb3909e248dea273a05053005c2d9c->enter($__internal_8385f3ee7357da9e1449fd689237a04fa9fb3909e248dea273a05053005c2d9c_prof = new Twig_Profiler_Profile($this->getTemplateName(), "block", "body"));

        $__internal_224d140a1e0ba2adad8825f6098c3b6c539fcfc11777f2c9f78677c38ccfdac2 = $this->env->getExtension("Symfony\\Bridge\\Twig\\Extension\\ProfilerExtension");
        $__internal_224d140a1e0ba2adad8825f6098c3b6c539fcfc11777f2c9f78677c38ccfdac2->enter($__internal_224d140a1e0ba2adad8825f6098c3b6c539fcfc11777f2c9f78677c38ccfdac2_prof = new Twig_Profiler_Profile($this->getTemplateName(), "block", "body"));

        
        $__internal_224d140a1e0ba2adad8825f6098c3b6c539fcfc11777f2c9f78677c38ccfdac2->leave($__internal_224d140a1e0ba2adad8825f6098c3b6c539fcfc11777f2c9f78677c38ccfdac2_prof);

        
        $__internal_8385f3ee7357da9e1449fd689237a04fa9fb3909e248dea273a05053005c2d9c->leave($__internal_8385f3ee7357da9e1449fd689237a04fa9fb3909e248dea273a05053005c2d9c_prof);

    }

    public function getTemplateName()
    {
        return "@Twig/layout.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  137 => 33,  120 => 10,  103 => 7,  88 => 34,  86 => 33,  76 => 26,  66 => 19,  59 => 15,  53 => 11,  51 => 10,  47 => 9,  43 => 8,  39 => 7,  33 => 4,  28 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("<!DOCTYPE html>
<html>
    <head>
        <meta charset=\"{{ _charset }}\" />
        <meta name=\"robots\" content=\"noindex,nofollow\" />
        <meta name=\"viewport\" content=\"width=device-width,initial-scale=1\" />
        <title>{% block title %}{% endblock %}</title>
        <link rel=\"icon\" type=\"image/png\" href=\"{{ include('@Twig/images/favicon.png.base64') }}\">
        <style>{{ include('@Twig/exception.css.twig') }}</style>
        {% block head %}{% endblock %}
    </head>
    <body>
        <header>
            <div class=\"container\">
                <h1 class=\"logo\">{{ include('@Twig/images/symfony-logo.svg') }} Symfony Exception</h1>

                <div class=\"help-link\">
                    <a href=\"https://symfony.com/doc\">
                        <span class=\"icon\">{{ include('@Twig/images/icon-book.svg') }}</span>
                        <span class=\"hidden-xs-down\">Symfony</span> Docs
                    </a>
                </div>

                <div class=\"help-link\">
                    <a href=\"https://symfony.com/support\">
                        <span class=\"icon\">{{ include('@Twig/images/icon-support.svg') }}</span>
                        <span class=\"hidden-xs-down\">Symfony</span> Support
                    </a>
                </div>
            </div>
        </header>

        {% block body %}{% endblock %}
        {{ include('@Twig/base_js.html.twig') }}
    </body>
</html>
", "@Twig/layout.html.twig", "/home/wissem/public_html/s6/Laruche/LaRuche/prototype_wissem/server/vendor/symfony/symfony/src/Symfony/Bundle/TwigBundle/Resources/views/layout.html.twig");
    }
}
