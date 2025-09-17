package dev.killercavin.kotlinspringauthdemo

import dev.killercavin.kotlinspringauthdemo.entity.User
import org.springframework.data.repository.CrudRepository
import java.util.UUID

interface UserRepository: CrudRepository<User, UUID> {
}