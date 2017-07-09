package com.komanov.bazeltest

import boopickle.Default._

case class SimpleCaseClass(name: String)

object SimpleCaseClass {
  def toByteArray(s: SimpleCaseClass) = {
    Pickle.intoBytes(s)
  }
}