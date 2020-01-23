import Control.Concurrent.STM

ping :: WriteOnly w => w String -> String -> IO ()
ping pings msg = write' pings msg

pong :: (ReadOnly r, WriteOnly w) => r String -> w String -> IO ()
pong pings pongs = do
    msg <- read' pings
    write' pongs msg

main = do
    pings <- atomically newTQueue
    pongs <- atomically newTQueue
    ping pings "passed message"
    pong pings pongs
    putStrLn =<< read' pongs

class ReadOnly f where
    read' :: f a -> IO a
instance ReadOnly TQueue where
    read' = atomically . readTQueue

class WriteOnly f where
    write' :: f a -> a ->  IO ()
instance WriteOnly TQueue where
    write' = (atomically.) . writeTQueue

main = do
    ref <- newIORef 0
    let nextInt = intSeq ref

    print =<< nextInt
    print =<< nextInt
    print =<< nextInt

    ref' <- newIORef 0
    let newInts = intSeq ref'
    print =<< newInts
