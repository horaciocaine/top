<?php

class Swift_Website_View_FormViewHelperTest
  extends Swift_Website_UnitTestCase
{
  
  public function testAttributesForTextInputElementsAreNameAndValue()
  {
    $helper = $this->_createHelper(array('foo'=>'test', 'bar'=>null));
    $this->assertEqual(
      'name="foo" value="test"',
      $helper->formAttributes('input.text', 'foo')
    );
  }
  
  public function testAttributesForTextInputElementsAreEscaped()
  {
    $helper = $this->_createHelper(array('foo'=>'test"<', 'bar'=>null));
    $this->assertEqual(
      'name="foo" value="test&quot;&lt;"',
      $helper->formAttributes('input.text', 'foo')
    );
  }
  
  public function testAttributesForCheckboxElementsAreNameAndValue()
  {
    $helper = $this->_createHelper(array('foo'=>'test', 'bar'=>null));
    $this->assertEqual(
      'name="foo" value="zip"',
      $helper->formAttributes('input.checkbox', 'foo', 'zip')
    );
  }
  
  public function testAttributesForCheckboxElementsIncludeCheckedIfValueInRequest()
  {
    $helper = $this->_createHelper(array('foo'=>'test', 'bar'=>null));
    $this->assertEqual(
      'name="foo" value="test" checked="checked"',
      $helper->formAttributes('input.checkbox', 'foo', 'test')
    );
  }
  
  public function testAttributesForRadioElementsAreNameAndValue()
  {
    $helper = $this->_createHelper(array('foo'=>'test', 'bar'=>null));
    $this->assertEqual(
      'name="foo" value="zip"',
      $helper->formAttributes('input.radio', 'foo', 'zip')
    );
  }
  
  public function testAttributesForRadioElementsIncludeCheckedIfValueInRequest()
  {
    $helper = $this->_createHelper(array('foo'=>'test', 'bar'=>null));
    $this->assertEqual(
      'name="foo" value="test" checked="checked"',
      $helper->formAttributes('input.radio', 'foo', 'test')
    );
  }
  
  public function testCheckboxValueFromMultipleValuesArrayCanMatch()
  {
    $helper = $this->_createHelper(array('foo'=>array('test', 'zip'), 'bar'=>null));
    $this->assertEqual(
      'name="foo" value="test" checked="checked"',
      $helper->formAttributes('input.checkbox', 'foo', 'test')
    );
  }
  
  public function testRadioValueFromMultipleValuesArrayCanMatch()
  {
    $helper = $this->_createHelper(array('foo'=>array('test', 'zip'), 'bar'=>null));
    $this->assertEqual(
      'name="foo" value="test" checked="checked"',
      $helper->formAttributes('input.radio', 'foo', 'test')
    );
  }
  
  public function testSelectOptionAttributesIncludeValueOnly()
  {
    $helper = $this->_createHelper(array('foo'=>'zip', 'bar'=>null));
    $this->assertEqual(
      'value="test"',
      $helper->formAttributes('option', 'foo', 'test')
    );
  }
  
  public function testSelectOptionAttributesIncludeSelectedIfInRequest()
  {
    $helper = $this->_createHelper(array('foo'=>'zip', 'bar'=>null));
    $this->assertEqual(
      'value="zip" selected="selected"',
      $helper->formAttributes('option', 'foo', 'zip')
    );
  }
  
  public function testOptionValueFromMutliValuedArrayCanMatch()
  {
    $helper = $this->_createHelper(array('foo'=>array('zip', 'test'), 'bar'=>null));
    $this->assertEqual(
      'value="zip" selected="selected"',
      $helper->formAttributes('option', 'foo', 'zip')
    );
  }
  
  // -- Creation methods
  
  private function _createHelper($params, $encoding = 'utf-8')
  {
    return new Swift_Website_View_FormViewHelper($params, $encoding);
  }
  
}
