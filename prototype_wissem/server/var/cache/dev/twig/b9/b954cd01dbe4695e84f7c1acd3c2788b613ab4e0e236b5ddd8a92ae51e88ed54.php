<?php

/* @WebProfiler/Collector/router.html.twig */
class __TwigTemplate_34e121b3ad8c217b47a6565552a2db11de10c34f038973525ddcb0506f3d00cb extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        // line 1
        $this->parent = $this->loadTemplate("@WebProfiler/Profiler/layout.html.twig", "@WebProfiler/Collector/router.html.twig", 1);
        $this->blocks = array(
            'toolbar' => array($this, 'block_toolbar'),
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
        $__internal_9104162c5069f502c9fa8ab2e829e89746bd53f6e3ac1f8d13fa5576d8d8e696 = $this->env->getExtension("Symfony\\Bundle\\WebProfilerBundle\\Twig\\WebProfilerExtension");
        $__internal_9104162c5069f502c9fa8ab2e829e89746bd53f6e3ac1f8d13fa5576d8d8e696->enter($__internal_9104162c5069f502c9fa8ab2e829e89746bd53f6e3ac1f8d13fa5576d8d8e696_prof = new Twig_Profiler_Profile($this->getTemplateName(), "template", "@WebProfiler/Collector/router.html.twig"));

        $__internal_d394a8319ecaac70e1a0b34bdd91443ef77cb3c5c38b79f8115a4423df595b15 = $this->env->getExtension("Symfony\\Bridge\\Twig\\Extension\\ProfilerExtension");
        $__internal_d394a8319ecaac70e1a0b34bdd91443ef77cb3c5c38b79f8115a4423df595b15->enter($__internal_d394a8319ecaac70e1a0b34bdd91443ef77cb3c5c38b79f8115a4423df595b15_prof = new Twig_Profiler_Profile($this->getTemplateName(), "template", "@WebProfiler/Collector/router.html.twig"));

        $this->parent->display($context, array_merge($this->blocks, $blocks));
        
        $__internal_9104162c5069f502c9fa8ab2e829e89746bd53f6e3ac1f8d13fa5576d8d8e696->leave($__internal_9104162c5069f502c9fa8ab2e829e89746bd53f6e3ac1f8d13fa5576d8d8e696_prof);

        
        $__internal_d394a8319ecaac70e1a0b34bdd91443ef77cb3c5c38b79f8115a4423df595b15->leave($__internal_d394a8319ecaac70e1a0b34bdd91443ef77cb3c5c38b79f8115a4423df595b15_prof);

    }

    // line 3
    public function block_toolbar($context, array $blocks = array())
    {
        $__internal_859c08cf2a8f81e7dac62566dbfd70a6b2e7fa96af37f0a57af3a1934821b543 = $this->env->getExtension("Symfony\\Bundle\\WebProfilerBundle\\Twig\\WebProfilerExtension");
        $__internal_859c08cf2a8f81e7dac62566dbfd70a6b2e7fa96af37f0a57af3a1934821b543->enter($__internal_859c08cf2a8f81e7dac62566dbfd70a6b2e7fa96af37f0a57af3a1934821b543_prof = new Twig_Profiler_Profile($this->getTemplateName(), "block", "toolbar"));

        $__internal_fb4254727dff5e3c3aa214a10ffaed1d66ffa2e9c41b572838680726f7768ff8 = $this->env->getExtension("Symfony\\Bridge\\Twig\\Extension\\ProfilerExtension");
        $__internal_fb4254727dff5e3c3aa214a10ffaed1d66ffa2e9c41b572838680726f7768ff8->enter($__internal_fb4254727dff5e3c3aa214a10ffaed1d66ffa2e9c41b572838680726f7768ff8_prof = new Twig_Profiler_Profile($this->getTemplateName(), "block", "toolbar"));

        
        $__internal_fb4254727dff5e3c3aa214a10ffaed1d66ffa2e9c41b572838680726f7768ff8->leave($__internal_fb4254727dff5e3c3aa214a10ffaed1d66ffa2e9c41b572838680726f7768ff8_prof);

        
        $__internal_859c08cf2a8f81e7dac62566dbfd70a6b2e7fa96af37f0a57af3a1934821b543->leave($__internal_859c08cf2a8f81e7dac62566dbfd70a6b2e7fa96af37f0a57af3a1934821b543_prof);

    }

    // line 5
    public function block_menu($context, array $blocks = array())
    {
        $__internal_22ca3d90c3e04a0920f0266fbb0138c570090d714a3d1b4861c2b877b9cd6d98 = $this->env->getExtension("Symfony\\Bundle\\WebProfilerBundle\\Twig\\WebProfilerExtension");
        $__internal_22ca3d90c3e04a0920f0266fbb0138c570090d714a3d1b4861c2b877b9cd6d98->enter($__internal_22ca3d90c3e04a0920f0266fbb0138c570090d714a3d1b4861c2b877b9cd6d98_prof = new Twig_Profiler_Profile($this->getTemplateName(), "block", "menu"));

        $__internal_496e4e53744dceb89766e034904c287527e4e6d9106cebe921f130cbbd72a0ca = $this->env->getExtension("Symfony\\Bridge\\Twig\\Extension\\ProfilerExtension");
        $__internal_496e4e53744dceb89766e034904c287527e4e6d9106cebe921f130cbbd72a0ca->enter($__internal_496e4e53744dceb89766e034904c287527e4e6d9106cebe921f130cbbd72a0ca_prof = new Twig_Profiler_Profile($this->getTemplateName(), "block", "menu"));

        // line 6
        echo "<span class=\"label\">
    <span class=\"icon\">";
        // line 7
        echo twig_include($this->env, $context, "@WebProfiler/Icon/router.svg");
        echo "</span>
    <strong>Routing</strong>
</span>
";
        
        $__internal_496e4e53744dceb89766e034904c287527e4e6d9106cebe921f130cbbd72a0ca->leave($__internal_496e4e53744dceb89766e034904c287527e4e6d9106cebe921f130cbbd72a0ca_prof);

        
        $__internal_22ca3d90c3e04a0920f0266fbb0138c570090d714a3d1b4861c2b877b9cd6d98->leave($__internal_22ca3d90c3e04a0920f0266fbb0138c570090d714a3d1b4861c2b877b9cd6d98_prof);

    }

    // line 12
    public function block_panel($context, array $blocks = array())
    {
        $__internal_bb0743f1e3b1b198feb021483f9276d5511cbb558f35c04bb2c50f39e1490ab3 = $this->env->getExtension("Symfony\\Bundle\\WebProfilerBundle\\Twig\\WebProfilerExtension");
        $__internal_bb0743f1e3b1b198feb021483f9276d5511cbb558f35c04bb2c50f39e1490ab3->enter($__internal_bb0743f1e3b1b198feb021483f9276d5511cbb558f35c04bb2c50f39e1490ab3_prof = new Twig_Profiler_Profile($this->getTemplateName(), "block", "panel"));

        $__internal_93819ee84e81506e0cadef315a8f6501894101addb97b239c3163ee033cf3aac = $this->env->getExtension("Symfony\\Bridge\\Twig\\Extension\\ProfilerExtension");
        $__internal_93819ee84e81506e0cadef315a8f6501894101addb97b239c3163ee033cf3aac->enter($__internal_93819ee84e81506e0cadef315a8f6501894101addb97b239c3163ee033cf3aac_prof = new Twig_Profiler_Profile($this->getTemplateName(), "block", "panel"));

        // line 13
        echo "    ";
        echo $this->env->getRuntime('Symfony\Bridge\Twig\Extension\HttpKernelRuntime')->renderFragment($this->env->getExtension('Symfony\Bridge\Twig\Extension\RoutingExtension')->getPath("_profiler_router", array("token" => (isset($context["token"]) ? $context["token"] : $this->getContext($context, "token")))));
        echo "
";
        
        $__internal_93819ee84e81506e0cadef315a8f6501894101addb97b239c3163ee033cf3aac->leave($__internal_93819ee84e81506e0cadef315a8f6501894101addb97b239c3163ee033cf3aac_prof);

        
        $__internal_bb0743f1e3b1b198feb021483f9276d5511cbb558f35c04bb2c50f39e1490ab3->leave($__internal_bb0743f1e3b1b198feb021483f9276d5511cbb558f35c04bb2c50f39e1490ab3_prof);

    }

    public function getTemplateName()
    {
        return "@WebProfiler/Collector/router.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  94 => 13,  85 => 12,  71 => 7,  68 => 6,  59 => 5,  42 => 3,  11 => 1,);
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

{% block toolbar %}{% endblock %}

{% block menu %}
<span class=\"label\">
    <span class=\"icon\">{{ include('@WebProfiler/Icon/router.svg') }}</span>
    <strong>Routing</strong>
</span>
{% endblock %}

{% block panel %}
    {{ render(path('_profiler_router', { token: token })) }}
{% endblock %}
", "@WebProfiler/Collector/router.html.twig", "/home/wissem/public_html/s6/Laruche/LaRuche/prototype_wissem/server/vendor/symfony/symfony/src/Symfony/Bundle/WebProfilerBundle/Resources/views/Collector/router.html.twig");
    }
}
