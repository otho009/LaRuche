<?php

/* @WebProfiler/Collector/exception.html.twig */
class __TwigTemplate_d180a32bfa13f9e61c734866501950104f0f7f7fdff65653ef564c01a233e423 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("@WebProfiler/Profiler/layout.html.twig", "@WebProfiler/Collector/exception.html.twig", 1);
        $this->blocks = array(
            'head' => array($this, 'block_head'),
            'menu' => array($this, 'block_menu'),
            'panel' => array($this, 'block_panel'),
        );
    }

    protected function doGetParent(array $context)
    {
        return "@WebProfiler/Profiler/layout.html.twig";
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        $__internal_313c61535d70aaebf6b89af146f10f670dc8dc06763384b3db01350dd68ea0cb = $this->env->getExtension("Symfony\\Bundle\\WebProfilerBundle\\Twig\\WebProfilerExtension");
        $__internal_313c61535d70aaebf6b89af146f10f670dc8dc06763384b3db01350dd68ea0cb->enter($__internal_313c61535d70aaebf6b89af146f10f670dc8dc06763384b3db01350dd68ea0cb_prof = new Twig_Profiler_Profile($this->getTemplateName(), "template", "@WebProfiler/Collector/exception.html.twig"));

        $__internal_aabf40ead329561d989fe86a801202883554f6d09642e896c30cb1d2487cd590 = $this->env->getExtension("Symfony\\Bridge\\Twig\\Extension\\ProfilerExtension");
        $__internal_aabf40ead329561d989fe86a801202883554f6d09642e896c30cb1d2487cd590->enter($__internal_aabf40ead329561d989fe86a801202883554f6d09642e896c30cb1d2487cd590_prof = new Twig_Profiler_Profile($this->getTemplateName(), "template", "@WebProfiler/Collector/exception.html.twig"));

        $this->parent->display($context, array_merge($this->blocks, $blocks));
        
        $__internal_313c61535d70aaebf6b89af146f10f670dc8dc06763384b3db01350dd68ea0cb->leave($__internal_313c61535d70aaebf6b89af146f10f670dc8dc06763384b3db01350dd68ea0cb_prof);

        
        $__internal_aabf40ead329561d989fe86a801202883554f6d09642e896c30cb1d2487cd590->leave($__internal_aabf40ead329561d989fe86a801202883554f6d09642e896c30cb1d2487cd590_prof);

    }

    // line 3
    public function block_head($context, array $blocks = array())
    {
        $__internal_d334cb9a442bdcc250ec560fc5b8d3010b056812fc4e30984588f4d297ea6447 = $this->env->getExtension("Symfony\\Bundle\\WebProfilerBundle\\Twig\\WebProfilerExtension");
        $__internal_d334cb9a442bdcc250ec560fc5b8d3010b056812fc4e30984588f4d297ea6447->enter($__internal_d334cb9a442bdcc250ec560fc5b8d3010b056812fc4e30984588f4d297ea6447_prof = new Twig_Profiler_Profile($this->getTemplateName(), "block", "head"));

        $__internal_fd5903c68f002b3d2ea0298bdbb68d83d0bdc24df55511b363e0a7a98120715d = $this->env->getExtension("Symfony\\Bridge\\Twig\\Extension\\ProfilerExtension");
        $__internal_fd5903c68f002b3d2ea0298bdbb68d83d0bdc24df55511b363e0a7a98120715d->enter($__internal_fd5903c68f002b3d2ea0298bdbb68d83d0bdc24df55511b363e0a7a98120715d_prof = new Twig_Profiler_Profile($this->getTemplateName(), "block", "head"));

        // line 4
        echo "    ";
        if ($this->getAttribute((isset($context["collector"]) ? $context["collector"] : $this->getContext($context, "collector")), "hasexception", array())) {
            // line 5
            echo "        <style>
            ";
            // line 6
            echo $this->env->getRuntime('Symfony\Bridge\Twig\Extension\HttpKernelRuntime')->renderFragment($this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_profiler_exception_css", array("token" => (isset($context["token"]) ? $context["token"] : $this->getContext($context, "token")))));
            echo "
        </style>
    ";
        }
        // line 9
        echo "    ";
        $this->displayParentBlock("head", $context, $blocks);
        echo "
";
        
        $__internal_fd5903c68f002b3d2ea0298bdbb68d83d0bdc24df55511b363e0a7a98120715d->leave($__internal_fd5903c68f002b3d2ea0298bdbb68d83d0bdc24df55511b363e0a7a98120715d_prof);

        
        $__internal_d334cb9a442bdcc250ec560fc5b8d3010b056812fc4e30984588f4d297ea6447->leave($__internal_d334cb9a442bdcc250ec560fc5b8d3010b056812fc4e30984588f4d297ea6447_prof);

    }

    // line 12
    public function block_menu($context, array $blocks = array())
    {
        $__internal_1f0a2eafe7def80ad9173b764fe23c5e38d530a82afc21cc32a451c98e3ce7d5 = $this->env->getExtension("Symfony\\Bundle\\WebProfilerBundle\\Twig\\WebProfilerExtension");
        $__internal_1f0a2eafe7def80ad9173b764fe23c5e38d530a82afc21cc32a451c98e3ce7d5->enter($__internal_1f0a2eafe7def80ad9173b764fe23c5e38d530a82afc21cc32a451c98e3ce7d5_prof = new Twig_Profiler_Profile($this->getTemplateName(), "block", "menu"));

        $__internal_8e3d7719fdddbc78f78c7a753a1707ca1c19a5851abfc335490fd10a6840f4b9 = $this->env->getExtension("Symfony\\Bridge\\Twig\\Extension\\ProfilerExtension");
        $__internal_8e3d7719fdddbc78f78c7a753a1707ca1c19a5851abfc335490fd10a6840f4b9->enter($__internal_8e3d7719fdddbc78f78c7a753a1707ca1c19a5851abfc335490fd10a6840f4b9_prof = new Twig_Profiler_Profile($this->getTemplateName(), "block", "menu"));

        // line 13
        echo "    <span class=\"label ";
        echo (($this->getAttribute((isset($context["collector"]) ? $context["collector"] : $this->getContext($context, "collector")), "hasexception", array())) ? ("label-status-error") : ("disabled"));
        echo "\">
        <span class=\"icon\">";
        // line 14
        echo twig_include($this->env, $context, "@WebProfiler/Icon/exception.svg");
        echo "</span>
        <strong>Exception</strong>
        ";
        // line 16
        if ($this->getAttribute((isset($context["collector"]) ? $context["collector"] : $this->getContext($context, "collector")), "hasexception", array())) {
            // line 17
            echo "            <span class=\"count\">
                <span>1</span>
            </span>
        ";
        }
        // line 21
        echo "    </span>
";
        
        $__internal_8e3d7719fdddbc78f78c7a753a1707ca1c19a5851abfc335490fd10a6840f4b9->leave($__internal_8e3d7719fdddbc78f78c7a753a1707ca1c19a5851abfc335490fd10a6840f4b9_prof);

        
        $__internal_1f0a2eafe7def80ad9173b764fe23c5e38d530a82afc21cc32a451c98e3ce7d5->leave($__internal_1f0a2eafe7def80ad9173b764fe23c5e38d530a82afc21cc32a451c98e3ce7d5_prof);

    }

    // line 24
    public function block_panel($context, array $blocks = array())
    {
        $__internal_d4210a7fb46caedc2509e4b614078e802720d1e2e739295def43cef5f1f95879 = $this->env->getExtension("Symfony\\Bundle\\WebProfilerBundle\\Twig\\WebProfilerExtension");
        $__internal_d4210a7fb46caedc2509e4b614078e802720d1e2e739295def43cef5f1f95879->enter($__internal_d4210a7fb46caedc2509e4b614078e802720d1e2e739295def43cef5f1f95879_prof = new Twig_Profiler_Profile($this->getTemplateName(), "block", "panel"));

        $__internal_434a9275554fd1b6d62a6863afc9e1edfb5f7aede20089162e2a47409aaee53b = $this->env->getExtension("Symfony\\Bridge\\Twig\\Extension\\ProfilerExtension");
        $__internal_434a9275554fd1b6d62a6863afc9e1edfb5f7aede20089162e2a47409aaee53b->enter($__internal_434a9275554fd1b6d62a6863afc9e1edfb5f7aede20089162e2a47409aaee53b_prof = new Twig_Profiler_Profile($this->getTemplateName(), "block", "panel"));

        // line 25
        echo "    <h2>Exceptions</h2>

    ";
        // line 27
        if ( !$this->getAttribute((isset($context["collector"]) ? $context["collector"] : $this->getContext($context, "collector")), "hasexception", array())) {
            // line 28
            echo "        <div class=\"empty\">
            <p>No exception was thrown and caught during the request.</p>
        </div>
    ";
        } else {
            // line 32
            echo "        <div class=\"sf-reset\">
            ";
            // line 33
            echo $this->env->getRuntime('Symfony\Bridge\Twig\Extension\HttpKernelRuntime')->renderFragment($this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_profiler_exception", array("token" => (isset($context["token"]) ? $context["token"] : $this->getContext($context, "token")))));
            echo "
        </div>
    ";
        }
        
        $__internal_434a9275554fd1b6d62a6863afc9e1edfb5f7aede20089162e2a47409aaee53b->leave($__internal_434a9275554fd1b6d62a6863afc9e1edfb5f7aede20089162e2a47409aaee53b_prof);

        
        $__internal_d4210a7fb46caedc2509e4b614078e802720d1e2e739295def43cef5f1f95879->leave($__internal_d4210a7fb46caedc2509e4b614078e802720d1e2e739295def43cef5f1f95879_prof);

    }

    public function getTemplateName()
    {
        return "@WebProfiler/Collector/exception.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  138 => 33,  135 => 32,  129 => 28,  127 => 27,  123 => 25,  114 => 24,  103 => 21,  97 => 17,  95 => 16,  90 => 14,  85 => 13,  76 => 12,  63 => 9,  57 => 6,  54 => 5,  51 => 4,  42 => 3,  11 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("{% extends '@WebProfiler/Profiler/layout.html.twig' %}

{% block head %}
    {% if collector.hasexception %}
        <style>
            {{ render(path('_profiler_exception_css', { token: token })) }}
        </style>
    {% endif %}
    {{ parent() }}
{% endblock %}

{% block menu %}
    <span class=\"label {{ collector.hasexception ? 'label-status-error' : 'disabled' }}\">
        <span class=\"icon\">{{ include('@WebProfiler/Icon/exception.svg') }}</span>
        <strong>Exception</strong>
        {% if collector.hasexception %}
            <span class=\"count\">
                <span>1</span>
            </span>
        {% endif %}
    </span>
{% endblock %}

{% block panel %}
    <h2>Exceptions</h2>

    {% if not collector.hasexception %}
        <div class=\"empty\">
            <p>No exception was thrown and caught during the request.</p>
        </div>
    {% else %}
        <div class=\"sf-reset\">
            {{ render(path('_profiler_exception', { token: token })) }}
        </div>
    {% endif %}
{% endblock %}
", "@WebProfiler/Collector/exception.html.twig", "/home/wissem/public_html/s6/Laruche/LaRuche/prototype_wissem/server/vendor/symfony/symfony/src/Symfony/Bundle/WebProfilerBundle/Resources/views/Collector/exception.html.twig");
    }
}
