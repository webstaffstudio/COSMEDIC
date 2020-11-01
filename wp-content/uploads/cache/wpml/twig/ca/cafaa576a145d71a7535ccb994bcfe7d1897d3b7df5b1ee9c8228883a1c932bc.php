<?php

namespace WPML\Core;

use \WPML\Core\Twig\Environment;
use \WPML\Core\Twig\Error\LoaderError;
use \WPML\Core\Twig\Error\RuntimeError;
use \WPML\Core\Twig\Markup;
use \WPML\Core\Twig\Sandbox\SecurityError;
use \WPML\Core\Twig\Sandbox\SecurityNotAllowedTagError;
use \WPML\Core\Twig\Sandbox\SecurityNotAllowedFilterError;
use \WPML\Core\Twig\Sandbox\SecurityNotAllowedFunctionError;
use \WPML\Core\Twig\Source;
use \WPML\Core\Twig\Template;

/* /setup/ready.twig */
class __TwigTemplate_fa3c23210f83ef5475cb334f61bf8de5298b9e2aacf98a4bdad209d5b0c710a9 extends \WPML\Core\Twig\Template
{
    public function __construct(Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = [
        ];
    }

    protected function doDisplay(array $context, array $blocks = [])
    {
        // line 1
        echo "<span id=\"";
        echo \WPML\Core\twig_escape_filter($this->env, $this->getAttribute(($context["strings"] ?? null), "step_id", []), "html", null, true);
        echo "\">
<h1>";
        // line 2
        echo \WPML\Core\twig_escape_filter($this->env, $this->getAttribute(($context["strings"] ?? null), "heading", []), "html", null, true);
        echo "</h1>

<p>";
        // line 4
        echo sprintf($this->getAttribute(($context["strings"] ?? null), "description1", []), "<strong>", "</strong>");
        echo "</p>

<p>";
        // line 6
        echo sprintf($this->getAttribute(($context["strings"] ?? null), "description2", []), "<strong>", "</strong>");
        echo "</p>


<p class=\"wcml-setup-actions step\">
    <a href=\"";
        // line 10
        echo \WPML\Core\twig_escape_filter($this->env, ($context["continue_url"] ?? null), "html", null, true);
        echo "\" class=\"button button-primary button-large\">";
        echo \WPML\Core\twig_escape_filter($this->env, $this->getAttribute(($context["strings"] ?? null), "continue", []), "html", null, true);
        echo "</a>
</p>
</span>

";
    }

    public function getTemplateName()
    {
        return "/setup/ready.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  54 => 10,  47 => 6,  42 => 4,  37 => 2,  32 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Source("<span id=\"{{ strings.step_id }}\">
<h1>{{ strings.heading }}</h1>

<p>{{ strings.description1|format('<strong>','</strong>')|raw }}</p>

<p>{{ strings.description2|format('<strong>','</strong>')|raw }}</p>


<p class=\"wcml-setup-actions step\">
    <a href=\"{{ continue_url }}\" class=\"button button-primary button-large\">{{ strings.continue }}</a>
</p>
</span>

", "/setup/ready.twig", "C:\\OSPanel\\domains\\localhost\\cosmedoc\\wp-content\\plugins\\woocommerce-multilingual\\templates\\setup\\ready.twig");
    }
}
