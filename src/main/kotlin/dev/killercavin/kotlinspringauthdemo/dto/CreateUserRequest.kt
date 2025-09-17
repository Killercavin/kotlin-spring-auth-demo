package dev.killercavin.kotlinspringauthdemo.dto

import dev.killercavin.kotlinspringauthdemo.entity.Role
import dev.killercavin.kotlinspringauthdemo.entity.User
import jakarta.validation.constraints.NotBlank

data class CreateUserRequest(
    @field:NotBlank(message = "Name is required") val name: String,
    @field:NotBlank(message = "Email is required") val email: String,
    @field:NotBlank(message = "Password is required") val password: String,
    val role: Role? = Role.USER
)

fun CreateUserRequest.toEntity(): User {
    return User(
        id = null,
        name = this.name,
        email = this.email,
        hashedPassword = this.password,
        role = Role.USER,
    )
}