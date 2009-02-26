<?php

class Swift_Website_Validation_Rules_EnumRuleTest
  extends Swift_Website_UnitTestCase
{
  
  public function testDataIsValidIfFieldNameIsInvalues()
  {
    $rule = $this->_createRule('foo', array('zip', 'zap'), 'Foo');
    $this->assertTrue(
      $rule->isValid(array('foo'=>'zap')),
      '%s: Foo is in the set so data should be valid'
    );
  }
  
  public function testDataIsValidIfFieldIsEmptyString()
  {
    $rule = $this->_createRule('foo', array('zip', 'zap'), 'Foo');
    $this->assertTrue(
      $rule->isValid(array('foo'=>'')),
      '%s: Foo is not set so data should be valid'
    );
  }
  
  public function testDataIsValidIfFieldIsNotPresent()
  {
    $rule = $this->_createRule('foo', array('zip', 'zap'), 'Foo');
    $this->assertTrue(
      $rule->isValid(array()),
      '%s: Foo is not set so data should be valid'
    );
  }
  
  public function testDataIsNotValidIfValueNotInSet()
  {
    $rule = $this->_createRule('foo', array('zip', 'zap'), 'Foo');
    $this->assertFalse(
      $rule->isValid(array('foo'=>'zot')),
      '%s: Foo is not in set so data should not be valid'
    );
  }
  
  // -- Creation Methods
  
  private function _createRule($field, $values, $name = null, $error = '%s')
  {
    return new Swift_Website_Validation_Rules_EnumRule($field, $values, $name, $error);
  }
  
}
