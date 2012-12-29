<?php echo $header; ?>
<h1>Adım 2 - Ön Yükleme</h1>
<div id="column-right">
  <ul>
    <li>Lisans</li>
    <li><b>Ön Yükleme</b></li>
    <li>Yapılandırma</li>
    <li>Tamamlandı</li>
  </ul>
</div>
<div id="content">
  <?php if ($error_warning) { ?>
  <div class="warning"><?php echo $error_warning; ?></div>
  <?php } ?>
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
    <p>1. Lütfen aşağıdaki PHP ayarlarının sağlandığından emin olunuz.</p>
    <fieldset>
      <table>
        <tr>
          <th width="35%" align="left"><b>PHP Ayarları</b></th>
          <th width="25%" align="left"><b>Geçerli Ayarlar</b></th>
          <th width="25%" align="left"><b>Gerekli Ayarlar</b></th>
          <th width="15%" align="center"><b>Durum</b></th>
        </tr>
        <tr>
          <td>PHP Versiyon:</td>
          <td><?php echo phpversion(); ?></td>
          <td>5.0+</td>
          <td align="center"><?php echo (phpversion() >= '5.0') ? '<img src="view/image/good.png" alt="Good" />' : '<img src="view/image/bad.png" alt="Bad" />'; ?></td>
        </tr>
        <tr>
          <td>Register Globals:</td>
          <td><?php echo (ini_get('register_globals')) ? 'On' : 'Off'; ?></td>
          <td>Off</td>
          <td align="center"><?php echo (!ini_get('register_globals')) ? '<img src="view/image/good.png" alt="Good" />' : '<img src="view/image/bad.png" alt="Bad" />'; ?></td>
        </tr>
        <tr>
          <td>Magic Quotes GPC:</td>
          <td><?php echo (ini_get('magic_quotes_gpc')) ? 'On' : 'Off'; ?></td>
          <td>Off</td>
          <td align="center"><?php echo (!ini_get('magic_quotes_gpc')) ? '<img src="view/image/good.png" alt="Good" />' : '<img src="view/image/bad.png" alt="Bad" />'; ?></td>
        </tr>
        <tr>
          <td>File Uploads:</td>
          <td><?php echo (ini_get('file_uploads')) ? 'On' : 'Off'; ?></td>
          <td>On</td>
          <td align="center"><?php echo (ini_get('file_uploads')) ? '<img src="view/image/good.png" alt="Good" />' : '<img src="view/image/bad.png" alt="Bad" />'; ?></td>
        </tr>
        <tr>
          <td>Session Auto Start:</td>
          <td><?php echo (ini_get('session_auto_start')) ? 'On' : 'Off'; ?></td>
          <td>Off</td>
          <td align="center"><?php echo (!ini_get('session_auto_start')) ? '<img src="view/image/good.png" alt="Good" />' : '<img src="view/image/bad.png" alt="Bad" />'; ?></td>
        </tr>
      </table>
    </fieldset>
    <p>2. Lütfen aşağıdaki PHP eklentilerin yüklü olduğundan emin olun.</p>
    <fieldset>
      <table>
        <tr>
          <th width="35%" align="left"><b>Eklentiler</b></th>
          <th width="25%" align="left"><b>Geçerli Ayarlar</b></th>
          <th width="25%" align="left"><b>Gerekli Ayarlar</b></th>
          <th width="15%" align="center"><b>Durum</b></th>
        </tr>
        <tr>
          <td>MySQL:</td>
          <td><?php echo extension_loaded('mysql') ? 'On' : 'Off'; ?></td>
          <td>On</td>
          <td align="center"><?php echo extension_loaded('mysql') ? '<img src="view/image/good.png" alt="Good" />' : '<img src="view/image/bad.png" alt="Bad" />'; ?></td>
        </tr>
        <tr>
          <td>GD:</td>
          <td><?php echo extension_loaded('gd') ? 'On' : 'Off'; ?></td>
          <td>On</td>
          <td align="center"><?php echo extension_loaded('gd') ? '<img src="view/image/good.png" alt="Good" />' : '<img src="view/image/bad.png" alt="Bad" />'; ?></td>
        </tr>
        <tr>
          <td>cURL:</td>
          <td><?php echo extension_loaded('curl') ? 'On' : 'Off'; ?></td>
          <td>On</td>
          <td align="center"><?php echo extension_loaded('curl') ? '<img src="view/image/good.png" alt="Good" />' : '<img src="view/image/bad.png" alt="Bad" />'; ?></td>
        </tr>
        <tr>
          <td>mCrypt:</td>
          <td><?php echo function_exists('mcrypt_encrypt') ? 'On' : 'Off'; ?></td>
          <td>On</td>
          <td align="center"><?php echo function_exists('mcrypt_encrypt') ? '<img src="view/image/good.png" alt="Good" />' : '<img src="view/image/bad.png" alt="Bad" />'; ?></td>
        </tr>
        <tr>
          <td>ZIP:</td>
          <td><?php echo extension_loaded('zlib') ? 'On' : 'Off'; ?></td>
          <td>On</td>
          <td align="center"><?php echo extension_loaded('zlib') ? '<img src="view/image/good.png" alt="Good" />' : '<img src="view/image/bad.png" alt="Bad" />'; ?></td>
        </tr>
      </table>
    </fieldset>
    <p>3. Lütfen aşağıdaki dosyaların CHMOD izinlerinin doğru ayarlanmış olduğundan emin olun.</p>
    <fieldset>
      <table>
        <tr>
          <th align="left"><b>Dosyalar</b></th>
          <th align="left"><b>Durum</b></th>
        </tr>
        <tr>
          <td><?php echo $config_catalog; ?></td>
          <td><?php if (!file_exists($config_catalog)) { ?>
            <span class="bad">Eksik</span>
            <?php } elseif (!is_writable($config_catalog)) { ?>
            <span class="bad">Yazılamaz</span>
          <?php } else { ?>
          <span class="good">Yazılabilir</span>
          <?php } ?></td>
        </tr>
        <tr>
          <td><?php echo $config_admin; ?></td>
          <td><?php if (!file_exists($config_admin)) { ?>
            <span class="bad">Eksik</span>
            <?php } elseif (!is_writable($config_admin)) { ?>
            <span class="bad">Yazılamaz</span>
          <?php } else { ?>
          <span class="good">Yazılabilir</span>
          <?php } ?></td>
        </tr>
      </table>
    </fieldset>
    <p>4. Lütfen aşağıdaki dizinlerin CHMOD izinlerinin doğru ayarlanmış olduğundan emin olun.</p>
    <fieldset>
      <table>
        <tr>
          <th align="left"><b>Dizinler</b></th>
          <th align="left"><b>Durum</b></th>
        </tr>
        <tr>
          <td><?php echo $cache . '/'; ?></td>
          <td><?php echo is_writable($cache) ? '<span class="good">Yazılabilir</span>' : '<span class="bad">Yazılamaz</span>'; ?></td>
        </tr>
        <tr>
          <td><?php echo $logs . '/'; ?></td>
          <td><?php echo is_writable($logs) ? '<span class="good">Yazılabilir</span>' : '<span class="bad">Yazılamaz</span>'; ?></td>
        </tr>
        <tr>
          <td><?php echo $image . '/'; ?></td>
          <td><?php echo is_writable($image) ? '<span class="good">Yazılabilir</span>' : '<span class="bad">Yazılamaz</span>'; ?></td>
        </tr>
        <tr>
          <td><?php echo $image_cache . '/'; ?></td>
          <td><?php echo is_writable($image_cache) ? '<span class="good">Yazılabilir</span>' : '<span class="bad">Yazılamaz</span>'; ?></td>
        </tr>
        <tr>
          <td><?php echo $image_data . '/'; ?></td>
          <td><?php echo is_writable($image_data) ? '<span class="good">Yazılabilir</span>' : '<span class="bad">Yazılamaz</span>'; ?></td>
        </tr>
        <tr>
          <td><?php echo $download . '/'; ?></td>
          <td><?php echo is_writable($download) ? '<span class="good">Yazılabilir</span>' : '<span class="bad">Yazılamaz</span>'; ?></td>
        </tr>
      </table>
    </fieldset>
    <div class="buttons">
      <div class="left"><a href="<?php echo $back; ?>" class="button">Geri</a></div>
      <div class="right">
        <input type="submit" value="Devam Et" class="button" />
      </div>
    </div>
  </form>
</div>
<?php echo $footer; ?>