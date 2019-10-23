//
//  main.swift
//  FindOpenedDoor
//
//  Created by Yoda Codd on 23/10/2019.
//  Copyright © 2019 Drake. All rights reserved.
//

import Foundation

var doors : [Bool] = []

// 문 초기화
func makeDoors(){
    // 50개의 문추가. 디폴트는 닫힘
    for _ in 1...50 {
        doors.append(false)
    }
}

// 유저인풋 받기
func getUserInput(message: String) -> String? {
    print(message)
    return readLine()
}

// 잘못된 입력메세지 출력
func printWrongInput(){
    print("입력이 잘못되었습니다")
}

// 입력값이 숫자인지 체크
func checkInput(userInput: String?) -> Int?{
    // 숫자인지 체크
    
    
    guard let notNilInput = userInput else {
        // nil
        printWrongInput()
        return nil
    }
    
        guard let userInputNumber = Int(notNilInput) else {
            // 숫자가 아님
            printWrongInput()
            return nil
        }
    
    // 입력값이 정상
     return userInputNumber
}


// 열린 문 계산
func openDoors(number: Int){
    // 가장 큰 배수 체크
    let maxMultiple = 50 / number
    
    for count in 0...maxMultiple-1 {
        var door = doors[count]
        if door == true {
            doors[count] = false
        }
        else {
            doors[count] = true
        }
    }
}

// 인원수를 받아서 해당 수만큼 동작 반복
func openDoorsBy(humanNumber: Int){
    for count in 1...humanNumber {
        openDoors(number: count)
    }
}

// 결과 출력
func printResult(){
    var openedDoor = 0
    for door in doors {
        if door == true {
            openedDoor += 1
        }
    }
    print("열린문은 \(openedDoor)개 입니다.")
}

func main(){
    // get user input
    let input = getUserInput(message: "인원수 입력")
    
    // input check
    guard let inputNumber = checkInput(userInput: input) else {
        // 체크실패시 종료
        return ()
    }
    
    // 문 초기화
    makeDoors()
    
    // 문열기 동작 수행
    openDoorsBy(humanNumber: inputNumber)
    
    // 결과 출력
    printResult()
}



main()

