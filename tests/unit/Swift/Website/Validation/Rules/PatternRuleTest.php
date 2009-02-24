<?php

class Swift_Website_Validation_Rules_PatternRuleTest
  extends Swift_Website_UnitTestCase
{
  
  public function testDataIsValidIfFieldMatchesPattern()
  {
    $rule = $this->_createRule('foo', '/[0-9]+/');
    $this->assertTrue(
      $rule->isValid(array('foo'=>'123')),
      '%s: Foo matches pattern so data should be valid'
    );
  }
  
  public function testDataIsNotValidIfFieldDoesNotMatchPattern()
  {
    $rule = $this->_createRule('foo', '/[0-9]+/');
    $this->assertFalse(
      $rule->isValid(array('foo'=>'abc')),
      '%s: Foo does not match pattern so data should not be valid'
    );
  }
  
  public function testDataIsValidIfFieldIsJustEmptyString()
  {
    $rule = $this->_createRule('foo', '/pattern/');
    $this->assertTrue(
      $rule->isValid(array('foo'=>'')),
      '%s: Foo is not set so data should be valid'
    );
  }
  
  public function testDataIsValidIfFieldIsNotPresent()
  {
    $rule = $this->_createRule('foo', '/pattern/');
    $this->assertTrue(
      $rule->isValid(array()),
      '%s: Foo is not set so data should be valid'
    );
  }
  
  // -- Creation Methods
  
  private function _createRule($field, $pattern, $name = null, $error = '%s')
  {
    return new Swift_Website_Validation_Rules_PatternRule(
      $field, $pattern, $name, $error
    );
  }
  
}
