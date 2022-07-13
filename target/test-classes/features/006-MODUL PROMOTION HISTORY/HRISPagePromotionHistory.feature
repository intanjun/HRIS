#Author: intanjuniar101@gmail.com
Feature: Bucket Promotion History

  @Show
  Scenario Outline: Menampilkan data promotion history by *Show*
    Given User login sebagai Manager
    And User masuk pada Homepage
    When User menekan teks promotion pada Navigation Menu
    And User menekan Promotion History pada submenu Navigation
    And User memilih show of data <show>
    Then Data tampil
    And Validasi data promotion history by <show>

    Examples: 
      | show |
      |   10 |
      |   25 |
      |   50 |
      |  100 |

  #======================================================================
  @filter
  Scenario Outline: Menampilkan data promotion *filterByFrom*
    Given User login sebagai Manager
    And User masuk pada Homepage
    When User menekan teks promotion pada Navigation Menu
    And User menekan Promotion History pada submenu Navigation
    And User memilih from date <from>
    And User memilih to date <to>
    Then Data tampil
    And Validasi filter <from> date <to>

    Examples: 
      | from       | to         |
      | 2022-07-11 | 2022-07-10 |
      | 2022-07-09 | 2022-07-09 |
      | 2022-07-09 | 2022-07-10 |
      |            | 2022-07-10 |
      | 2022-07-09 |            |

	@reset
  Scenario Outline: Perilaku button reset *buttonReset*
    Given User login sebagai Manager
    And User masuk pada Homepage
    When User menekan teks promotion pada Navigation Menu
    And User menekan Promotion History pada submenu Navigation
    And User memilih from date <from>
    And User memilih to date <to>
    Then User menekan button reset
    And Validasi button reset

    Examples: 
      | from       | to         |
      | 2022-07-11 | 2022-07-10 |

  #====================================================================
  Scenario: Menampilkan data pada halaman berikutnya *nextButton*
    Given User login sebagai Manager
    And User masuk pada Homepage
    When User menekan teks promotion pada Navigation Menu
    And User menekan Promotion History pada submenu Navigation
    And User menekan klik next
    Then Data tampil

  Scenario: Menampilkan data pada halaman sebelumnya *prevButton*
    Given User login sebagai Manager
    And User masuk pada Homepage
    When User menekan teks promotion pada Navigation Menu
    And User menekan Promotion History pada submenu Navigation
    And User menekan klik next
    And User menekan klik prev
    Then Data tampil
