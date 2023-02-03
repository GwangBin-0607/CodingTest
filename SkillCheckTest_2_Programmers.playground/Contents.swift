
//문제 설명
//함수 solution은 정수 n을 매개변수로 입력받습니다. n의 각 자릿수를 큰것부터 작은 순으로 정렬한 새로운 정수를 리턴해주세요. 예를들어 n이 118372면 873211을 리턴하면 됩니다.
//
//제한 조건
//n은 1이상 8000000000 이하인 자연수입니다.
//입출력 예
//n    return
//118372    873211
func solution(_ n:Int64) -> Int64 {
    return caseOne(n:n)
}
func caseOne(n:Int64)->Int64{
    let convertString = String(n)
    var charArray:[Character] = []
    for char in convertString{
        charArray.append(char)
    }
    let resultArray = charArray.sorted(by:{$0>$1})
    var resultString = ""
    for char in resultArray{
        resultString += String(char)
    }
    let result = Int64(resultString)!
    return result
}
func caseTwo(n:Int64)->Int64{
    let result = String(n).map{Int64(String($0))!}.sorted(by:{$0>$1}).map{String($0)}.reduce(""){$0+$1}
    return Int64(result)!
}

