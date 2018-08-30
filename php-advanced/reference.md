# Reference and examples for advanced PHP

## Project structure

### Directory structure
- [example](https://github.com/phpList/core)
- [reference](https://github.com/php-pds/skeleton)

### Composer
- [Packagist](https://packagist.org/)
- [example](https://github.com/phpList/base-distribution/blob/master/composer.json)
- [reference](https://getcomposer.org/doc/04-schema.md)

### PHP namespaces
- [example](https://github.com/phpList/core/blob/master/src/Domain/Model/Messaging/SubscriberList.php)
- [reference](http://php.net/manual/en/language.namespaces.php)

### PSR-4 autoloading
- [example](https://github.com/phpList/core/blob/master/composer.json)
- [reference](https://www.php-fig.org/psr/psr-4/)

## Symfony console
- [reference and example for the console component](https://symfony.com/doc/current/components/console.html)
- [reference and example for building a console command](https://symfony.com/doc/current/components/console/single_command_tool.html)

## Strict typing
- [example for type declarations](https://github.com/phpList/core/blob/master/src/Domain/Repository/Identity/AdministratorTokenRepository.php)
- [example for nullable types and void functions](https://git.typo3.org/Packages/TYPO3.CMS.git/blob/HEAD:/typo3/sysext/core/Tests/Unit/TypoScript/Parser/TypoScriptParserTest.php)
- [example for strict mode](https://github.com/phpList/core/blob/master/src/Domain/Model/Messaging/SubscriberList.php)
- [reference for type declarations](http://php.net/manual/en/functions.arguments.php#functions.arguments.type-declaration)
- [reference for return type declarations](http://php.net/manual/en/functions.returning-values.php#functions.returning-values.type-declaration)
- [reference for nullable types and void functions](http://php.net/manual/en/migration71.new-features.php)
- [reference for strict mode](http://php.net/manual/de/migration70.new-features.php)
- [reference for comparison operators](http://php.net/manual/en/language.operators.comparison.php)

## OOP
- [example for method visibility](https://github.com/phpList/core/blob/master/src/Core/Bootstrap.php)
- [example for abstract classes](https://github.com/phpList/core/blob/master/src/Domain/Repository/AbstractRepository.php)
- [example for interfaces](https://github.com/phpList/core/blob/master/src/Domain/Model/Interfaces/CreationDate.php)
- [example for traits](https://github.com/phpList/core/blob/master/src/Domain/Model/Traits/CreationDateTrait.php)
- [reference for method visibility](http://php.net/manual/en/language.oop5.visibility.php)
- [reference for abstract classes](http://php.net/manual/en/language.oop5.abstract.php)
- [reference for interfaces](http://php.net/manual/en/language.oop5.interfaces.php)
- [reference for traits](http://php.net/manual/en/language.oop5.traits.php)

## Build-in classes

### ZipArchive
- [example for reading and writing](https://github.com/oliverklee/ext-csv_to_openimmo/blob/master/Classes/Service/Zipper.php)
- [reference](http://php.net/ziparchive)

### DOMDocument
- [example for writing, part 1](https://github.com/oliverklee/ext-csv_to_openimmo/blob/master/Classes/Service/OpenImmoBuilder.php)
- [example for writing, part 2](https://github.com/oliverklee/ext-csv_to_openimmo/blob/master/Classes/Service/RealtyObjectBuilder.php)
- [reference](http://php.net/DOMDocument)

### DateTime
- [example](https://github.com/phpList/core/blob/master/src/Domain/Model/Identity/AdministratorToken.php)
- [reference](http://php.net/datetime)

### (Copy'n'paste template)
- [example]()
- [reference]()
