<?php

/* @Twig/Exception/trace.html.twig */
class __TwigTemplate_630c90b4c20106645a875ee976d857f4f59191800296b56b3cc58eaa8fc62be0 extends Twig_Template
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
        $__internal_a8fb3a3bc64983a9fbec51f23fdf7cdcc634092ba430666694fc687006dd0999 = $this->env->getExtension("Symfony\\Bundle\\WebProfilerBundle\\Twig\\WebProfilerExtension");
        $__internal_a8fb3a3bc64983a9fbec51f23fdf7cdcc634092ba430666694fc687006dd0999->enter($__internal_a8fb3a3bc64983a9fbec51f23fdf7cdcc634092ba430666694fc687006dd0999_prof = new Twig_Profiler_Profile($this->getTemplateName(), "template", "@Twig/Exception/trace.html.twig"));

        $__internal_e4d8b7ced1b9e11bebe19d1a053a7b5d541185b9dca106dde57eb8d96a2a74dc = $this->env->getExtension("Symfony\\Bridge\\Twig\\Extension\\ProfilerExtension");
        $__internal_e4d8b7ced1b9e11bebe19d1a053a7b5d541185b9dca106dde57eb8d96a2a74dc->enter($__internal_e4d8b7ced1b9e11bebe19d1a053a7b5d541185b9dca106dde57eb8d96a2a74dc_prof = new Twig_Profiler_Profile($this->getTemplateName(), "template", "@Twig/Exception/trace.html.twig"));

        // line 1
        if ((($this->getAttribute((isset($context["trace"]) ? $context["trace"] : null), "file", array(), "any", true, true)) ? (_twig_default_filter($this->getAttribute((isset($context["trace"]) ? $context["trace"] : null), "file", array()), false)) : (false))) {
            // line 2
            echo "    <span class=\"icon icon-close\">";
            echo twig_include($this->env, $context, "@Twig/images/icon-minus-square.svg");
            echo "</span>
    <span class=\"icon icon-open\">";
            // line 3
            echo twig_include($this->env, $context, "@Twig/images/icon-plus-square.svg");
            echo "</span>
";
        }
        // line 5
        echo "
";
        // line 6
        if ($this->getAttribute((isset($context["trace"]) ? $context["trace"] : $this->getContext($context, "trace")), "function", array())) {
            // line 7
            echo "    <span class=\"trace-class\">";
            echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\CodeExtension')->abbrClass($this->getAttribute((isset($context["trace"]) ? $context["trace"] : $this->getContext($context, "trace")), "class", array()));
            echo "</span>";
            if ( !twig_test_empty($this->getAttribute((isset($context["trace"]) ? $context["trace"] : $this->getContext($context, "trace")), "type", array()))) {
                echo "<span class=\"trace-type\">";
                echo twig_escape_filter($this->env, $this->getAttribute((isset($context["trace"]) ? $context["trace"] : $this->getContext($context, "trace")), "type", array()), "html", null, true);
                echo "</span>";
            }
            echo "<span class=\"trace-method\">";
            echo twig_escape_filter($this->env, $this->getAttribute((isset($context["trace"]) ? $context["trace"] : $this->getContext($context, "trace")), "function", array()), "html", null, true);
            echo "</span><span class=\"trace-arguments\">(";
            echo $this->env->getExtension('Symfony\Bridge\Twig\Extension\CodeExtension')->formatArgs($this->getAttribute((isset($context["trace"]) ? $context["trace"] : $this->getContext($context, "trace")), "args", array()));
            echo ")</span>
";
        }
        // line 9
        echo "
