mod TestFileReader {

    def testReadFunction(path: String, encoding: Encoding, reader: File -> Result[IOError, a] \ rEf, test: a -> Bool \ tEf): Result[IOError, Bool] \ {rEf, tEf, IO} =
        match FileReader.fromPath(path, ReadOnly) {
            case Ok(f)    => match reader(f) {
                case Ok(a)    => Functor.replace(File.close!(f), test(a))
                case Err(err) => Err(err)
            }
            case Err(err) => Err(err)
    }
}
