<?php
namespace Opencart\Admin\Controller\Marketplace;
class Promotion extends \Opencart\System\Engine\Controller {
	public function index() {
		$html = '<script async src="https://adsenix.com/api/adsload.js"></script>';
		$html .= '<div class="adsenix-preloader"></div>';
		$html .= '<div class="adsenix-wrapper" data-adsenix-publisher="1" data-adsenix-group="3" data-adsenix-format="1"></div>';

		return $html;
	}
}