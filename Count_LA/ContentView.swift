//
//  ContentView.swift
//  Count_LA
//
//  Created by シング　シュバクシ on 2026/01/29.
//

import SwiftUI

struct ContentView: View {
    
    @State var count = 0
    @State var result = ""
    @State var balloon = "🎈"
    
    var body: some View {
        ZStack{
            Color(red: 0.98, green: 0.97, blue: 1.0)
                .ignoresSafeArea()
            VStack {
                Text ("\(balloon)")
                    .frame(width: 300, height: 100)
                    .font(.system(size: count <= 1 ? 120 : count <= 3 ? 140 : count <= 5 ? 160 : count <= 7 ? 180 : count <= 9 ? 190 : 200))
                //            Text("\(result)")
                //                .frame(width: 300, height: 100)
                //                .font(.system(size: 32))
                Text("\(count)")
                    .frame(width: 300, height: 100)
                    .font(.system(size: 48))
                    .foregroundStyle(count > 0 ? .red : (count == 0 ? .black : .blue))
                HStack{
                    Button{
                        count = min(10, count + 1)
                        if count >= 10{
                            balloon = "💥"
                        }else {
                            balloon = "🎈"
                        }
                        //                        else if count <= -5 {
                        //                        balloon = "マイナスの優勢！"
                        //                    } else if count <= -10 {
                        //                        balloon = "マイナスの勝ち！"
                        //                    } else {
                        //                        balloon = ""
                        //                    }
                    } label: {
                        Text("+")
                            .font(.system(size: 48))
                            .foregroundStyle(.white) //文字の色を決めている
                            .frame(width: 100, height: 100) //ボタンのサイズを決めている
                            .background(.red)
                    }
                    Button{
                        count = max(0, count - 1)
                        if count >= 10{
                            balloon = "💥"
                        }else {
                            balloon = "🎈"
                        }
                        //                    if count >= 10{
                        //                        result = "プラスの勝ち！"
                        //                    } else if count >= 5 {
                        //                        result = "プラスの優勢！"
                        //                    } else if count <= -10 {
                        //                        result = "マイナスの勝ち！"
                        //                    } else if count <= -5 {
                        //                        result = "マイナスの優勢！"
                        //                    } else {
                        //                        result = ""
                        //                    }
                    } label: {
                        Text("-")
                            .font(.system(size: 48))
                            .foregroundStyle(.white)
                            .frame(width: 100, height: 100)
                            .background(.blue)
                    }
                }
                .padding()
                Button{
                    count = 0
                } label: {
                    Text("Reset")
                        .font(.system(size: 32))
                        .foregroundStyle(.white)
                        .frame(width: 150, height: 60)
                        .background(.yellow)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
