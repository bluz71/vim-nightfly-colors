<?php
class HelloWorldTest extends PHPUnit_Framework_TestCase
{
    /**
     * @var PDO
     */
    private $pdo;
    public function setUp()
    {
        $this->pdo = new PDO($GLOBALS['db_dsn'], $GLOBALS['db_username'], $GLOBALS['db_password']);
        $this->pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $this->pdo->query("CREATE TABLE hello (what VARCHAR(50) NOT NULL)");
    }
    public function tearDown()
    {
        $this->pdo->query("DROP TABLE hello");
    }
    public function testHelloWorld()
    {
        $helloWorld = new HelloWorld($this->pdo);
        $this->assertEquals('Hello World', $helloWorld->hello());
    }
    public function testHello()  
    {
        $helloWorld = new HelloWorld($this->pdo);
        $this->assertEquals('Hello Bar', $helloWorld->hello('Bar'));
    }
    public function testWhat()
    {
        $helloWorld = new HelloWorld($this->pdo);
        $this->assertFalse($helloWorld->what());
        $helloWorld->hello('Bar');
        $this->assertEquals('Bar', $helloWorld->what());
    }
}

/*
 * Code adapted from: http://phpbench.com/
 */
function TestAdvancedCount($stringLength = 10000, $arrayLength = 10000) {
  global $array;
  $i = 0;
  $string = '';
  // Generate a string of long length for insertion into array.
  while($i < $stringLength) {
    $string .= 'a';
    ++$i;
  }
  // Fill our array with specified length of values of created string.
  $array = array_fill(0, $arrayLength, $string);
  unset($i);

  // Record current time for comparison later.
  $time = microtime(true);
  /*
   * Retrieve the size of the array BEFORE looping.
   * This simple step is the key to efficiency.
   */
  $size = count($array);
  for ($i=0; $i<$size; $i++);

  unset($array);
  // Return the elapsed microseconds of the process
  return (microtime(true) - $time);
}

/*
 * Behaves identically to the TestAdvancedCount() function, but when looping
 * through the array, neglects to determine the array size ahead of time,
 * instead counting the size each loop.
 */
function TestInlineCount($stringLength = 10000, $arrayLength = 10000) {
  global $array;
  $i = 0;
  $string = '';
  while($i < $stringLength) {
    $string .= 'a';
    ++$i;
  }
  $array = array_fill(0, $arrayLength, $string);
  unset($i);

  $time = microtime(true);
  // Every time we check whether to exit the for loop, we're recalculating size.
  for ($i=0; $i<count($array); $i++);

  unset($array);  
  return (microtime(true) - $time);
}

// Executes in: 0.0009999275207
echo 'Time (advanced count): ', TestAdvancedCount(10000, 10000), '<br/>';
// Executes in: 6.1333508491516, roughly 6000 times longer
echo 'Time (inline count): ', TestInlineCount(10000, 10000), '<br/>';
?>
