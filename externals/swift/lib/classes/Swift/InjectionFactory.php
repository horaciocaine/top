<?php

/*
 DI wrapper class Swift Mailer.

 This program is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation, either version 3 of the License, or
 (at your option) any later version.

 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.

 You should have received a copy of the GNU General Public License
 along with this program.  If not, see <http://www.gnu.org/licenses/>.

 */

//@require 'Swift/DependencyContainer.php';

/**
 * Injects dependencies into the parent constructor of an object.
 * 
 * @package Swift
 * @author Chris Corbyn
 */
class Swift_InjectionFactory
{

  /**
   * Inject the dependencies for the parent of $object.
   * 
   * @param object $object
   * @param string $component
   */
  public static function injectFor($object, $component)
  {
    $reflector = new ReflectionObject($object);
    $parent = $reflector->getParentClass();
    $parentConstructor = $parent->getConstructor();
    $parentConstructor->invokeArgs(
      $object, Swift_DependencyContainer::getInstance()
        ->createDependenciesFor($component)
      );
  }

}
