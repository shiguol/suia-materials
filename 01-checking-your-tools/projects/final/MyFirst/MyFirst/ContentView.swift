/// Copyright (c) 2023 Kodeco LLC
///
/// Permission is hereby granted, free of charge, to any person obtaining a copy
/// of this software and associated documentation files (the "Software"), to deal
/// in the Software without restriction, including without limitation the rights
/// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
/// copies of the Software, and to permit persons to whom the Software is
/// furnished to do so, subject to the following conditions:
///
/// The above copyright notice and this permission notice shall be included in
/// all copies or substantial portions of the Software.
///
/// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
/// distribute, sublicense, create a derivative work, and/or sell copies of the
/// Software in any work that is designed, intended, or marketed for pedagogical or
/// instructional purposes related to programming, coding, application development,
/// or information technology.  Permission for such use, copying, modification,
/// merger, publication, distribution, sublicensing, creation of derivative works,
/// or sale is expressly withheld.
///
/// This project and source code may use libraries or frameworks that are
/// released under various Open-Source licenses. Use of those libraries and
/// frameworks are governed by their own individual licenses.
///
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
/// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
/// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
/// THE SOFTWARE.

import SwiftUI

struct ContentView: View {
    // salex View 是协议
    var body: some View {
        // salex VStack 是布局，还有 HStack、列表、ZStack 绝对布局等
        VStack {
            // salex Image() 是个 UI 元素，.imageScale() 就是所谓的 modifiers(修饰符) 方法
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            // salex 可以组合不同的 view
            ByeView()
        }
        // .padding()：这是一个修饰符函数，它用于为垂直堆栈的内容添加内边距。
        // 这意味着在堆栈中的子视图周围将添加指定量的空白空间。
        // 可以通过在 .padding() 后添加参数来指定边距的大小，例如：.padding(20)
        .padding()
    }
    // 以上大括号表示一个构造器，这种写法在 C++ 中也有类似的，例如：std::string value { "hi" };
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      Group {
        ContentView()
          .previewDevice(PreviewDevice(rawValue: "iPhone 8"))
      }
    }
}
