package dev.killercavin.kotlinspringauthdemo.controller

import dev.killercavin.kotlinspringauthdemo.service.UserService
import org.springframework.web.bind.annotation.RestController

@RestController
class UserController(private val userService: UserService) {
}
