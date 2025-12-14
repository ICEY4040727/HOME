<!DOCTYPE html>
<html lang="{{ config.language }}">
<head>
  {{ partial('_partials/head/head.swig', {}, {cache: theme.cache.enable}) }}
  {% include '_partials/head/head-unique.swig' %}
  <title>{% block title %}{% endblock %}</title>
  {#{{ partial('_partials/head/injects.swig', {}, {cache: theme.cache.enable}) }} #}
</head>

<body itemscope itemtype="http://schema.org/WebPage">
  <div class="container">
    <div class="headband"></div>

    <!-- 原本的 Header 位置，我们留空或只保留移动端逻辑，
         但在 Pisces 三栏改造中，我们把 PC 端菜单移到 main-inner 里 -->
    <header class="header" itemscope itemtype="http://schema.org/WPHeader">
      <div class="header-inner">
        <!-- 移动端菜单按钮 -->
        {% include '_partials/header/index.swig' %}
      </div>
    </header>

    <main class="main">
      {% import '_macro/sidebar.swig' as sidebar_template with context %}
      
      <div class="main-inner">

        {# === 1. 左侧栏：包含 菜单(Header) + 头像(Sidebar) === #}
        <div class="content-wrap-left">
            {# 这里再次引入 Header，专门给 PC 端三栏布局用 #}
            <div class="desktop-header-fix">
                {% include '_partials/header/index.swig' %}
            </div>
            
            <!-- 1.2 侧边栏 (直接引用你的 left.swig) -->
            <aside class="sidebar">
                <div class="sidebar-inner">
                    {% include '_partials/sidebar/left.swig' %}
                </div>
            </aside>
        </div>

        {# === 2. 中间内容区 === #}
        <div class="content-wrap">
          <div class="content {% block class %}{% endblock %}">
            {% block content %}{% endblock %}
          </div>
          {% include '_partials/footer.swig' %}
        </div>

        {# === 3. 右侧栏 === #}
        <div class="content-wrap-right">
          {% include '_partials/sidebar/right.swig' %}
        </div>

      </div>
    </main>

    <div class="back-to-top">
      <i class="fa fa-arrow-up"></i>
      {%- if theme.back2top.scrollpercent %}
        <span id="scrollpercent"><span>0</span>%</span>
      {%- endif %}
    </div>
  </div>

  {{ partial('_scripts/index.swig', {}, {cache: theme.cache.enable}) }}
  {{ partial('_third-party/index.swig', {}, {cache: theme.cache.enable}) }}
</body>
</html>
