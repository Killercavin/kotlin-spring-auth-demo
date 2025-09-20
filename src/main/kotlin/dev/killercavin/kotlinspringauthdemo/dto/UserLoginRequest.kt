package dev.killercavin.kotlinspringauthdemo.dto

import jakarta.validation.constraints.NotBlank

data class UserLoginRequest(
    @field:NotBlank(message = "Username or email is required")
    val identifier: String,

    @field:NotBlank(message = "Password is required")
    val password: String
)

