<?php

class Swift_Website_Validation_Rules_RequiredRuleTest
  extends Swift_Website_UnitTestCase
{
  
  public function testDataIsValidIfFieldNamePassed()
  {
    $rule = $this->_createRule('foo', 'Foo');
    $this->assertTrue(
      $rule->isValid(array('foo'=>'bar')),
      '%s: Foo is set so data should be valid'
    );
  }
  
  public function testDataIsNotValidIfFieldIsEmptyString()
  {
    $rule = $this->_createRule('foo', 'Foo');
    $this->assertFalse(
      $rule->isValid(array('foo'=>'')),
      '%s: Foo is not set so data should not be valid'
    );
  }
  
  public function testDataIsNotValidIfFieldIsNotPresent()
  {
    $rule = $this->_createRule('foo', 'Foo');
    $this->assertFalse(
      $rule->isValid(array()),
      '%s: Foo is not set so data should not be valid'
    );
  }
  
  public function testDataIsValidIfZeroValueIsUsed()
  {
    $rule = $this->_createRule('foo', 'Foo');
    $this->assertTrue(
      $rule->isValid(array('foo'=>'0')),
      '%s: Foo is set so data should be valid'
    );
  }
  
  // -- Creation Methods
  
  private function _createRule($field, $name = null, $error = '%s')
  {
    return new Swift_Website_Validation_Rules_RequiredRule($field, $name, $error);
  }
  
}
