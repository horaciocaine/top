<?php

class Swift_Website_Validation_Rules_MatchedFieldsRuleTest
  extends Swift_Website_UnitTestCase
{
  
  public function testDataIsValidIfAllFieldsMatch()
  {
    $rule = $this->_createRule(array('foo', 'bar'), 'Foo and Bar');
    $this->assertTrue(
      $rule->isValid(array('foo'=>'x', 'bar'=>'x')),
      '%s: Foo and Bar match so data should be valid'
    );
  }
  
  public function testDataIsNotValidIfFieldsDontMatch()
  {
    $rule = $this->_createRule(array('foo', 'bar'), 'Foo and Bar');
    $this->assertFalse(
      $rule->isValid(array('foo'=>'x', 'bar'=>'y')),
      '%s: Foo and Bar don\'t match so data should not be valid'
    );
  }
  
  public function testDataIsNotValidIfSomeFieldsNotSet()
  {
    $rule = $this->_createRule(array('foo', 'bar'), 'Foo and Bar');
    $this->assertFalse(
      $rule->isValid(array('foo'=>'x')),
      '%s: Bar is not set so data should not be valid'
    );
  }
  
  public function testDataIsValidIfAllsFieldsNotPresent()
  {
    $rule = $this->_createRule(array('foo', 'bar'), 'Foo and Bar');
    $this->assertTrue(
      $rule->isValid(array()),
      '%s: Foo and Bar both not set so data should be valid'
    );
  }
  
  // -- Creation Methods
  
  private function _createRule($fields, $name = null, $error = '%s')
  {
    return new Swift_Website_Validation_Rules_MatchedFieldsRule($fields, $name, $error);
  }
  
}
