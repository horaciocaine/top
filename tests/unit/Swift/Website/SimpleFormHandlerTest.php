<?php

class Swift_Website_SimpleFormHandlerTest extends Swift_Website_UnitTestCase
{
  
  public function testGetValuesReturnsNullValuesForAllFields()
  {
    $request = $this->_createRequest('get', array());
    $form = $this->_createHandler($request, array('foo', 'bar'));
    
    $this->assertEqual(array('foo'=>null, 'bar'=>null), $form->getValues());
  }
  
  public function testDefaultValuesAreUsedForGetValuesIfPresent()
  {
    $request = $this->_createRequest('get', array());
    $form = $this->_createHandler(
      $request, array('foo', 'bar'), array('bar'=>'default value')
    );
    
    $this->assertEqual(
      array('foo'=>null, 'bar'=>'default value'), $form->getValues()
    );
  }
  
  public function testIsSubmittedReturnsTrueByDefaultOnPostRequest()
  {
    $request = $this->_createRequest('post', array());
    $form = $this->_createHandler($request, array('foo', 'bar'));
    
    $this->assertTrue($form->isSubmitted(),
      '%s: isSubmitted() should return true on POST request by default'
    );
  }
  
  public function testIsSubmittedCanRequireRequestField()
  {
    $request = $this->_createRequest('post', array());
    $form = $this->_createHandler(
      $request, array('foo', 'bar'), array(), array('submit_field'=>'submit')
    );
    
    $this->assertFalse($form->isSubmitted(),
      '%s: isSubmitted() should return false if required field not sent'
    );
  }
  
  public function testIsSubmittedReturnsTrueIfRequiredFieldPassed()
  {
    $request = $this->_createRequest('post', array('submit'=>'1'));
    $form = $this->_createHandler(
      $request, array('foo', 'bar'), array(), array('submit_field'=>'submit')
    );
    
    $this->assertTrue($form->isSubmitted(),
      '%s: isSubmitted() should return true if required field sent'
    );
  }
  
  public function testIsSubmittedCanRequireRequestMethod()
  {
    $request = $this->_createRequest('post', array());
    $form = $this->_createHandler(
      $request, array('foo', 'bar'), array(), array('method' => 'get')
    );
    
    $this->assertFalse($form->isSubmitted(),
      '%s: isSubmitted() should return false if wrong request method'
    );
  }
  
  public function testIsCancelledReturnsFalseByDefault()
  {
    $request = $this->_createRequest('post', array());
    $form = $this->_createHandler($request, array('foo', 'bar'));
    
    $this->assertFalse($form->isCancelled(),
      '%s: isCancelled() should return false by default'
    );
  }
  
  public function testIsCancelledReturnsTrueIfRequiredCancelFieldPassed()
  {
    $request = $this->_createRequest('post', array('cancel'=>'1'));
    $form = $this->_createHandler(
      $request, array('foo', 'bar'), array(), array('cancel_field' => 'cancel')
    );
    
    $this->assertTrue($form->isCancelled(),
      '%s: isCanclled() should return true if cancel field passed'
    );
  }
  
  public function testGetValuesUsesRequestDataValuesIfFormIsSubmitted()
  {
    $request = $this->_createRequest('post', array('foo'=>'test'));
    $form = $this->_createHandler($request, array('foo', 'bar'));
    
    $this->assertEqual(array('foo'=>'test', 'bar'=>null), $form->getValues());
  }
  
  // -- Creation Methods
  
  private function _createRequest($method, $params = array())
  {
    $request = $this->_mock('Swift_Website_Form_RequestWrapper');
    $this->_checking(Expectations::create()
      -> allowing($request)->getRequestMethod() -> returns($method)
      -> allowing($request)->getParams() -> returns($params)
    );
    return $request;
  }
  
  private function _createHandler($params, $fieldNames = array(),
    $defaultValues = array(), $options = array())
  {
    return new Swift_Website_SimpleFormHandler(
      $params, $fieldNames, $defaultValues, $options
    );
  }
  
}
