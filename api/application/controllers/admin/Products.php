<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Products extends CI_Controller {

	public function __construct()
	{
		parent::__construct();

		$post = file_get_contents( 'php://input' );
		$_POST = json_decode( $post , true );

		$this->load->model( 'admin/Products_model' );

		$token = $this->input->post( 'token' );
		$token = $this->jwt->decode( $token , config_item( 'encryption_key' ) );	

		if ( $token->role != 'admin' )
			exit( 'Nie jesteś adminem' );

	}

	public function get( $id = false )
	{
		$output = $this->Products_model->get( $id );
		echo json_encode( $output );
	}

	public function update()
	{
		$product = $this->input->post( 'product' );
		$this->Products_model->update( $product );
	}

	public function create()
	{
		$product = $this->input->post( 'product' );
		$this->Products_model->create( $product );
	}

	public function delete()
	{

		$product = $this->input->post( 'product' );

		$this->deleteDir( $product['id'] );

		$this->Products_model->delete( $product );
	}

	public function deleteDir( $id )
	{

		$dirPath = FCPATH . '../uploads/' . $id . '/';

	    if (substr($dirPath, strlen($dirPath) - 1, 1) != '/') {
	        $dirPath .= '/';
	    }
	    $files = glob($dirPath . '*', GLOB_MARK);
	    foreach ($files as $file) {
	        if (is_dir($file)) {
	            self::deleteDir($file);
	        } else {
	            unlink($file);
	        }
	    }
	    rmdir($dirPath);
	}

}

/* End of file Products.php */
/* Location: ./application/controllers/Products.php */