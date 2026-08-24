# Reference
## Stores
<details><summary><code>client.stores.<a href="/lib/leal/stores/client.rb">list</a>() -> Internal::Types::Array[Leal::Stores::Types::ListStoresResponseItem]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns every store the authenticated user has access to, including summary counts for locations, cards, customers, and posters.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.stores.list
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request_options:** `Leal::Stores::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.stores.<a href="/lib/leal/stores/client.rb">get</a>(id:) -> Leal::Stores::Types::GetStoresResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns detailed information for a single store, including summary counts for its associated resources.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.stores.get(id: 1)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `Integer` — Store ID
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Leal::Stores::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.stores.<a href="/lib/leal/stores/client.rb">update</a>(id:, request) -> Leal::Stores::Types::UpdateStoresResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates the store's name or store_name. Use `store_name` for the public-facing name displayed to customers.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.stores.update(
  id: 1,
  account: {}
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `Integer` — Store ID
    
</dd>
</dl>

<dl>
<dd>

**account:** `Leal::Stores::Types::UpdateStoresRequestAccount` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Leal::Stores::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Cards
<details><summary><code>client.cards.<a href="/lib/leal/cards/client.rb">list</a>(account_id:) -> Internal::Types::Array[Leal::Cards::Types::ListCardsResponseItem]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns loyalty card templates for the specified store. By default, only
active (unarchived) cards are returned. Use the `scope` parameter to include
archived cards.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.cards.list(account_id: 1)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `Integer` — Parent store ID
    
</dd>
</dl>

<dl>
<dd>

**scope:** `String` — Filter cards by archive status. Default: active only.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Leal::Cards::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.cards.<a href="/lib/leal/cards/client.rb">create</a>(account_id:, request) -> Leal::Cards::Types::CreateCardsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a new loyalty stamp card template for the store. The card defines the
visual design (colours, icon, strip) and program rules (stamps required,
initial stamps).
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.cards.create(
  account_id: 1,
  card: {
    name: "name"
  }
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `Integer` — Parent store ID
    
</dd>
</dl>

<dl>
<dd>

**card:** `Leal::Cards::Types::CreateCardsRequestCard` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Leal::Cards::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.cards.<a href="/lib/leal/cards/client.rb">get</a>(account_id:, id:) -> Leal::Cards::Types::GetCardsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a single loyalty card template by ID, including reward and customer card counts.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.cards.get(
  account_id: 1,
  id: 1
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `Integer` — Parent store ID
    
</dd>
</dl>

<dl>
<dd>

**id:** `Integer` — Card ID
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Leal::Cards::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.cards.<a href="/lib/leal/cards/client.rb">update</a>(account_id:, id:, request) -> Leal::Cards::Types::UpdateCardsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates an existing loyalty card template. Only the provided attributes are changed.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.cards.update(
  account_id: 1,
  id: 1,
  card: {}
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `Integer` — Parent store ID
    
</dd>
</dl>

<dl>
<dd>

**id:** `Integer` — Card ID
    
</dd>
</dl>

<dl>
<dd>

**card:** `Leal::Cards::Types::UpdateCardsRequestCard` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Leal::Cards::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Customers
<details><summary><code>client.customers.<a href="/lib/leal/customers/client.rb">list</a>(account_id:) -> Leal::Customers::Types::ListCustomersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a paginated list of customers for the store. Use the `search` parameter to filter
by name, email, phone, card code (barcode), or external reference ID. Alternatively, pass
`source` AND `external_id` together to perform an exact lookup by an external reference -
the response will contain at most one customer.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.customers.list(account_id: 1)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `Integer` — Store (account) ID
    
</dd>
</dl>

<dl>
<dd>

**search:** `String` — Search query to filter customers by name, email, phone, card code (barcode), or external reference ID
    
</dd>
</dl>

<dl>
<dd>

**source:** `String` — External system slug (e.g. `square`, `shopify`). When combined with `external_id`, performs an exact lookup.
    
</dd>
</dl>

<dl>
<dd>

**external_id:** `String` — External system's identifier for the customer. Must be combined with `source`.
    
</dd>
</dl>

<dl>
<dd>

**page:** `Integer` — Page number (defaults to 1)
    
</dd>
</dl>

<dl>
<dd>

**items:** `Integer` — Number of items per page
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Leal::Customers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.customers.<a href="/lib/leal/customers/client.rb">create</a>(account_id:, request) -> Leal::Customers::Types::CreateCustomersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a new customer for the store. Requires `first_name` and at least one of `email` or `phone`.
Optionally enroll the customer in a loyalty card by passing `card_id`, and trigger delivery of
card links (email/SMS) by passing `send_card_links`. When a card with initial stamps is assigned,
those stamps are automatically applied as a welcome bonus.

Pass `metadata` to attach arbitrary key/value data, and `external_references` to link the
customer to records in other systems (e.g. Square, Shopify). External references are upserted
by `(source, external_id)` so this endpoint is safe to call with the same references twice.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.customers.create(
  account_id: 1,
  customer: {
    first_name: "first_name"
  }
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `Integer` — Store (account) ID
    
</dd>
</dl>

<dl>
<dd>

**card_id:** `Integer` — Loyalty card ID to auto-enroll the customer in
    
</dd>
</dl>

<dl>
<dd>

**customer:** `Leal::Customers::Types::CreateCustomersRequestCustomer` 
    
</dd>
</dl>

<dl>
<dd>

**send_card_links:** `Internal::Types::Boolean` — When true, sends the card links to the customer via email/SMS after enrollment. Note: even without this flag, the response includes `apple_wallet_url` and `google_wallet_url` in each customer card object so you can deliver them yourself.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Leal::Customers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.customers.<a href="/lib/leal/customers/client.rb">get</a>(account_id:, id:) -> Leal::Customers::Types::GetCustomersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns detailed information about a single customer, including all of their
enrolled loyalty cards with stamp progress and wallet pass URLs (`apple_wallet_url`
and `google_wallet_url`) for each card. Also includes `metadata` and
`external_references` so you can sync state with external systems.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.customers.get(
  account_id: 1,
  id: 1
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `Integer` — Store (account) ID
    
</dd>
</dl>

<dl>
<dd>

**id:** `Integer` — Customer ID
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Leal::Customers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.customers.<a href="/lib/leal/customers/client.rb">update</a>(account_id:, id:, request) -> Leal::Customers::Types::UpdateCustomersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates an existing customer's details. To add stamps or redeem rewards, use the
customer cards endpoints instead.

`metadata` is shallow-merged into the existing metadata. `external_references` are upserted
by `(source, external_id)` - to remove a reference, omit it from subsequent calls and use
a separate `DELETE` workflow (not yet exposed via API; manage in dashboard for now).
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.customers.update(
  account_id: 1,
  id: 1,
  customer: {}
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `Integer` — Store (account) ID
    
</dd>
</dl>

<dl>
<dd>

**id:** `Integer` — Customer ID
    
</dd>
</dl>

<dl>
<dd>

**customer:** `Leal::Customers::Types::UpdateCustomersRequestCustomer` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Leal::Customers::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Customer Cards
<details><summary><code>client.customer_cards.<a href="/lib/leal/customer_cards/client.rb">list</a>(account_id:, customer_id:) -> Internal::Types::Array[Leal::CustomerCards::Types::ListCustomerCardsResponseItem]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns all loyalty cards enrolled for a specific customer, including stamp progress,
status, wallet pass installation state, and wallet pass URLs (`apple_wallet_url` and
`google_wallet_url`) that you can use to let customers add their loyalty card to
Apple Wallet or Google Wallet from your own app or website.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.customer_cards.list(
  account_id: 1,
  customer_id: 1
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `Integer` — Store (account) ID
    
</dd>
</dl>

<dl>
<dd>

**customer_id:** `Integer` — Customer ID
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Leal::CustomerCards::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.customer_cards.<a href="/lib/leal/customer_cards/client.rb">get</a>(account_id:, customer_id:, id:) -> Leal::CustomerCards::Types::GetCustomerCardsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns detailed information about a specific customer card, including stamp progress,
a list of rewards the customer has earned enough stamps to redeem, and wallet pass URLs
(`apple_wallet_url` and `google_wallet_url`) for adding the card to Apple Wallet or
Google Wallet.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.customer_cards.get(
  account_id: 1,
  customer_id: 1,
  id: 1
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `Integer` — Store (account) ID
    
</dd>
</dl>

<dl>
<dd>

**customer_id:** `Integer` — Customer ID
    
</dd>
</dl>

<dl>
<dd>

**id:** `Integer` — Customer card ID
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Leal::CustomerCards::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.customer_cards.<a href="/lib/leal/customer_cards/client.rb">redeem</a>(account_id:, customer_id:, id:, request) -> Leal::CustomerCards::Types::RedeemCustomerCardsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Redeems a reward for a customer, deducting the required stamps from their card.
The customer must have enough stamps on this card to cover the reward's cost.
Triggers wallet pass updates and push notifications.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.customer_cards.redeem(
  account_id: 1,
  customer_id: 1,
  id: 1,
  reward_id: 1
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `Integer` — Store (account) ID
    
</dd>
</dl>

<dl>
<dd>

**customer_id:** `Integer` — Customer ID
    
</dd>
</dl>

<dl>
<dd>

**id:** `Integer` — Customer card ID
    
</dd>
</dl>

<dl>
<dd>

**reward_id:** `Integer` — Reward ID to redeem
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Leal::CustomerCards::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.customer_cards.<a href="/lib/leal/customer_cards/client.rb">stamp</a>(account_id:, customer_id:, id:, request) -> Leal::CustomerCards::Types::StampCustomerCardsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Adds stamps to a customer's loyalty card. Triggers ledger entries, wallet pass updates,
and push notifications. Pass `skip_notifications` to stamp silently.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.customer_cards.stamp(
  account_id: 1,
  customer_id: 1,
  id: 1,
  stamps: 1
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `Integer` — Store (account) ID
    
</dd>
</dl>

<dl>
<dd>

**customer_id:** `Integer` — Customer ID
    
</dd>
</dl>

<dl>
<dd>

**id:** `Integer` — Customer card ID
    
</dd>
</dl>

<dl>
<dd>

**skip_notifications:** `Internal::Types::Boolean` — When true, stamp changes bypass notifications
    
</dd>
</dl>

<dl>
<dd>

**stamps:** `Integer` — Number of stamps to add (e.g. 1, 3)
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Leal::CustomerCards::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Locations
<details><summary><code>client.locations.<a href="/lib/leal/locations/client.rb">list</a>(account_id:) -> Internal::Types::Array[Leal::Locations::Types::ListLocationsResponseItem]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns every physical location belonging to the specified store.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.locations.list(account_id: 1)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `Integer` — Parent store ID
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Leal::Locations::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.locations.<a href="/lib/leal/locations/client.rb">create</a>(account_id:, request) -> Leal::Locations::Types::CreateLocationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a new physical location for the store. The provided address is
automatically geocoded to latitude and longitude coordinates in the background.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.locations.create(
  account_id: 1,
  location: {
    address: "address",
    name: "name"
  }
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `Integer` — Parent store ID
    
</dd>
</dl>

<dl>
<dd>

**location:** `Leal::Locations::Types::CreateLocationsRequestLocation` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Leal::Locations::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.locations.<a href="/lib/leal/locations/client.rb">get</a>(account_id:, id:) -> Leal::Locations::Types::GetLocationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a single location by ID.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.locations.get(
  account_id: 1,
  id: 1
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `Integer` — Parent store ID
    
</dd>
</dl>

<dl>
<dd>

**id:** `Integer` — Location ID
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Leal::Locations::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.locations.<a href="/lib/leal/locations/client.rb">delete</a>(account_id:, id:) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Permanently deletes a location. This action cannot be undone.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.locations.delete(
  account_id: 1,
  id: 1
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `Integer` — Parent store ID
    
</dd>
</dl>

<dl>
<dd>

**id:** `Integer` — Location ID
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Leal::Locations::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.locations.<a href="/lib/leal/locations/client.rb">update</a>(account_id:, id:, request) -> Leal::Locations::Types::UpdateLocationsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates an existing location. If the address is changed, it will be re-geocoded automatically.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.locations.update(
  account_id: 1,
  id: 1,
  location: {}
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `Integer` — Parent store ID
    
</dd>
</dl>

<dl>
<dd>

**id:** `Integer` — Location ID
    
</dd>
</dl>

<dl>
<dd>

**location:** `Leal::Locations::Types::UpdateLocationsRequestLocation` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Leal::Locations::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Posters
<details><summary><code>client.posters.<a href="/lib/leal/posters/client.rb">list</a>(account_id:) -> Internal::Types::Array[Leal::Posters::Types::ListPostersResponseItem]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns all posters for the store. Optionally filter by card or active status.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.posters.list(account_id: 1)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `Integer` — Store (account) ID
    
</dd>
</dl>

<dl>
<dd>

**card_id:** `Integer` — Filter posters belonging to a specific card
    
</dd>
</dl>

<dl>
<dd>

**active:** `String` — When present, return only active posters
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Leal::Posters::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.posters.<a href="/lib/leal/posters/client.rb">create</a>(account_id:, request) -> Leal::Posters::Types::CreatePostersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a new printable QR code poster for customer signup. The poster will automatically
generate a unique public signup URL and QR code. The `card_id` is required on create to
associate the poster with a loyalty card.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.posters.create(
  account_id: 1,
  poster: {
    card_id: 1
  }
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `Integer` — Store (account) ID
    
</dd>
</dl>

<dl>
<dd>

**poster:** `Leal::Posters::Types::CreatePostersRequestPoster` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Leal::Posters::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.posters.<a href="/lib/leal/posters/client.rb">get</a>(account_id:, id:) -> Leal::Posters::Types::GetPostersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a single poster by ID, including generated signup and display URLs.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.posters.get(
  account_id: 1,
  id: 1
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `Integer` — Store (account) ID
    
</dd>
</dl>

<dl>
<dd>

**id:** `Integer` — Poster ID
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Leal::Posters::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.posters.<a href="/lib/leal/posters/client.rb">delete</a>(account_id:, id:) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Permanently deletes a poster. The public signup URL will stop working.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.posters.delete(
  account_id: 1,
  id: 1
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `Integer` — Store (account) ID
    
</dd>
</dl>

<dl>
<dd>

**id:** `Integer` — Poster ID
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Leal::Posters::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.posters.<a href="/lib/leal/posters/client.rb">update</a>(account_id:, id:, request) -> Leal::Posters::Types::UpdatePostersResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates an existing poster. The `card_id` cannot be changed after creation.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.posters.update(
  account_id: 1,
  id: 1,
  poster: {}
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `Integer` — Store (account) ID
    
</dd>
</dl>

<dl>
<dd>

**id:** `Integer` — Poster ID
    
</dd>
</dl>

<dl>
<dd>

**poster:** `Leal::Posters::Types::UpdatePostersRequestPoster` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Leal::Posters::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Rewards
<details><summary><code>client.rewards.<a href="/lib/leal/rewards/client.rb">list</a>(account_id:) -> Internal::Types::Array[Leal::Rewards::Types::ListRewardsResponseItem]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns all rewards for the store. Optionally filter by card or active status.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.rewards.list(account_id: 1)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `Integer` — Store (account) ID
    
</dd>
</dl>

<dl>
<dd>

**card_id:** `Integer` — Filter rewards belonging to a specific card
    
</dd>
</dl>

<dl>
<dd>

**active:** `String` — When present, return only active rewards
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Leal::Rewards::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.rewards.<a href="/lib/leal/rewards/client.rb">create</a>(account_id:, request) -> Leal::Rewards::Types::CreateRewardsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Creates a new reward for a loyalty card. The card must belong to the same store.
The `card_id` is required on create but cannot be changed afterwards.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.rewards.create(
  account_id: 1,
  reward: {
    card_id: 1,
    name: "name",
    stamps_required: 1
  }
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `Integer` — Store (account) ID
    
</dd>
</dl>

<dl>
<dd>

**reward:** `Leal::Rewards::Types::CreateRewardsRequestReward` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Leal::Rewards::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.rewards.<a href="/lib/leal/rewards/client.rb">get</a>(account_id:, id:) -> Leal::Rewards::Types::GetRewardsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns a single reward by ID.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.rewards.get(
  account_id: 1,
  id: 1
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `Integer` — Store (account) ID
    
</dd>
</dl>

<dl>
<dd>

**id:** `Integer` — Reward ID
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Leal::Rewards::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.rewards.<a href="/lib/leal/rewards/client.rb">delete</a>(account_id:, id:) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Permanently deletes a reward. This cannot be undone.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.rewards.delete(
  account_id: 1,
  id: 1
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `Integer` — Store (account) ID
    
</dd>
</dl>

<dl>
<dd>

**id:** `Integer` — Reward ID
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Leal::Rewards::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.rewards.<a href="/lib/leal/rewards/client.rb">update</a>(account_id:, id:, request) -> Leal::Rewards::Types::UpdateRewardsResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Updates an existing reward. The `card_id` cannot be changed after creation.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.rewards.update(
  account_id: 1,
  id: 1,
  reward: {}
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**account_id:** `Integer` — Store (account) ID
    
</dd>
</dl>

<dl>
<dd>

**id:** `Integer` — Reward ID
    
</dd>
</dl>

<dl>
<dd>

**reward:** `Leal::Rewards::Types::UpdateRewardsRequestReward` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Leal::Rewards::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Status
<details><summary><code>client.status.<a href="/lib/leal/status/client.rb">check</a>() -> Leal::Status::Types::CheckStatusResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Returns the status of the API. No authentication required.

Every response from this API, including this one, carries `RateLimit-Limit`,
`RateLimit-Remaining`, `RateLimit-Reset` and `RateLimit-Policy`. Exceeding
the limit returns 429 with `Retry-After` in seconds.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.status.check
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request_options:** `Leal::Status::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

