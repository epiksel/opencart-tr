<?php echo $header; ?>
<h1 style="background: url('view/image/configuration.png') no-repeat;">Güncelleme</h1>
<div style="width: 100%; display: inline-block;">
  <div style="float: left; width: 569px;">
    <?php if ($error_warning) { ?>
    <div class="warning"><?php echo $error_warning; ?></div>
    <?php } ?>
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
      <p><b>Bu adımları dikkatlice takip ediniz!</b></p>
	  <ol>
	    <li>Güncelleme yazılımı hataları için forumdaki mesajlara gözatın</li>
		<li>Güncellemeden sonra token hatalarını önlemek için tarayıcınızdaki çerezleri temizleyin.</li>
		<li>CSS değişikliklerini güncellemek için yönetim sayfanızdayken Ctrl+F5 ile sayfanızını iki kere yenileyin.</li>
		<li>Yönetim->Kullanıcılar->Kullanıcı Grupları sayfasından Üst Yönetici grubunu düzenle dedikten sonra tüm kutuları işaretleyin ve kaydedin.</li>
		<li>Yönetim->Genel Ayarlar dan tüm alanları güncelleyin. Hiç birşey değişmemiş olsa bile kaydet butonuna tıklayınız.</li>
		<li>CSS değişikliklerini güncellemek için katalog sayfanızdayken Ctrl+F5 ile sayfanızını iki kere yenileyin.</li>
	  </ol>
      <div style="text-align: right;"><a onclick="document.getElementById('form').submit()" class="button"><span class="button_left button_continue"></span><span class="button_middle">Güncelle</span><span class="button_right"></span></a></div>
    </form>
  </div>
  <div style="float: right; width: 205px; height: 400px; padding: 10px; color: #663300; border: 1px solid #FFE0CC; background: #FFF5CC;">
    <ul>
      <li><b>Güncelleme</b></li>
      <li>Tamamlandı</li>
    </ul>
  </div>
</div>
<?php echo $footer; ?>

