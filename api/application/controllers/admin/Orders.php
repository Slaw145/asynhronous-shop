<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Orders extends CI_Controller {

	public function __construct()
	{
		parent::__construct();

		$post = file_get_contents( 'php://input' );
		$_POST = json_decode( $post , true );

		$this->load->model( 'admin/Orders_model' );

		$token = $this->input->post( 'token' );
		$token = $this->jwt->decode( $token , config_item( 'encryption_key' ) );	

		if ( $token->role != 'admin' )
			exit( 'Nie jesteś adminem' );
	}

	public function get()
	{
		$output = $this->Orders_model->get();
		echo json_encode( $output );
	}

	public function update()
	{
		$id = $this->input->post( 'id' );
		$data['status'] = $this->input->post( 'status' );

		$this->Orders_model->update( $id , $data );
	}

	public function delete()
	{
		$id = $this->input->post( 'id' );
		$this->Orders_model->delete( $id );
	}

}

/* End of file Orders.php */
/* Location: ./application/controllers/Orders.php */