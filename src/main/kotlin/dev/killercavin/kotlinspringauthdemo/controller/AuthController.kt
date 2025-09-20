package dev.killercavin.kotlinspringauthdemo.controller

import dev.killercavin.kotlinspringauthdemo.dto.CreateUserRequest
import dev.killercavin.kotlinspringauthdemo.dto.UserLoginRequest
import dev.killercavin.kotlinspringauthdemo.dto.UserResponse
import dev.killercavin.kotlinspringauthdemo.service.AuthService
import org.springframework.http.HttpStatus
import org.springframework.validation.annotation.Validated
import org.springframework.web.bind.annotation.PostMapping
import org.springframework.web.bind.annotation.RequestBody
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.ResponseStatus
import org.springframework.web.bind.annotation.RestController

@RestController
@RequestMapping("/api/auth")
class AuthController(private val authService: AuthService) {
    @PostMapping("/register")
    @ResponseStatus(HttpStatus.CREATED)
    fun signup(@Validated @RequestBody request: CreateUserRequest): UserResponse {
        return authService.register(request)
    }

    @PostMapping("/login")
    @ResponseStatus(HttpStatus.OK)
    fun login(@Validated @RequestBody request: UserLoginRequest): UserResponse {
        return authService.login(request)
    }
}