package com.example.pigeon_plugin

enum class Type {
    TYPE_A, TYPE_B
}

data class Goods(
    val name: String?,
    val price: Long?,
    val expiryDate: Long?,
    val type: Type? = null
)