package dev.killercavin.kotlinspringauthdemo.service

import dev.killercavin.kotlinspringauthdemo.repository.UserRepository
import dev.killercavin.kotlinspringauthdemo.security.UserPrincipal
import org.springframework.security.core.userdetails.UserDetails
import org.springframework.security.core.userdetails.UserDetailsService
import org.springframework.security.core.userdetails.UsernameNotFoundException
import org.springframework.stereotype.Service

@Service
class UserService(private val userRepository: UserRepository): UserDetailsService {
    override fun loadUserByUsername(input: String): UserDetails {
        val user = userRepository.findUserByUsername(input) ?:
        userRepository.findUserByEmail(input) ?: throw UsernameNotFoundException("Username or Email not found!")

        return UserPrincipal(user)
    }
}