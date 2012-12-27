<?php echo $header; ?>
<h1>Güncelleme</h1>
<div id="column-right">
  <ul>
    <li><b>Güncelleme</b></li>
    <li>Tamamlandı</li>
  </ul>
</div>
<div id="content">
  <?php if ($error_warning) { ?>
  <div class="warning"><?php echo $error_warning; ?></div>
  <?php } ?>
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
  	<fieldset>
    <p><b>Bu adımları dikkatlice takip ediniz!</b></p>
    <ol>
     <li>Güncelleme yazılımı hataları için forumdaki mesajlara gözatın</li>
	 <li>Güncellemeden sonra token hatalarını önlemek için tarayıcınızdaki çerezleri temizleyin.</li>
	 <li>CSS değişikliklerini güncellemek için yönetim sayfanızdayken Ctrl+F5 ile sayfanızını iki kere yenileyin.</li>
	 <li>Yönetim -> Kullanıcılar -> Kullanıcı Grupları sayfasından Üst Yönetici grubunu düzenle dedikten sonra tüm kutuları işaretleyin ve kaydedin.</li>
	 <li>Yönetim->Genel Ayarlar dan tüm alanları güncelleyin. Hiç birşey değişmemiş olsa bile kaydet butonuna tıklayınız.</li>
	 <li>CSS değişikliklerini güncellemek için katalog sayfanızdayken Ctrl+F5 ile sayfanızını iki kere yenileyin ya da tarayıcı ayalarlarından tarayıcınızın önbelleğini boşaltınız.</li>
    </ol>
    </fieldset>
    <div class="buttons">
	  <div class="right">
        <input type="submit" value="Devam Et" class="button" />
      </div>
	</div>
  </form>
</div>
<?php echo $footer; ?>