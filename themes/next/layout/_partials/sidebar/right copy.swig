<div class="right-sidebar">
  
  <!-- 1. 公告区域 -->
  <div class="right-sidebar-panel" style="border-bottom: 1px dashed #ccc; padding-bottom: 10px; margin-bottom: 10px;">
    <h3 style="margin-top:0; font-size: 16px;">公告</h3>
    <p>欢迎来到 ICEY 的安全屋！</p>
  </div>

  <!-- 2. 这里可以放头像，或者其他内容 -->
  <div class="right-sidebar-panel">
    <!-- 如果你想在右边也显示一个头像，可以用 img 标签 -->
    <!-- <img src="/images/avatar.jpg" style="width:100%; border-radius:50%;"> -->
    
    <div class="links-of-author motion-element">
      <p>我的链接：</p>
      {%- for name, link in theme.social %}
        <span class="links-of-author-item" style="display:block; margin: 5px 0;">
          <a href="{{ link.split('||')[0] | trim }}" title="{{ name }}" target="_blank">
            <i class="fa fa-link"></i> {{ name }}
          </a>
        </span>
      {%- endfor %}
    </div>
  </div>

</div>