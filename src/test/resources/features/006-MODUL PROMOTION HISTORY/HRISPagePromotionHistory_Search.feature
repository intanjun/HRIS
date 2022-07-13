#Author: intanjuniar101@gmail.com
Feature: Bucket Promotion

  @SearchBy
  Scenario Outline: Menampilkan data promosi berdasarkan "search" by
    Given User login sebagai Manager
    And User masuk pada Homepage
    When User menekan teks promotion pada Navigation Menu
    And User menekan Promotion History pada submenu Navigation
    And User search by <word>
    Then Validasi search by <search> contain <word>

    Examples: 
      | search           | word       |
      | form             |        301 |
      | nama karyawan    | ADHITYA    |
      | kategori promosi | salary     |
      | tgl pengajuan    | 2022-06-30 |
      | requested by     | ZAKI       |

  @SortbyAsc_IDRequest
  Scenario: Menampilkan data promosi berdasarkan "sort" by
    Given User login sebagai Manager
    And User masuk pada Homepage
    When User menekan teks promotion pada Navigation Menu
    And User menekan Promotion History pada submenu Navigation
    And User sort by Ascending ID Request
    Then Data tampil
    And Validasi ascending kolom IDReq

  @SortbyDesc_IDRequest
  Scenario: Menampilkan data promosi berdasarkan "sort" by
    Given User login sebagai Manager
    And User masuk pada Homepage
    When User menekan teks promotion pada Navigation Menu
    And User menekan Promotion History pada submenu Navigation
    And User sort by Descending ID Request
    Then Data tampil
    And Validasi descending kolom IDReq

  @SortbyAsc_From
  Scenario: Menampilkan data promosi berdasarkan "sort" by
    Given User login sebagai Manager
    And User masuk pada Homepage
    When User menekan teks promotion pada Navigation Menu
    And User menekan Promotion History pada submenu Navigation
    And User sort by Ascending Form
    Then Data tampil
    And Validasi ascending kolom Form

  @SortbyDesc_Form
  Scenario: Menampilkan data promosi berdasarkan "sort" by
    Given User login sebagai Manager
    And User masuk pada Homepage
    When User menekan teks promotion pada Navigation Menu
    And User menekan Promotion History pada submenu Navigation
    And User sort by Descending Form
    Then Data tampil
    And Validasi descending kolom Form

  @Sortby_NamaKaryawan 
  Scenario: Menampilkan data promosi berdasarkan "sort" by
    Given User login sebagai Manager
    And User masuk pada Homepage
    When User menekan teks promotion pada Navigation Menu
    And User menekan Promotion History pada submenu Navigation
    And User sort by Ascending Nama Karyawan
    Then Data tampil
    And Validasi kolom nama

  @Sortby__NamaKaryawan 
  Scenario: Menampilkan data promosi berdasarkan "sort" by
    Given User login sebagai Manager
    And User masuk pada Homepage
    When User menekan teks promotion pada Navigation Menu
    And User menekan Promotion History pada submenu Navigation
    And User sort by Descending Nama Karyawan
    Then Data tampil
    And Validasi kolom nama

  @SortbyAsc_TanggalPengajuan
  Scenario: Menampilkan data promosi berdasarkan "sort" by
    Given User login sebagai Manager
    And User masuk pada Homepage
    When User menekan teks promotion pada Navigation Menu
    And User menekan Promotion History pada submenu Navigation
    And User sort by Ascending Tanggal Pengajuan
    Then Data tampil
    And Validasi kolom Tgl Pengajuan

  @SortbyDesc_TanggalPengajuan
  Scenario: Menampilkan data promosi berdasarkan "sort" by
    Given User login sebagai Manager
    And User masuk pada Homepage
    When User menekan teks promotion pada Navigation Menu
    And User menekan Promotion History pada submenu Navigation
    And User sort by Descending Tanggal Pengajuan
    Then Data tampil
    And Validasi descending kolom Tgl Pengajuan

  @Sortby_ApproveStatus
  Scenario: Menampilkan data promosi berdasarkan "sort" by
    Given User login sebagai Manager
    And User masuk pada Homepage
    When User menekan teks promotion pada Navigation Menu
    And User menekan Promotion History pada submenu Navigation
    And User sort by Ascending Approve Status
    Then Data tampil
    And Validasi kolom Appr

  @Sortby_ApproveStatus
  Scenario: Menampilkan data promosi berdasarkan "sort" by
    Given User login sebagai Manager
    And User masuk pada Homepage
    When User menekan teks promotion pada Navigation Menu
    And User menekan Promotion History pada submenu Navigation
    And User sort by Descending Approve Status
    Then Data tampil
    And Validasi kolom Appr

  @Sortby_Kategori
  Scenario: Menampilkan data promosi berdasarkan "sort" by
    Given User login sebagai Manager
    And User masuk pada Homepage
    When User menekan teks promotion pada Navigation Menu
    And User menekan Promotion History pada submenu Navigation
    And User sort by Ascending Kategori
    Then Data tampil
    And Validasi ascending kolom kategori

  @Sortby_Kategori
  Scenario: Menampilkan data promosi berdasarkan "sort" by
    Given User login sebagai Manager
    And User masuk pada Homepage
    When User menekan teks promotion pada Navigation Menu
    And User menekan Promotion History pada submenu Navigation
    And User sort by Descending Kategori
    Then Data tampil
    And Validasi descending kolom kategori

  @Sortby_RequestedBy
  Scenario: Menampilkan data promosi berdasarkan "sort" by
    Given User login sebagai Manager
    And User masuk pada Homepage
    When User menekan teks promotion pada Navigation Menu
    And User menekan Promotion History pada submenu Navigation
    And User sort by Ascending Requested By
    Then Data tampil
    And Validasi kolom Request

  @Sortby_RequestedBy
  Scenario: Menampilkan data promosi berdasarkan "sort" by
    Given User login sebagai Manager
    And User masuk pada Homepage
    When User menekan teks promotion pada Navigation Menu
    And User menekan Promotion History pada submenu Navigation
    And User sort by Descending Requested By
    Then Data tampil
    And Validasi kolom Request

  @Click_BtnBack
  Scenario: Menampilkan detail data promosi melalui *buttonSee*
    Given User login sebagai Manager
    And User masuk pada Homepage
    When User menekan teks promotion pada Navigation Menu
    And User menekan Promotion History pada submenu Navigation
    And User menekan button see
    Then Data tampil

  @Click_BtnBack
  Scenario: Menampilkan data promosi berdasarkan "sort" by
    Given User login sebagai Manager
    And User masuk pada Homepage
    When User menekan teks promotion pada Navigation Menu
    And User menekan Promotion History pada submenu Navigation
    And User menekan button see
    And User menekan button kembali
    Then Data tampil
