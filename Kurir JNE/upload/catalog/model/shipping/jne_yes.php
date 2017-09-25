<?php 
//-----------------------------------------
// Author: 	crist_erick@live.com
// Web: 	on Progress ^_^
// Title: 	AUTOSELECT_CITY + JNE "OFFLINE"
//-----------------------------------------
class ModelShippingJNEYes extends Model {    
  	public function getQuote($address) {
		$this->load->language('shipping/jne_yes');
		
		$quote_data = array();

		$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "geo_zone ORDER BY name");
	
		foreach ($query->rows as $result) {
			if ($this->config->get('jne_yes_' . $result['geo_zone_id'] . '_status')) {
				$query = $this->db->query("SELECT * FROM " . DB_PREFIX . "zone_to_geo_zone WHERE geo_zone_id = '" . (int)$result['geo_zone_id'] . "' AND country_id = '" . (int)$address['country_id'] . "' AND (zone_id = '" . (int)$address['zone_id'] . "' OR zone_id = '0')");
			
				if ($query->num_rows) {
					$status = true;
				} else {
					$status = false;
				}
			} else {
				$status = false;
			}
		
			if ($status) {
				$cost = '';
				$weight = $this->cart->getWeight();
				
				//$rates = explode(',', $this->config->get('jne_yes_' . $result['geo_zone_id'] . '_rate'));
				$rates = preg_split('/\r\n/', $this->config->get('jne_yes_' . $result['geo_zone_id'] . '_rate'));
				
				foreach ($rates as $rate) {
					$items = explode(',', $rate);
				
					$pos = strpos(strtolower($items[0]), strtolower($address['city'])); // Cek apakah nama kota tersedia
					if ($pos !== false) { // Bila ya maka dilakukan penghitungan
						// Menghitung biaya pengiriman
						$berat_dengan_dua_desimal = number_format($weight, 2, '.', ','); // Mengubah berat menjadi hanya memiliki 2 nilai desimal
						$berat_tanpa_desimal = substr($berat_dengan_dua_desimal, 0, -2); // Menghilangkan nilai desimal
						$angka_kontrol = $weight - $berat_tanpa_desimal; // mencari nilai desimal sebagai angka kontrol
						if ($weight <= 1.0){ // Jika berat barang <= 1.0 kilogram
							$cost = $items[1];
						} elseif ($angka_kontrol <= 0.2){ // bila berat memiliki nilai desimal 0
							$cost = $items[1] + (($berat_tanpa_desimal - 1.0) * $items[1]);
						} else { // bila berat memiliki nilai desimal tidak sama dengan 0
							$cost = $items[1] + (($berat_tanpa_desimal) * $items[1]);
						}
						break;
					}
				}
				
				if ((string)$cost != '') { 
					$quote_data['jne_yes_' . $result['geo_zone_id']] = array(
						'code'         => 'jne_yes.jne_yes_' . $result['geo_zone_id'],
						'title'        => $this->language->get('text_title') . ' - ' . $result['name'] . '  (' . $this->language->get('text_weight') . ' ' . $this->weight->format($weight, $this->config->get('config_weight_class')) . ')',
						'cost'         => $cost,
						'tax_class_id' => $this->config->get('jne_yes_tax_class_id'),
						'text'         => $this->currency->format($this->tax->calculate($cost, $this->config->get('jne_yes_tax_class_id'), $this->config->get('config_tax')))
					);	
				}
			}
		}
		
		$method_data = array();
	
		if ($quote_data) {
      		$method_data = array(
        		'code'       => 'jne_yes',
        		'title'      => $this->language->get('text_title'),
        		'quote'      => $quote_data,
				'sort_order' => $this->config->get('jne_yes_sort_order'),
        		'error'      => false
      		);
		}
	
		return $method_data;
  	}
}
?>