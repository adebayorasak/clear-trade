;; Title: ClearTrade - Transparent Commerce Protocol
;;
;; Summary:
;; A next-generation commerce protocol that revolutionizes online marketplaces 
;; through blockchain transparency, automated escrow, and community-driven trust.
;;
;; Description:
;; ClearTrade transforms traditional e-commerce by creating a trustless ecosystem 
;; where transparency meets convenience. Merchants establish verified storefronts, 
;; showcase products through both fixed-price listings and competitive auctions, 
;; while customers enjoy secure transactions backed by Bitcoin's immutable ledger.
;; The protocol features automated dispute resolution, community-powered reputation 
;; scoring, and seamless cross-chain settlements that eliminate intermediary risks.

;; CONSTANTS & ERROR CODES

(define-constant contract-owner tx-sender)
(define-constant err-owner-only (err u100))
(define-constant err-not-brand-owner (err u101))
(define-constant err-invalid-price (err u102))
(define-constant err-listing-not-found (err u103))
(define-constant err-insufficient-funds (err u104))
(define-constant err-auction-ended (err u105))
(define-constant err-bid-too-low (err u106))
(define-constant err-no-active-auction (err u107))
(define-constant err-invalid-duration (err u108))
(define-constant err-invalid-rating (err u109))

;; DATA VARIABLES

(define-data-var platform-fee uint u25) ;; 2.5% platform fee

;; DATA MAPS

(define-map Brands principal 
  {
    name: (string-ascii 50),
    verified: bool,
    created-at: uint
  }
)

(define-map Products uint 
  {
    brand: principal,
    name: (string-ascii 100),
    description: (string-ascii 500),
    price: uint,
    available: bool,
    created-at: uint,
    is-auction: bool
  }
)

(define-map Auctions uint
  {
    end-block: uint,
    min-price: uint,
    highest-bid: uint,
    highest-bidder: (optional principal),
    is-active: bool
  }
)

(define-map Reviews {product-id: uint, reviewer: principal}
  {
    rating: uint,
    comment: (string-ascii 200),
    timestamp: uint
  }
)