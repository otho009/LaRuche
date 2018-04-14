<?php

/* BOWPlatformBundle:Advert:byebye.html.twig */
class __TwigTemplate_fce1626e6c80c94a72535143e7695f545c3f4bd939513d8873dd01b50426d1f6 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        $__internal_8cd2c98c2c1641edc192eef99e731eb40589543f124edca7bf8d9f5215a79715 = $this->env->getExtension("Symfony\\Bundle\\WebProfilerBundle\\Twig\\WebProfilerExtension");
        $__internal_8cd2c98c2c1641edc192eef99e731eb40589543f124edca7bf8d9f5215a79715->enter($__internal_8cd2c98c2c1641edc192eef99e731eb40589543f124edca7bf8d9f5215a79715_prof = new Twig_Profiler_Profile($this->getTemplateName(), "template", "BOWPlatformBundle:Advert:byebye.html.twig"));

        $__internal_32eb3bcfd347bb48960016e98ec43aeb623afc3330eacc90eab0f688687a671b = $this->env->getExtension("Symfony\\Bridge\\Twig\\Extension\\ProfilerExtension");
        $__internal_32eb3bcfd347bb48960016e98ec43aeb623afc3330eacc90eab0f688687a671b->enter($__internal_32eb3bcfd347bb48960016e98ec43aeb623afc3330eacc90eab0f688687a671b_prof = new Twig_Profiler_Profile($this->getTemplateName(), "template", "BOWPlatformBundle:Advert:byebye.html.twig"));

        // line 1
        echo "<!DOCTYPE html>

<html>
  <head>
    <title>ByeBye!</title>
  </head>
  <body>
    <h1>ByeBye ";
        // line 8
        echo twig_escape_filter($this->env, (isset($context["nom"]) ? $context["nom"] : $this->getContext($context, "nom")), "html", null, true);
        echo " !</h1>
  </body>
</html>
";
        
        $__internal_8cd2c98c2c1641edc192eef99e731eb40589543f124edca7bf8d9f5215a79715->leave($__internal_8cd2c98c2c1641edc192eef99e731eb40589543f124edca7bf8d9f5215a79715_prof);

        
        $__internal_32eb3bcfd347bb48960016e98ec43aeb623afc3330eacc90eab0f688687a671b->leave($__internal_32eb3bcfd347bb48960016e98ec43aeb623afc3330eacc90eab0f688687a671b_prof);

    }

    public function getTemplateName()
    {
        return "BOWPlatformBundle:Advert:byebye.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  34 => 8,  25 => 1,);
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
    <title>ByeBye!</title>
  </head>
  <body>
    <h1>ByeBye {{nom}} !</h1>
  </body>
</html>
", "BOWPlatformBundle:Advert:byebye.html.twig", "/home/wissem/public_html/s6/Laruche/LaRuche/prototype_wissem/server/src/BOW/PlatformBundle/Resources/views/Advert/byebye.html.twig");
    }
}