";
        // line 10
        if ((($this->getAttribute((isset($context["trace"]) ? $context["trace"] : null), "file", array(), "any", true, true)) ? (_twig_default_filter($this->getAttribute((isset($context["trace"]) ? $context["trace"] : null), "file", array()), false)) : (false))) {
            // line 11
            echo "    ";
            $context["line_number"] = (($this->getAttribute((isset($context["trace"]) ? $context["trace"] : null), "line", array(), "any", true, true)) ? (_twig_default_filter($this->getAttribute((isset($context["trace"]) ? $context["trace"] : null), "line", array()), 1)) : (1));
            // line 12
            echo "    ";
            $context["file_link"] = $this->env->getExtension('Symfony\Bridge\Twig\Extension\CodeExtension')->getFileLink($this->getAttribute((isset($context["trace"]) ? $context["trace"] : $this->getContext($context, "trace")), "file", array()), (isset($context["line_number"]) ? $context["line_number"] : $this->getContext($context, "line_number")));
            // line 13
            echo "    ";
            $context["file_path"] = twig_replace_filter(strip_tags($this->env->getExtension('Symfony\Bridge\Twig\Extension\CodeExtension')->formatFile($this->getAttribute((isset($context["trace"]) ? $context["trace"] : $this->getContext($context, "trace")), "file", array()), (isset($context["line_number"]) ? $context["line_number"] : $this->getContext($context, "line_number")))), array((" at line " . (isset($context["line_number"]) ? $context["line_number"] : $this->getContext($context, "line_number"))) => ""));
            // line 14
            echo "    ";
            $context["file_path_parts"] = twig_split_filter($this->env, (isset($context["file_path"]) ? $context["file_path"] : $this->getContext($context, "file_path")), twig_constant("DIRECTORY_SEPARATOR"));
            // line 15
            echo "
    <span class=\"block trace-file-path\">
        in
        <a href=\"";
            // line 18
            echo twig_escape_filter($this->env, (isset($context["file_link"]) ? $context["file_link"] : $this->getContext($context, "file_link")), "html", null, true);
            echo "\">";
            echo twig_escape_filter($this->env, twig_join_filter(twig_slice($this->env, (isset($context["file_path_parts"]) ? $context["file_path_parts"] : $this->getContext($context, "file_path_parts")), 0,  -1), twig_constant("DIRECTORY_SEPARATOR")), "html", null, true);
            echo twig_escape_filter($this->env, twig_constant("DIRECTORY_SEPARATOR"), "html", null, true);
            echo "<strong>";
            echo twig_escape_filter($this->env, twig_last($this->env, (isset($context["file_path_parts"]) ? $context["file_path_parts"] : $this->getContext($context, "file_path_parts"))), "html", null, true);
            echo "</strong></a>
        (line ";
            // line 19
            echo twig_escape_filter($this->env, (isset($context["line_number"]) ? $context["line_number"] : $this->getContext($context, "line_number")), "html", null, true);
            echo ")
    </span>
";
        }
        // line 22
        echo "
";
        // line 23
        if ((($this->getAttribute((isset($context["trace"]) ? $context["trace"] : null), "file", array(), "any", true, true)) ? (_twig_default_filter($this->getAttribute((isset($context["trace"]) ? $context["trace"] : null), "file", array()), false)) : (false))) {
            // line 24
            echo "    <div id=\"trace-html-";
            echo twig_escape_filter($this->env, (((isset($context["prefix"]) ? $context["prefix"] : $this->getContext($context, "prefix")) . "-") . (isset($context["i"]) ? $context["i"] : $this->getContext($context, "i"))), "html", null, true);
            echo "\" class=\"trace-code sf-toggle-content\">
        ";
            // line 25
            echo twig_replace_filter($this->env->getExtension('Symfony\Bridge\Twig\Extension\CodeExtension')->fileExcerpt($this->getAttribute((isset($context["trace"]) ? $context["trace"] : $this->getContext($context, "trace")), "file", array()), $this->getAttribute((isset($context["trace"]) ? $context["trace"] : $this->getContext($context, "trace")), "line", array())), array("#DD0000" => "#183691", "#007700" => "#a71d5d", "#0000BB" => "#222222", "#FF8000" => "#969896"));
            // line 30
            echo "
    </div>
";
        }
        
        $__internal_a8fb3a3bc64983a9fbec51f23fdf7cdcc634092ba430666694fc687006dd0999->leave($__internal_a8fb3a3bc64983a9fbec51f23fdf7cdcc634092ba430666694fc687006dd0999_prof);

        
        $__internal_e4d8b7ced1b9e11bebe19d1a053a7b5d541185b9dca106dde57eb8d96a2a74dc->leave($__internal_e4d8b7ced1b9e11bebe19d1a053a7b5d541185b9dca106dde57eb8d96a2a74dc_prof);

    }

    public function getTemplateName()
    {
        return "@Twig/Exception/trace.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  107 => 30,  105 => 25,  100 => 24,  98 => 23,  95 => 22,  89 => 19,  80 => 18,  75 => 15,  72 => 14,  69 => 13,  66 => 12,  63 => 11,  61 => 10,  58 => 9,  42 => 7,  40 => 6,  37 => 5,  32 => 3,  27 => 2,  25 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("{% if trace.file|default(false) %}
    <span class=\"icon icon-close\">{{ include('@Twig/images/icon-minus-square.svg') }}</span>
    <span class=\"icon icon-open\">{{ include('@Twig/images/icon-plus-square.svg') }}</span>
{% endif %}

{% if trace.function %}
    <span class=\"trace-class\">{{ trace.class|abbr_class }}</span>{% if trace.type is not empty %}<span class=\"trace-type\">{{ trace.type }}</span>{% endif %}<span class=\"trace-method\">{{ trace.function }}</span><span class=\"trace-arguments\">({{ trace.args|format_args }})</span>
{% endif %}

{% if trace.file|default(false) %}
    {% set line_number = trace.line|default(1) %}
    {% set file_link = trace.file|file_link(line_number) %}
    {% set file_path = trace.file|format_file(line_number)|striptags|replace({ (' at line ' ~ line_number): '' }) %}
    {% set file_path_parts = file_path|split(constant('DIRECTORY_SEPARATOR')) %}

    <span class=\"block trace-file-path\">
        in
        <a href=\"{{ file_link }}\">{{ file_path_parts[:-1]|join(constant('DIRECTORY_SEPARATOR')) }}{{ constant('DIRECTORY_SEPARATOR') }}<strong>{{ file_path_parts|last }}</strong></a>
        (line {{ line_number }})
    </span>
{% endif %}

{% if trace.file|default(false) %}
    <div id=\"trace-html-{{ prefix ~ '-' ~ i }}\" class=\"trace-code sf-toggle-content\">
        {{ trace.file|file_excerpt(trace.line)|replace({
            '#DD0000': '#183691',
            '#007700': '#a71d5d',
            '#0000BB': '#222222',
            '#FF8000': '#969896'
        })|raw }}
    </div>
{% endif %}
", "@Twig/Exception/trace.html.twig", "/home/wissem/public_html/s6/Laruche/LaRuche/prototype_wissem/server/vendor/symfony/symfony/src/Symfony/Bundle/TwigBundle/Resources/views/Exception/trace.html.twig");
    }
}
