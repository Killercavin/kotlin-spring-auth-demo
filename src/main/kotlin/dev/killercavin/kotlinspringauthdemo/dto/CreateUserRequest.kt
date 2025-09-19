package dev.killercavin.kotlinspringauthdemo.dto

import dev.killercavin.kotlinspringauthdemo.entity.Role
import dev.killercavin.kotlinspringauthdemo.entity.User
import jakarta.validation.constraints.NotBlank
import org.springframework.security.crypto.password.PasswordEncoder

data class CreateUserRequest(
    @field:NotBlank(message = "Full name is required") val fullName: String,
    @field:NotBlank(message = "Username is required") val username: String,
    @field:NotBlank(message = "Email is required") val email: String,
    @field:NotBlank(message = "Password is required") val password: String,
    val role: Role? = Role.USER
)

fun CreateUserRequest.toEntity(passwordEncoder: PasswordEncoder): User {
    return User(
        id = null,
        fullName = this.fullName,
        username = this.username,
        email = this.email,
        hashedPassword = passwordEncoder.encode(this.password),
        role = this.role ?: Role.USER,
    )
}
