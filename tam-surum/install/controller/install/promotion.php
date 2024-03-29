<?php
namespace Opencart\Install\Controller\Install;
/**
 * Class Promotion
 *
 * @package Opencart\Install\Controller\Install
 */
class Promotion extends \Opencart\System\Engine\Controller {
	/**
	 * @return string
	 */
	public function index(): string {
		$html = '<script async src="https://adsenix.com/api/adsload.js"></script>';
		$html .= '<div class="adsenix-preloader"></div>';
		$html .= '<div class="adsenix-wrapper" data-adsenix-publisher="1" data-adsenix-group="3" data-adsenix-format="1"></div>';

		return $html;
	}
}