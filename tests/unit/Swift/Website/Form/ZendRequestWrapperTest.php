<?php

class Swift_Website_Form_ZendRequestWrapperTest
  extends Swift_Website_UnitTestCase
{
  
  public function testWrapperReturnsMethodFromZendRequest()
  {
    $request = $this->_createMockRequest('post', array());
    $wrapper = $this->_createWrapper($request);
    $this->assertEqual('post', $wrapper->getRequestMethod());
  }
  
  public function testWrapperReturnsParamsFromZendRequest()
  {
    $request = $this->_createMockRequest('post', array('foo'=>'bar'));
    $wrapper = $this->_createWrapper($request);
    $this->assertEqual(array('foo'=>'bar'), $wrapper->getParams());
  }
  
  // -- Creation Methods
  
  private function _createWrapper($request)
  {
    return new Swift_Website_Form_ZendRequestWrapper($request);
  }
  
  private function _createMockRequest($method, $params)
  {
    $request = $this->_mock('Zend_Controller_Request_Http');
    $this->_checking(Expectations::create()
      -> allowing($request)->getMethod() -> returns($method)
      -> allowing($request)->getParams() -> returns($params)
    );
    return $request;
  }
  
}
