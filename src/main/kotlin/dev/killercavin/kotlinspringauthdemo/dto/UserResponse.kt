package dev.killercavin.kotlinspringauthdemo.dto

import dev.killercavin.kotlinspringauthdemo.entity.Role
import dev.killercavin.kotlinspringauthdemo.entity.User
import java.time.Instant
import java.util.UUID

data class UserResponse(
    val id: UUID?,
    val name: String,
    val email: String,
    val role: Role,
    val createdAt: Instant?,
    val updatedAt: Instant?
)

fun User.toResponseDTO(): UserResponse {
    return UserResponse(
        id = this.id,
        name = this.name,
        email = this.email,
        role = this.role,
        createdAt = this.createdAt,
        updatedAt = this.updatedAt
    )
}
