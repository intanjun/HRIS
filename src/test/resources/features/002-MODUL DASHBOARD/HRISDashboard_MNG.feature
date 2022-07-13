#Author: intanjuniar101@gmail.com
Feature: Dashboard

  Scenario: Menampilkan halaman promotion dari Hompeage my task
    Given User login sebagai Manager
    And User masuk pada Homepage
    When User menekan teks promotion pada Navigation Menu
    And User menekan Promotion pada submenu Navigation
    Then User berada pada Halaman Promotion

  Scenario: Menampilkan halaman promotion dari navigasi menu Promotion
    Given User login sebagai Manager
    And User masuk pada Homepage
    When User menekan teks promotion pada Navigation Menu
    And User menekan Promotion pada submenu Navigation
    Then User berada pada Halaman Promotion

  Scenario: Menampilkan halaman promotion history dari navigasi menu Promotion
    Given User login sebagai Manager
    And User masuk pada Homepage
    When User menekan teks promotion pada Navigation Menu
    And User menekan Promotion History pada submenu Navigation
    Then User berada pada Halaman Promotion History
