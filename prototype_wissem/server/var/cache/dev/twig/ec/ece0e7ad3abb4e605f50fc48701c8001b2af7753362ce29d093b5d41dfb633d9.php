<?php

/* BOWPlatformBundle:Advert:index.html.twig */
class __TwigTemplate_5c0d1cc8aec922337840f54518792bfe9d096fdca91049d398de9a66a7191abd extends Twig_Template
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
        $__internal_2fb96c4f682b3ca426cab3279290213114e686f3d346eb0ca51a92b1cb8895d1 = $this->env->getExtension("Symfony\\Bundle\\WebProfilerBundle\\Twig\\WebProfilerExtension");
        $__internal_2fb96c4f682b3ca426cab3279290213114e686f3d346eb0ca51a92b1cb8895d1->enter($__internal_2fb96c4f682b3ca426cab3279290213114e686f3d346eb0ca51a92b1cb8895d1_prof = new Twig_Profiler_Profile($this->getTemplateName(), "template", "BOWPlatformBundle:Advert:index.html.twig"));

        $__internal_31e0dd4063bc627e23028328011cb6254f37df226c830e450d9ab926950874d0 = $this->env->getExtension("Symfony\\Bridge\\Twig\\Extension\\ProfilerExtension");
        $__internal_31e0dd4063bc627e23028328011cb6254f37df226c830e450d9ab926950874d0->enter($__internal_31e0dd4063bc627e23028328011cb6254f37df226c830e450d9ab926950874d0_prof = new Twig_Profiler_Profile($this->getTemplateName(), "template", "BOWPlatformBundle:Advert:index.html.twig"));

        // line 1
        echo "<!DOCTYPE html>

<html>
  <head>
    <title>Bienvenue sur ma première page avec OpenClassrooms !</title>
  </head>
  <body>
    <h1>Hello ";
        // line 8
        echo twig_escape_filter($this->env, (isset($context["nom"]) ? $context["nom"] : $this->getContext($context, "nom")), "html", null, true);
        echo " !</h1>

    <p>
      Le Hello World est un grand classique en programmation.
      Il signifie énormément, car cela veut dire que vous avez
      réussi à exécuter le programme pour accomplir une tâche simple :
      afficher ce hello world !
    </p>
  </body>
</html>
";
        
        $__internal_2fb96c4f682b3ca426cab3279290213114e686f3d346eb0ca51a92b1cb8895d1->leave($__internal_2fb96c4f682b3ca426cab3279290213114e686f3d346eb0ca51a92b1cb8895d1_prof);

        
        $__internal_31e0dd4063bc627e23028328011cb6254f37df226c830e450d9ab926950874d0->leave($__internal_31e0dd4063bc627e23028328011cb6254f37df226c830e450d9ab926950874d0_prof);

    }

    public function getTemplateName()
    {
        return "BOWPlatformBundle:Advert:index.html.twig";
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
    <title>Bienvenue sur ma première page avec OpenClassrooms !</title>
  </head>
  <body>
    <h1>Hello {{nom}} !</h1>

    <p>
      Le Hello World est un grand classique en programmation.
      Il signifie énormément, car cela veut dire que vous avez
      réussi à exécuter le programme pour accomplir une tâche simple :
      afficher ce hello world !
    </p>
  </body>
</html>
", "BOWPlatformBundle:Advert:index.html.twig", "/home/wissem/public_html/s6/Laruche/LaRuche/prototype_wissem/server/src/BOW/PlatformBundle/Resources/views/Advert/index.html.twig");
    }
}
