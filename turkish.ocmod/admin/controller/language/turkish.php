<?php
namespace Opencart\Admin\Controller\Extension\Turkish\Language;
class Turkish extends \Opencart\System\Engine\Controller {
	private $extVersion = '1.0.0';
	private $compatibility = '4.0.2.1';

	public function index(): void {
		$this->load->language('extension/turkish/language/turkish');

		$this->document->setTitle($this->language->get('heading_title'));

		$data['breadcrumbs'] = [];

		$data['breadcrumbs'][] = [
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'user_token=' . $this->session->data['user_token'])
		];

		$data['breadcrumbs'][] = [
			'text' => $this->language->get('text_extension'),
			'href' => $this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'] . '&type=language')
		];

		$data['breadcrumbs'][] = [
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('extension/turkish/language/turkish', 'user_token=' . $this->session->data['user_token'])
		];

		$data['save'] = $this->url->link('extension/turkish/language/turkish.save', 'user_token=' . $this->session->data['user_token']);
		$data['back'] = $this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'] . '&type=language');

		$data['language_turkish_status'] = $this->config->get('language_turkish_status');

		// About Tab Begin
		if ($this->config->get('language_turkish_version')) {
			$data['extension_version'] = $this->config->get('language_turkish_version');
		} else {
			$data['extension_version'] = $this->extVersion;
		}

		$data['extension_compat'] = sprintf($this->language->get('entry_extension_compat'), $this->compatibility);
		$data['extension_contact'] = $this->language->get('entry_extension_contact');
		$data['extension_copyright'] = $this->language->get('entry_extension_copyright');
		// About Tab End

		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('extension/turkish/language/turkish', $data));
	}

	public function save(): void {
		$this->load->language('extension/turkish/language/turkish');

		$json = [];

		if (!$this->user->hasPermission('modify', 'extension/turkish/language/turkish')) {
			$json['error'] = $this->language->get('error_permission');
		}

		if (!$json) {
			$this->load->model('setting/setting');

			$this->model_setting_setting->editSetting('language_turkish', $this->request->post);

			$json['success'] = $this->language->get('text_success');
		}

		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}

	public function install(): void {
		$this->load->language('extension/turkish/language/turkish');

		$json = [];

		if (!$this->user->hasPermission('modify', 'extension/language')) {
			$json['error'] = $this->language->get('error_permission');
		}

		if (!$json) {
			$this->load->model('localisation/language');

			if (!$this->model_localisation_language->getLanguageByCode('tr')) {
				$language_data = [
					'name'       => 'Turkish',
					'code'       => 'tr',
					'locale'     => 'tr-tr,tr_TR.UTF-8,tr_TR,tr-TR,tr,turkish',
					'extension'  => 'turkish',
					'status'     => 1,
					'sort_order' => 2
				];

				$this->model_localisation_language->addLanguage($language_data);
			}

			$json['success'] = $this->language->get('text_success');
		}

		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}

	public function uninstall(): void {
		$this->load->language('extension/turkish/language/turkish');

		$json = [];

		if (!$this->user->hasPermission('modify', 'extension/language')) {
			$json['error'] = $this->language->get('error_permission');
		}

		if (!$json) {
			$this->load->model('localisation/language');

			if ($language_info = $this->model_localisation_language->getLanguageByCode('tr')) {
				$this->model_localisation_language->deleteLanguage($language_info['language_id']);
			}

			$json['success'] = $this->language->get('text_success');
		}

		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}
}
