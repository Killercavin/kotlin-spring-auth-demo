package dev.killercavin.kotlinspringauthdemo

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class KotlinSpringAuthDemoApplication

fun main(args: Array<String>) {
    runApplication<KotlinSpringAuthDemoApplication>(*args)
}
