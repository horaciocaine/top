<?php

class Swift_Website_SimpleValidatorTest extends Swift_Website_UnitTestCase
{
  
  public function testAllRulesAreUsedDuringValidation()
  {
    $ruleA = $this->_createMockRule();
    $ruleB = $this->_createMockRule();
    
    $params = array('foo'=>'bar');
    
    $this->_checking(Expectations::create()
      -> one($ruleA)->isValid($params) -> returns(true)
      -> one($ruleB)->isValid($params) -> returns(true)
      );
    
    $validator = $this->_createValidator();
    
    $validator->addRule($ruleA);
    $validator->addRule($ruleB);
    
    $validator->isValid($params);
  }
  
  public function testIsValidReturnsTrueIfAllRulesAreValid()
  {
    $ruleA = $this->_createMockRule();
    $ruleB = $this->_createMockRule();
    
    $params = array('foo'=>'bar');
    
    $this->_checking(Expectations::create()
      -> ignoring($ruleA)->isValid($params) -> returns(true)
      -> ignoring($ruleB)->isValid($params) -> returns(true)
      );
    
    $validator = $this->_createValidator();
    
    $validator->addRule($ruleA);
    $validator->addRule($ruleB);
    
    $this->assertTrue(
      $validator->isValid($params),
      '%s: All rules returned true so data should be valid'
    );
  }
  
  public function testErrorListIsEmptyIfAllRulesAreValid()
  {
    $ruleA = $this->_createMockRule();
    $ruleB = $this->_createMockRule();
    
    $params = array('foo'=>'bar');
    
    $this->_checking(Expectations::create()
      -> ignoring($ruleA)->isValid($params) -> returns(true)
      -> ignoring($ruleB)->isValid($params) -> returns(true)
      );
    
    $validator = $this->_createValidator();
    
    $validator->addRule($ruleA);
    $validator->addRule($ruleB);
    
    $validator->isValid($params);
    
    $this->assertEqual(array(), $validator->getValidationErrors(),
      '%s: All rules returned true so there should be no errors'
    );
  }
  
  public function testValidatorReturnsFalseIfAnyRulesReturnFalse()
  {
    $ruleA = $this->_createMockRule();
    $ruleB = $this->_createMockRule();
    
    $params = array('foo'=>'bar');
    
    $this->_checking(Expectations::create()
      -> ignoring($ruleA)->isValid($params) -> returns(true)
      -> ignoring($ruleB)->isValid($params) -> returns(false)
      -> allowing($ruleB)->getError()
      );
    
    $validator = $this->_createValidator();
    
    $validator->addRule($ruleA);
    $validator->addRule($ruleB);
    
    $this->assertFalse(
      $validator->isValid($params),
      '%s: A rule returned false so data should not be valid'
    );
  }
  
  public function testErrorListIsGatheredForRulesThatReturnFalse()
  {
    $ruleA = $this->_createMockRule();
    $ruleB = $this->_createMockRule();
    $ruleC = $this->_createMockRule();
    
    $params = array('foo'=>'bar');
    
    $this->_checking(Expectations::create()
      -> ignoring($ruleA)->isValid($params) -> returns(false)
      -> ignoring($ruleB)->isValid($params) -> returns(true)
      -> ignoring($ruleC)->isValid($params) -> returns(false)
      -> one($ruleA)->getError() -> returns('Error A')
      -> one($ruleC)->getError() -> returns('Error C')
      );
    
    $validator = $this->_createValidator();
    
    $validator->addRule($ruleA);
    $validator->addRule($ruleB);
    $validator->addRule($ruleC);
    
    $validator->isValid($params);
    
    $this->assertEqual(
      array('Error A', 'Error C'),
      $validator->getValidationErrors(),
      '%s: Error list should match errors return from rules'
    );
  }
  
  // -- Creation Methods
  
  private function _createValidator()
  {
    return new Swift_Website_SimpleValidator();
  }
  
  private function _createMockRule()
  {
    return $this->_mock('Swift_Website_Validation_Rule');
  }
  
}
