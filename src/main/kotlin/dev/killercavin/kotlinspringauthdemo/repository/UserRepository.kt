package dev.killercavin.kotlinspringauthdemo.repository

import dev.killercavin.kotlinspringauthdemo.entity.User
import org.springframework.data.repository.CrudRepository
import java.util.UUID

interface UserRepository: CrudRepository<User, UUID> {
    fun findUserByUsername(username: String): User?
    fun findUserByEmail(email: String): User?
}