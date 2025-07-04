// Copyright 2025 International Digital Economy Academy
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

//
// An efficient implementation of Map.
// Based on size balanced binary trees, described by:
// Stephen Adams, "Efficient sets: a balancing act" Journal of Functional Programming 3(4):553-562, October 1993
//

///|
/// Immutable map, consists of key-value pairs.
///
/// # Example
///
/// ```mbt
/// test {
///   let map1 = @sorted_map.of([(3, "three"), (8, "eight"), (1, "one")])
///   let map2 = map1.add(2, "two").remove(3)
///   assert_eq(map2.get(2), Some("two"))
///   let map3 = map2.add(2, "updated")
///   assert_eq(map2.get(3), None)
///   assert_eq(map3.get(3), None)
///   assert_eq(map3.get(2), Some("updated"))
/// }
/// ```
enum T[K, V] {
  Empty
  Tree(K, value~ : V, size~ : Int, T[K, V], T[K, V])
}
