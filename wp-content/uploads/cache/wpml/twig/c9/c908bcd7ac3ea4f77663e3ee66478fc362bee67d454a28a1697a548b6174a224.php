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

/* /setup/multi-currency.twig */
class __TwigTemplate_4fff4ce9973c4457f39086505e60cb9abc75cf132d68138f9af37e4f81524d1f extends \WPML\Core\Twig\Template
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
        echo \WPML\Core\twig_escape_filter($this->env, $this->getAttribute(($context["strings"] ?? null), "description", []), "html", null, true);
        echo "</p>

<p>
    <label>
        <input type=\"checkbox\" value=\"1\" name=\"enabled\" ";
        // line 8
        if (($context["multi_currency_on"] ?? null)) {
            echo "checked=\"checked\"";
        }
        echo " />&nbsp;";
        echo \WPML\Core\twig_escape_filter($this->env, $this->getAttribute(($context["strings"] ?? null), "label_mco", []), "html", null, true);
        echo "
    </label>
</p>

<p class=\"wcml-setup-actions step\">
    <a href=\"";
        // line 13
        echo \WPML\Core\twig_escape_filter($this->env, ($context["continue_url"] ?? null), "html", null, true);
        echo "\" class=\"button button-large button-primary submit\">";
        echo \WPML\Core\twig_escape_filter($this->env, $this->getAttribute(($context["strings"] ?? null), "continue", []), "html", null, true);
        echo "</a>
</p>
</span>";
    }

    public function getTemplateName()
    {
        return "/setup/multi-currency.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  61 => 13,  49 => 8,  42 => 4,  37 => 2,  32 => 1,);
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

<p>{{ strings.description }}</p>

<p>
    <label>
        <input type=\"checkbox\" value=\"1\" name=\"enabled\" {% if multi_currency_on %}checked=\"checked\"{% endif %} />&nbsp;{{ strings.label_mco }}
    </label>
</p>

<p class=\"wcml-setup-actions step\">
    <a href=\"{{ continue_url }}\" class=\"button button-large button-primary submit\">{{ strings.continue }}</a>
</p>
</span>", "/setup/multi-currency.twig", "C:\\OSPanel\\domains\\localhost\\cosmedoc\\wp-content\\plugins\\woocommerce-multilingual\\templates\\setup\\multi-currency.twig");
    }
}
