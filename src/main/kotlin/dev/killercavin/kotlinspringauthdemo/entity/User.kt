package dev.killercavin.kotlinspringauthdemo.entity

import dev.killercavin.kotlinspringauthdemo.entity.Role
import jakarta.persistence.Entity
import jakarta.persistence.GeneratedValue
import jakarta.persistence.GenerationType
import jakarta.persistence.Id
import jakarta.validation.constraints.NotBlank
import org.hibernate.annotations.CreationTimestamp
import org.hibernate.annotations.UpdateTimestamp
import java.time.Instant
import java.util.UUID

@Entity
data class User(
    @Id @GeneratedValue(strategy = GenerationType.UUID)
    val id: UUID? = null,

    @field:NotBlank(message = "Name is required")
    var name: String,

    @field:NotBlank(message = "Email is required")
    var email: String,

    @field:NotBlank(message = "Password is required")
    var hashedPassword: String,

    @field:NotBlank(message = "Role is required")
    val role: Role = Role.USER,

    @CreationTimestamp
    val createdAt: Instant? = null,

    @UpdateTimestamp
    var updatedAt: Instant? = null
)