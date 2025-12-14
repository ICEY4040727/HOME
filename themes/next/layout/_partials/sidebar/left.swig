<div class="left-sidebar-inner">
  
  <!-- 1. 头像与作者信息 -->
  <div class="site-author motion-element" itemprop="author" itemscope itemtype="http://schema.org/Person">
    {%- if theme.avatar.url %}
      <img class="site-author-image" itemprop="image" alt="{{ author }}"
        src="{{ url_for(theme.avatar.url) }}">
    {%- endif %}
    <p class="site-author-name" itemprop="name">{{ author }}</p>
    <div class="site-description" itemprop="description">{{ description }}</div>
  </div>

  <!-- 2. 公告区域 (想要加的新功能) -->
  <div class="sidebar-panel-announcement" style="margin: 15px 0; padding: 10px; background: #f9f9f9; border-radius: 3px; text-align: center;">
    <h3 style="margin-top:0; font-size: 14px; font-weight: bold;">公告</h3>
    <p style="font-size: 13px; margin: 0;">欢迎来到 ICEY 的安全屋！</p>
  </div>

  <!-- 3. 站点统计 (日志/分类/标签) -->
  <div class="site-state-wrap motion-element">
    <nav class="site-state">
      {%- if config.archive_dir != '/' and site.posts.length > 0 %}
        <div class="site-state-item site-state-posts">
          <a href="{{ url_for(theme.menu.archives.split('||')[0] | trim) }}">
            <span class="site-state-item-count">{{ site.posts.length }}</span>
            <span class="site-state-item-name">{{ __('state.posts') }}</span>
          </a>
        </div>
      {%- endif %}

      {%- if site.categories.length > 0 %}
        <div class="site-state-item site-state-categories">
          <a href="{{ url_for(theme.menu.categories.split('||')[0] | trim) }}">
            <span class="site-state-item-count">{{ site.categories.length }}</span>
            <span class="site-state-item-name">{{ __('state.categories') }}</span>
          </a>
        </div>
      {%- endif %}

      {%- if site.tags.length > 0 %}
        <div class="site-state-item site-state-tags">
          <a href="{{ url_for(theme.menu.tags.split('||')[0] | trim) }}">
            <span class="site-state-item-count">{{ site.tags.length }}</span>
            <span class="site-state-item-name">{{ __('state.tags') }}</span>
          </a>
        </div>
      {%- endif %}
    </nav>
  </div>

  <!-- 4. 社交链接 -->
  <div class="links-of-author motion-element">
    {%- if theme.social %}
      {%- for name, link in theme.social %}
        <span class="links-of-author-item">
          <a href="{{ link.split('||')[0] | trim }}" title="{{ name }}" target="_blank">
            <i class="{{ link.split('||')[1] | trim | default('fa fa-link') }} fa-fw"></i>
            {{ name }}
          </a>
        </span>
      {%- endfor %}
    {%- endif %}
  </div>

</div>